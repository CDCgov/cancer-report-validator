(function ($) {
    //====================================================================================================
    // CLASS: VALIDATOR LEVELS
    //====================================================================================================
    $.extend($.crigtt.validate.ValidatorLevel.INFO.value, {
        "displayName": "Information"
    });
    
    $.extend($.crigtt.validate.ValidatorLevel.WARN.value, {
        "displayName": "Warning"
    });
    
    $.extend($.crigtt.validate.ValidatorLevel.ERROR.value, {
        "displayName": "Error"
    });

    $.extend($.crigtt.validate.ValidatorLevel.MISMATCH.value, {
        "displayName": "Mismatch"
    });

    //====================================================================================================
    // CLASS: VALIDATOR
    //====================================================================================================
    $.extend($.crigtt.validate, {
        "Validator": function (formElem) {
            this.formElem = formElem;
        }
    });
    
    $.extend($.crigtt.validate.Validator, {
        "VALIDATE_DATA_DATA_ENTRY_NAME": "crigtt.validate.data"
    });
    
    $.extend($.crigtt.validate.Validator.prototype, {
        "formElem": undefined,
        
        "resultPanel": function (respElem) {
            var resultsEmptyWellElem = $("div#well-validator-results-empty");
            var panelGroupElem = $("div#panel-group-validator-results");
            var panelHeadingElem = respElem.find("div.panel-heading");
            var panelCollapseElem = respElem.find("div.panel-collapse");
            var panelEventsIgTabPaneElem = respElem.find("div.panel-body div.tab-content div.tab-pane").eq(1);
            var panelEventsIgTableElem = panelEventsIgTabPaneElem.find("table.table");
            var panelEventsTestDataTabPaneElem = respElem.find("div.panel-body div.tab-content div.tab-pane").eq(2);
            var panelEventsTestDataTableElem = panelEventsTestDataTabPaneElem.find("table.table");

            panelHeadingElem.click($.proxy(function (event) {
                var target = $(event.target);
                
                if (target.hasClass("panel-heading") || target.hasClass("panel-title")) {
                    panelCollapseElem.collapse("toggle");
                }
            }, this));
            
            panelHeadingElem.find("div.panel-title button.close").click($.proxy(function () {
                respElem.remove();
                
                if (panelGroupElem.find("div.alert, div.panel").length == 0) {
                    resultsEmptyWellElem.show();
                    
                    panelGroupElem.hide();
                }
            }, this));
            
            panelHeadingElem.find("button.btn-download").mousedown($.proxy(function (event) {
                var mouseButtonId = event.which;
                var middleMouseButton = (mouseButtonId == 2);
                
                if ((mouseButtonId != 1) && !middleMouseButton) {
                    return;
                }
                
                event.preventDefault();
                
                this.downloadResults.apply(this, [
                    respElem,
                    $.crigtt.validate.ValidatorRenderType[$(event.delegateTarget).attr("data-type").toUpperCase()],
                    middleMouseButton
                ]);
            }, this));
            
            var panelEventsIgTableFilterFormatters = {};
            var panelEventsTestDataTableFilterFormatters = {};
            
            panelEventsIgTableElem.find("th").each(function (panelEventsIgTableHeaderIndex, panelEventsIgTableHeaderElem) {
                if (!(panelEventsIgTableHeaderElem = $(panelEventsIgTableHeaderElem)).hasClass("filter-false")) {
                    var panelEventsIgTableFilterLabel = panelEventsIgTableHeaderElem.attr("data-filter-label");
                    
                    panelEventsIgTableFilterFormatters[panelEventsIgTableHeaderIndex] = function (cell, index) {
                        return $.tablesorter.filterFormatter.select2(cell, index, {
                            "cellText": panelEventsIgTableFilterLabel,
                            "match": false,
                            "placeholder": "Select Filters",
                            "width": ((panelEventsIgTableFilterLabel ? 80 : 100) + "%")
                        });
                    };
                }
            });

            panelEventsTestDataTableElem.find("th").each(function (panelEventsTestDataTableHeaderIndex, panelEventsTestDataTableHeaderElem) {
                if (!(panelEventsTestDataTableHeaderElem = $(panelEventsTestDataTableHeaderElem)).hasClass("filter-false")) {
                    var panelEventsTestDataTableFilterLabel = panelEventsTestDataTableHeaderElem.attr("data-filter-label");

                    panelEventsTestDataTableFilterFormatters[panelEventsTestDataTableHeaderIndex] = function (cell, index) {
                        return $.tablesorter.filterFormatter.select2(cell, index, {
                            "cellText": panelEventsTestDataTableFilterLabel,
                            "match": false,
                            "placeholder": "Select Filters",
                            "width": ((panelEventsTestDataTableFilterLabel ? 80 : 100) + "%")
                        });
                    };
                }
            });

            panelEventsIgTableElem.tablesorter(
                this.getTableSorterArgs("Pass", panelEventsIgTableFilterFormatters, panelEventsIgTabPaneElem)
            ).on("filterEnd", $.proxy(function () {
                var numEvents = 0;
                var numLevelEvents = {};
                var numFilteredEvents = 0;
                var numFilteredLevelEvents = {};
                
                $.properties($.crigtt.validate.ValidatorLevel, function (levelName) {
                    numLevelEvents[levelName] = 0;
                    numFilteredLevelEvents[levelName] = 0;
                });
                
                var panelEventsIgTableElems = panelEventsIgTabPaneElem.find("table.table");
                var panelEventTotalsListElems = panelEventsIgTableElems.find("caption ul");
                
                panelEventsIgTableElems.find("tbody tr").each(function (panelEventsIgTableRowIndex, panelEventsIgTableRowElem) {
                    var eventStatus = ((panelEventsIgTableRowElem = $(panelEventsIgTableRowElem)).attr("data-status") == String(true));
                    var eventLevel = panelEventsIgTableRowElem.attr("data-level");
                    
                    numEvents++;
                    
                    if (!eventStatus) {
                        numLevelEvents[eventLevel]++;
                    }
                    
                    if (panelEventsIgTableRowElem.hasClass("filtered")) {
                        numFilteredEvents++;
                        
                        if (!eventStatus) {
                            numFilteredLevelEvents[eventLevel]++;
                        }
                    }
                });

                var eventTotals = [];

                $.properties($.crigtt.validate.ValidatorLevel, function (levelName) {
                    if(levelName != $.crigtt.validate.ValidatorLevel.MISMATCH.key) {
                        eventTotals.push([ numFilteredLevelEvents[levelName], numLevelEvents[levelName] ]);
                    }
                });

                eventTotals.push([ numFilteredEvents, numEvents ]);

                eventTotals.reverse();
                
                $.each(eventTotals, function (panelEventIgTotalSpanIndex, eventTotals) {
                    panelEventTotalsListElems.each(function (panelEventIgTotalsListIndex, panelEventIgTotalsListElem) {
                        $(panelEventIgTotalsListElem).find("li span span").eq(panelEventIgTotalSpanIndex)
                            .text(((eventTotals[1] - eventTotals[0]) + " of " + eventTotals[1] + " (" + eventTotals[0] + " Filtered)"));
                    });
                });
            }, this));

            panelEventsTestDataTableElem.tablesorter(
                this.getTableSorterArgs("Match", panelEventsTestDataTableFilterFormatters, panelEventsTestDataTabPaneElem)
            ).on("filterEnd", $.proxy(function () {
                var numEvents = 0;
                var numLevelEvents = {};
                var numFilteredEvents = 0;
                var numFilteredLevelEvents = {};

                $.properties($.crigtt.validate.ValidatorLevel, function (levelName) {
                    numLevelEvents[levelName] = 0;
                    numFilteredLevelEvents[levelName] = 0;
                });

                var panelEventsTestDataTableElems = panelEventsTestDataTabPaneElem.find("table.table");
                var panelEventTestDataTotalsListElems = panelEventsTestDataTableElems.find("caption ul");

                panelEventsTestDataTableElems.find("tbody tr").each(function (panelEventsTestDataTableRowIndex, panelEventsTestDataTableRowElem) {
                    var eventStatus = ((panelEventsTestDataTableRowElem = $(panelEventsTestDataTableRowElem)).attr("data-status") == String(true));
                    var eventLevel = panelEventsTestDataTableRowElem.attr("data-level");

                    numEvents++;

                    if (!eventStatus) {
                        numLevelEvents[eventLevel]++;
                    }

                    if (panelEventsTestDataTableRowElem.hasClass("filtered")) {
                        numFilteredEvents++;

                        if (!eventStatus) {
                            numFilteredLevelEvents[eventLevel]++;
                        }
                    }
                });

                var eventTotals = [];

                $.properties($.crigtt.validate.ValidatorLevel, function (levelName) {
                    if(levelName == $.crigtt.validate.ValidatorLevel.MISMATCH.key) {
                        eventTotals.push([numFilteredLevelEvents[levelName], numLevelEvents[levelName]]);
                    }
                });

                eventTotals.push([ numFilteredEvents, numEvents ]);

                eventTotals.reverse();

                $.each(eventTotals, function (panelEventTestDataTotalSpanIndex, eventTotals) {
                    panelEventTestDataTotalsListElems.each(function (panelEventTestDataTotalsListIndex, panelEventTestDataTotalsListElem) {
                        $(panelEventTestDataTotalsListElem).find("li span span").eq(panelEventTestDataTotalSpanIndex)
                            .text(((eventTotals[1] - eventTotals[0]) + " of " + eventTotals[1] + " (" + eventTotals[0] + " Filtered)"));
                    });
                });
            }, this));

            panelEventsIgTableElem.find("tr.tablesorter-filter-row td label").each(this.labelFilters);

            panelEventsTestDataTableElem.find("tr.tablesorter-filter-row td label").each(this.labelFilters);

            return respElem;
        },

        "labelFilters": function (panelEventsTableFilterLabelIndex, panelEventsTableFilterLabelElem) {
            var panelEventsTestDataTableFilterLabelContent = (panelEventsTableFilterLabelElem = $(panelEventsTableFilterLabelElem)).text();

            panelEventsTableFilterLabelElem.empty();
            panelEventsTableFilterLabelElem.append($("<strong/>").text(panelEventsTestDataTableFilterLabelContent), ": ");
        },

        "getTableSorterArgs": function(sortKeyValue, filterFormatter, tabPaneElem) {
            return {
                "sortList": [
                    [0, 0]
                ],
                "textExtraction": function (tableDataElem) {
                    var sortKeyElem = $(tableDataElem).find("*[data-sort-key]").eq(0);
                    var sortKeyValue = sortKeyElem.attr("data-sort-key");

                    return ((sortKeyValue == String(true)) ? sortKeyElem.text() : String.EMPTY);
                },
                "textSorter": function (sortKeyValue1, sortKeyValue2, sortDirection, sortColumnIndex, tableElem) {
                    if (sortColumnIndex != 0) {
                        return $.tablesorter.sortNatural(sortKeyValue1, sortKeyValue2, sortDirection, sortColumnIndex, tableElem);
                    }

                    var passValue1 = (sortKeyValue1 == sortKeyValue), passValue2 = (sortKeyValue2 == sortKeyValue);

                    if (passValue1 && passValue2) {
                        return 0;
                    } else if (passValue1) {
                        return 1;
                    } else if (passValue2) {
                        return -1;
                    } else {
                        var levels = $.keys($.crigtt.validate.ValidatorLevel);
                        levels.reverse();

                        return $.tablesorter.sortNumeric(levels.indexOf(sortKeyValue1), levels.indexOf(sortKeyValue2));
                    }
                },
                "widgetOptions": {
                    "filter_formatter": filterFormatter,
                    "stickyHeaders_attachTo": tabPaneElem
                }
            }
        },

        "downloadResults": function (panelElem, renderType, asWindow) {
            this.validate(renderType, {
                "data": panelElem.data($.crigtt.validate.Validator.VALIDATE_DATA_DATA_ENTRY_NAME),
                "process": $.proxy(function (status, resp, respFileName) {
                    if (!status) {
                        panelElem.parent().prepend($($.parseHTML(resp)[0]));
                        
                        return;
                    }
                    
                    var blob = new Blob([ resp ], { "type": renderType.value.contentType });
                    
                    if (asWindow) {
                        open(URL.createObjectURL(blob));
                    } else {
                        saveAs(blob, respFileName);
                    }
                }, this)
            });
        },
        
        "validate": function (renderType, opts, queryParams) {
            var defaultQueryParams = {};
            defaultQueryParams[$.crigtt.validate.ValidatorParameters.FORMAT_NAME] = true;
            defaultQueryParams[$.crigtt.validate.ValidatorParameters.TIME_ZONE_NAME] = new Date().getTimeZoneOffsetString();
            
            var queryStr = String.EMPTY;
            
            $.properties($.extend(defaultQueryParams, (queryParams || {})), function (queryParamName, queryParamValue) {
                queryStr += ((queryStr ? "&" : String.EMPTY) + encodeURIComponent(queryParamName) + "=" + encodeURIComponent(queryParamValue));
            });
            
            $.ajax((opts = $.extend({
                "accepts": renderType.value.contentType,
                "cache": false,
                "contentType": false,
                "dataType": "text",
                "error": function (req) {
                    opts.process(false, req.responseText, req.getResponseHeader($.crigtt.validate.ValidatorHeaders.RESP_FILE_NAME_NAME));
                },
                "mimeType": this.formElem.attr("enctype"),
                "processData": false,
                "success": function (resp, respHttpStatusText, req) {
                    opts.process(true, req.responseText, req.getResponseHeader($.crigtt.validate.ValidatorHeaders.RESP_FILE_NAME_NAME));
                },
                "type": this.formElem.attr("method"),
                "url": (this.formElem.attr("action") + "." + renderType.value.extension + "?" + queryStr)
            }, opts)));
        }
    });
}(jQuery));
