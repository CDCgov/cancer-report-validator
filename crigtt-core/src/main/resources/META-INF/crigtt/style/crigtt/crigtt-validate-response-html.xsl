<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    exclude-result-prefixes="#all"
    version="2.0"
    xmlns:crigtt="urn:gov.hhs.onc.crigtt"
    xmlns:crigtt-validate="urn:gov.hhs.onc.crigtt:validate"
    xmlns:crigtt-validate-testcases="urn:gov.hhs.onc.crigtt:validate-testcases"
    xmlns:crigtt-validate-vocab="urn:gov.hhs.onc.crigtt:validate-vocab"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <!--====================================================================================================
    = IMPORTS
    =====================================================================================================-->
    <xsl:import href="crigtt-core.xsl"/>
    
    <!--====================================================================================================
    = TEMPLATES: CALLED
    =====================================================================================================-->
    <xsl:template name="label">
        <xsl:param name="classNames" select="$EMPTY"/>
        <xsl:param name="iconName" select="$EMPTY"/>
        <xsl:param name="name"/>
        <xsl:element name="strong">
            <xsl:if test="not(crigtt-validate:is-blank($classNames))">
                <xsl:attribute name="class" select="$classNames"/>
            </xsl:if>
            <xsl:if test="not(crigtt-validate:is-blank($iconName))">
                <xsl:call-template name="icon">
                    <xsl:with-param name="name" select="$iconName"/>
                </xsl:call-template>
            </xsl:if>
            <xsl:value-of select="crigtt-validate:escape-html($name)"/>
        </xsl:element>:
    </xsl:template>
    
    <xsl:template name="propValue">
        <xsl:param name="classNames" select="$EMPTY"/>
        <xsl:param name="containerTagName" select="'span'"/>
        <xsl:param name="normalizeWhitespace" select="true()"/>
        <xsl:param name="sortKey" select="true()"/>
        <xsl:param name="value"/>
        <xsl:choose>
            <xsl:when test="exists($value) and not(crigtt-validate:is-blank($value))">
                <xsl:element name="{$containerTagName}">
                    <xsl:if test="not(crigtt-validate:is-blank($classNames))">
                        <xsl:attribute name="class" select="$classNames"/>
                    </xsl:if>
                    <xsl:attribute name="data-normalize-whitespace">
                        <xsl:value-of select="$normalizeWhitespace"/>
                    </xsl:attribute>
                    <xsl:if test="$sortKey">
                        <xsl:attribute name="data-sort-key" select="$sortKey"/>
                    </xsl:if>
                    <xsl:value-of select="crigtt-validate:escape-html($value)"/>
                </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <em data-sort-key="">None</em>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template name="prop">
        <xsl:param name="containerTagName" select="'span'"/>
        <xsl:param name="labelClassNames" select="$EMPTY"/>
        <xsl:param name="labelIconName" select="$EMPTY"/>
        <xsl:param name="name"/>
        <xsl:param name="normalizeWhitespace" select="true()"/>
        <xsl:param name="value"/>
        <xsl:param name="valueContainerTagName" select="'span'"/>
        <xsl:param name="valueNormalizeWhitespace" select="true()"/>
        <xsl:param name="valueSortKey" select="true()"/>
        <xsl:element name="{$containerTagName}">
            <xsl:attribute name="data-normalize-whitespace">
                <xsl:value-of select="$normalizeWhitespace"/>
            </xsl:attribute>
            <xsl:call-template name="label">
                <xsl:with-param name="classNames" select="$labelClassNames"/>
                <xsl:with-param name="iconName" select="$labelIconName"/>
                <xsl:with-param name="name" select="$name"/>
            </xsl:call-template>
            <xsl:call-template name="propValue">
                <xsl:with-param name="containerTagName" select="$valueContainerTagName"/>
                <xsl:with-param name="normalizeWhitespace" select="$valueNormalizeWhitespace"/>
                <xsl:with-param name="sortKey" select="$valueSortKey"/>
                <xsl:with-param name="value" select="$value"/>
            </xsl:call-template>
        </xsl:element>
    </xsl:template>
    
    <xsl:template name="component">
        <xsl:param name="elem"/>
        <xsl:param name="idSortKey" select="true()"/>
        <xsl:param name="versioned" select="false()"/>
        <xsl:choose>
            <xsl:when test="exists($elem)">
                <ul>
                    <li>
                        <xsl:call-template name="prop">
                            <xsl:with-param name="name" select="'ID'"/>
                            <xsl:with-param name="value">
                                <xsl:if test="exists($elem/crigtt:id)">
                                    <xsl:value-of select="crigtt-validate:default-if-blank(string-join($elem/crigtt:id/text(), $EMPTY), $EMPTY)"/>
                                </xsl:if>
                            </xsl:with-param>
                            <xsl:with-param name="valueSortKey" select="$idSortKey"/>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="prop">
                            <xsl:with-param name="name" select="'Name'"/>
                            <xsl:with-param name="value">
                                <xsl:if test="exists($elem/crigtt:name)">
                                    <xsl:value-of select="crigtt-validate:default-if-blank(string-join($elem/crigtt:name/text(), $EMPTY), $EMPTY)"/>
                                </xsl:if>
                            </xsl:with-param>
                            <xsl:with-param name="valueSortKey" select="false()"/>
                        </xsl:call-template>
                    </li>
                    <xsl:if test="$versioned">
                        <li>
                            <xsl:call-template name="prop">
                                <xsl:with-param name="name" select="'Version'"/>
                                <xsl:with-param name="value">
                                    <xsl:if test="exists($elem/crigtt:version)">
                                        <xsl:value-of
                                            select="crigtt-validate:default-if-blank(string-join($elem/crigtt:version/text(), $EMPTY), $EMPTY)"/>
                                    </xsl:if>
                                </xsl:with-param>
                                <xsl:with-param name="valueSortKey" select="false()"/>
                            </xsl:call-template>
                        </li>
                    </xsl:if>
                </ul>
            </xsl:when>
            <xsl:otherwise><em data-sort-key="">None</em></xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template name="vocabSet">
        <xsl:param name="elem"/>
        <xsl:param name="idSortKey" select="true()"/>
        <xsl:choose>
            <xsl:when test="exists($elem)">
                <xsl:variable name="groupingValueSetAvailable" select="exists($elem/crigtt-validate-vocab:groupingValueSet)"/>
                <xsl:variable name="valueSetAvailable" select="exists($elem/crigtt-validate-vocab:valueSet)"/>
                <xsl:variable name="codeSystemAvailable" select="exists($elem/crigtt-validate-vocab:codeSystem)"/>
                <ul>
                    <xsl:if test="$groupingValueSetAvailable">
                        <li>
                            <strong>Grouping Value Set</strong>
                            <xsl:call-template name="component">
                                <xsl:with-param name="elem" select="$elem/crigtt-validate-vocab:groupingValueSet"/>
                                <xsl:with-param name="idSortKey" select="$idSortKey"/>
                                <xsl:with-param name="versioned" select="true()"/>
                            </xsl:call-template>
                        </li>
                    </xsl:if>
                    <xsl:if test="$valueSetAvailable">
                        <li>
                            <strong>Value Set</strong>
                            <xsl:call-template name="component">
                                <xsl:with-param name="elem" select="$elem/crigtt-validate-vocab:valueSet"/>
                                <xsl:with-param name="idSortKey" select="$idSortKey and not($groupingValueSetAvailable)"/>
                                <xsl:with-param name="versioned" select="true()"/>
                            </xsl:call-template>
                        </li>
                    </xsl:if>
                    <xsl:if test="$codeSystemAvailable">
                        <li>
                            <strong>Code System</strong>
                            <xsl:call-template name="component">
                                <xsl:with-param name="elem" select="$elem/crigtt-validate-vocab:codeSystem"/>
                                <xsl:with-param name="idSortKey" select="$idSortKey and not($groupingValueSetAvailable) and not($valueSetAvailable)"/>
                                <xsl:with-param name="versioned" select="true()"/>
                            </xsl:call-template>
                        </li>
                    </xsl:if>
                </ul>
            </xsl:when>
            <xsl:otherwise><em data-sort-key="">None</em></xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="messages">
        <xsl:choose>
            <xsl:when test="exists(crigtt-validate:messages)">
                <ul>
                    <xsl:for-each select="crigtt-validate:messages/crigtt-validate:message">
                        <li>
                            <xsl:call-template name="propValue">
                                <xsl:with-param name="containerTagName" select="'pre'"/>
                                <xsl:with-param name="normalizeWhitespace" select="false()"/>
                                <xsl:with-param name="value" select="text()"/>
                            </xsl:call-template>
                        </li>
                    </xsl:for-each>
                </ul>
            </xsl:when>
            <xsl:otherwise><em data-sort-key="">None</em></xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="location">
        <xsl:choose>
            <xsl:when test="exists(crigtt-validate:location)">
                <ul>
                    <li>
                        <xsl:call-template name="prop">
                            <xsl:with-param name="name" select="'Node Expression'"/>
                            <xsl:with-param name="value">
                                <xsl:if test="exists(crigtt-validate:location/crigtt-validate:nodeExpression)">
                                    <xsl:value-of select="crigtt-validate:location/crigtt-validate:nodeExpression/text()"/>
                                </xsl:if>
                            </xsl:with-param>
                            <xsl:with-param name="valueContainerTagName" select="'pre'"/>
                            <xsl:with-param name="valueNormalizeWhitespace" select="false()"/>
                            <xsl:with-param name="valueSortKey" select="false()"/>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="prop">
                            <xsl:with-param name="name" select="'Line #'"/>
                            <xsl:with-param name="value">
                                <xsl:if test="exists(crigtt-validate:location/crigtt-validate:lineNumber)">
                                    <xsl:value-of select="crigtt-validate:location/crigtt-validate:lineNumber/text()"/>
                                </xsl:if>
                            </xsl:with-param>
                        </xsl:call-template>
                    </li>
                    <li>
                        <xsl:call-template name="prop">
                            <xsl:with-param name="name" select="'Column #'"/>
                            <xsl:with-param name="value">
                                <xsl:if test="exists(crigtt-validate:location/crigtt-validate:columnNumber)">
                                    <xsl:value-of select="crigtt-validate:location/crigtt-validate:columnNumber/text()"/>
                                </xsl:if>
                            </xsl:with-param>
                            <xsl:with-param name="valueSortKey" select="false()"/>
                        </xsl:call-template>
                    </li>
                </ul>
            </xsl:when>
            <xsl:otherwise><em data-sort-key="">None</em></xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template name="downloadButton">
        <xsl:param name="iconName"/>
        <xsl:param name="text"/>
        <xsl:param name="type"/>
        <xsl:call-template name="button">
            <xsl:with-param name="classNames" select="'btn-download'"/>
            <xsl:with-param name="iconName" select="$iconName"/>
            <xsl:with-param name="text" select="$text"/>
            <xsl:with-param name="type" select="$type"/>
        </xsl:call-template>
    </xsl:template>
    
    <xsl:template name="button">
        <xsl:param name="classNames"/>
        <xsl:param name="iconName"/>
        <xsl:param name="text" select="''"/>
        <xsl:param name="type"/>
        <button class="btn btn-default {$classNames}" data-type="{$type}">
            <xsl:call-template name="icon">
                <xsl:with-param name="name" select="$iconName"/>
            </xsl:call-template>
            <xsl:if test="not(crigtt-validate:is-blank($text))">
                <xsl:value-of select="$text"/>
            </xsl:if>
        </button>
    </xsl:template>
    
    <xsl:template name="icon">
        <xsl:param name="name"/>
        <i class="fa fa-fw fa-{$name}"/>
    </xsl:template>
    
    <!--====================================================================================================
    = TEMPLATES: MATCHED
    =====================================================================================================-->
    <xsl:template match="/crigtt-validate:error">
        <div class="alert alert-danger alert-dismissible" role="alert" data-normalize-whitespace="true">
            <button type="button" class="close" aria-label="Close" data-dismiss="alert">
                <span aria-hidden="true"><xsl:value-of select="$TIMES"/></span>
            </button>
            <h4>
                <xsl:call-template name="icon">
                    <xsl:with-param name="name" select="'exclamation-triangle'"/>
                </xsl:call-template>
                <strong>Error</strong>
            </h4>
            <ul>
                <li>
                    <xsl:call-template name="prop">
                        <xsl:with-param name="name" select="'Exception'"/>
                        <xsl:with-param name="value" select="string-join(crigtt-validate:*[(local-name() = 'message') or
                            (local-name() = 'stackTrace')]/text(), $LF)"/>
                        <xsl:with-param name="valueContainerTagName" select="'pre'"/>
                        <xsl:with-param name="valueNormalizeWhitespace" select="false()"/>
                    </xsl:call-template>
                </li>
            </ul>
        </div>
    </xsl:template>
    
    <xsl:template match="/crigtt-validate:report">
        <xsl:variable name="id" select="crigtt:id/text()"/>
        <xsl:variable name="formattedSubmittedTimestamp" select="crigtt-validate:format-timestamp(crigtt-validate:submittedTimestamp/text())"/>
        <xsl:variable name="doc" select="crigtt-validate:document"/>
        <xsl:variable name="docFileName" select="$doc/crigtt-validate:fileName/text()"/>
        <xsl:variable name="testcaseNum" select="substring-after(crigtt-validate:testcaseId, 'testcase')"/>
        <xsl:variable name="noTestcaseSelected" select="'0'"/>
        <xsl:variable name="results" select="crigtt-validate:results"/>
        <xsl:variable name="status" select="$results/crigtt-validate:status/text()"/>
        <xsl:variable name="allEvents" select="$results/crigtt-validate:events"/>
        <xsl:variable name="igConformanceEvents" select="$allEvents/crigtt-validate:event[crigtt-validate:contextSpecific=false()]"/>
        <xsl:variable name="testDataConformanceEvents" select="$allEvents/crigtt-validate:event[crigtt-validate:contextSpecific=true()]"/>
        <xsl:variable name="eventTotals" select="$results/crigtt-validate:eventTotals"/>
        <xsl:variable name="numEvents" select="$eventTotals/crigtt-validate:all/text()"/>
        <xsl:variable name="numInfoEvents" select="$eventTotals/crigtt-validate:info/text()"/>
        <xsl:variable name="numWarnEvents" select="$eventTotals/crigtt-validate:warn/text()"/>
        <xsl:variable name="numErrorEvents" select="$eventTotals/crigtt-validate:error/text()"/>
        <xsl:variable name="numMismatchEvents" select="$eventTotals/crigtt-validate:mismatch/text()"/>
        <xsl:variable name="numTestDataEvents" select="count($testDataConformanceEvents)"/>
        <xsl:variable name="numIgConformanceEvents" select="$numEvents - $numTestDataEvents"/>
        <xsl:variable name="errorStatus" select="xsd:integer($numErrorEvents) gt 0"/>
        <xsl:variable name="mismatchStatus" select="xsd:integer($numMismatchEvents) gt 0"/>
        <xsl:variable name="statusClassName">
            <xsl:choose>
                <xsl:when test="xsd:boolean($status)">success</xsl:when>
                <xsl:otherwise>
                    <xsl:choose>
                        <xsl:when test="$errorStatus">danger</xsl:when>
                        <xsl:otherwise>warning</xsl:otherwise>
                    </xsl:choose>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="statusIconName">
            <xsl:choose>
                <xsl:when test="xsd:boolean($status)">ok-circle</xsl:when>
                <xsl:otherwise>
                    <xsl:choose>
                        <xsl:when test="$errorStatus">times-circle</xsl:when>
                        <xsl:otherwise>exclamation-circle</xsl:otherwise>
                    </xsl:choose>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <div id="panel-validator-results-{$id}" class="panel panel-{$statusClassName}" data-normalize-whitespace="true">
            <div id="panel-heading-validator-results-{$id}" class="panel-heading" role="tab">
                <div class="panel-title">
                    <a href="#panel-collapse-validator-results-{$id}" aria-controls="panel-collapse-validator-results-{$id}" aria-expanded="true"
                        data-toggle="collapse" data-parent="#panel-group-validator-results">
                        <span>
                            <xsl:call-template name="icon">
                                <xsl:with-param name="name" select="$statusIconName"/>
                            </xsl:call-template>
                        </span>
                        <span>
                            <xsl:call-template name="prop">
                                <xsl:with-param name="containerTagName" select="'div'"/>
                                <xsl:with-param name="name" select="'Submitted'"/>
                                <xsl:with-param name="value" select="$formattedSubmittedTimestamp"/>
                            </xsl:call-template>
                            <xsl:call-template name="prop">
                                <xsl:with-param name="name" select="'Test Case'"/>
                                <xsl:with-param name="value">
                                    <xsl:choose>
                                        <xsl:when test="$testcaseNum = $noTestcaseSelected">None</xsl:when>
                                        <xsl:otherwise><xsl:value-of select="$testcaseNum"/></xsl:otherwise>
                                    </xsl:choose>
                                </xsl:with-param>
                            </xsl:call-template>
                            <xsl:call-template name="prop">
                                <xsl:with-param name="containerTagName" select="'div'"/>
                                <xsl:with-param name="name" select="'Document File Name'"/>
                                <xsl:with-param name="value" select="$docFileName"/>
                            </xsl:call-template>
                            <xsl:call-template name="prop">
                                <xsl:with-param name="containerTagName" select="'div'"/>
                                <xsl:with-param name="name" select="'Result (IG Conformance Events)'"/>
                                <xsl:with-param name="value">
                                    <xsl:choose>
                                        <xsl:when test="$errorStatus">Fail</xsl:when>
                                        <xsl:otherwise>Pass</xsl:otherwise>
                                    </xsl:choose>
                                </xsl:with-param>
                            </xsl:call-template>
                            <xsl:choose>
                                <xsl:when test="$testcaseNum != $noTestcaseSelected">
                                    <xsl:call-template name="prop">
                                        <xsl:with-param name="containerTagName" select="'div'"/>
                                        <xsl:with-param name="name" select="'Result (Test Data Conformance Events)'"/>
                                        <xsl:with-param name="value">
                                            <xsl:choose>
                                                <xsl:when test="$mismatchStatus">Test data mismatches exist</xsl:when>
                                                <xsl:otherwise>No test data mismatches</xsl:otherwise>
                                            </xsl:choose>
                                        </xsl:with-param>
                                    </xsl:call-template>
                                </xsl:when>
                            </xsl:choose>
                        </span>
                    </a>
                    <span class="well well-sm">
                        <xsl:call-template name="icon">
                            <xsl:with-param name="name" select="'download'"/>
                        </xsl:call-template>
                        <strong>Download</strong>:
                        <xsl:call-template name="downloadButton">
                            <xsl:with-param name="iconName" select="'file-text-o'"/>
                            <xsl:with-param name="text" select="'JSON'"/>
                            <xsl:with-param name="type" select="'json'"/>
                        </xsl:call-template>
                        <xsl:call-template name="downloadButton">
                            <xsl:with-param name="iconName" select="'file-code-o'"/>
                            <xsl:with-param name="text" select="'XML'"/>
                            <xsl:with-param name="type" select="'xml'"/>
                        </xsl:call-template>
                    </span>
                    <button type="button" class="close" aria-label="Close">
                        <span aria-hidden="true"><xsl:value-of select="$TIMES"/></span>
                    </button>
                </div>
            </div>
            <div id="panel-collapse-validator-results-{$id}" class="collapse in panel-collapse" aria-labelledby="panel-heading-validator-results-{$id}"
                role="tabpanel">
                <div class="panel-body">
                    <div role="tabpanel">
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation">
                                <a href="#tab-pane-validator-results-details-{$id}" aria-controls="tab-pane-validator-results-details-{$id}" data-toggle="tab"
                                    role="tab">
                                    <xsl:call-template name="icon">
                                        <xsl:with-param name="name" select="'cubes'"/>
                                    </xsl:call-template>
                                    <strong>Details</strong>
                                </a>
                            </li>
                            <li class="active" role="presentation">
                                <a href="#tab-pane-validator-results-events-ig-{$id}" aria-controls="tab-pane-validator-results-events-ig-{$id}"
                                    data-toggle="tab" role="tab">
                                    <xsl:call-template name="icon">
                                        <xsl:with-param name="name" select="'comments-o'"/>
                                    </xsl:call-template>
                                    <strong>IG Conformance Events</strong>
                                </a>
                            </li>
                            <xsl:choose>
                                <xsl:when test="$testcaseNum != $noTestcaseSelected">
                                    <li role="presentation">
                                        <a href="#tab-pane-validator-results-events-testcases-{$id}" aria-controls="tab-pane-validator-results-events-testcases-{$id}"
                                           data-toggle="tab" role="tab">
                                            <xsl:call-template name="icon">
                                                <xsl:with-param name="name" select="'puzzle-piece'"/>
                                            </xsl:call-template>
                                            <strong>Test Data Conformance Events</strong>
                                        </a>
                                    </li>
                                </xsl:when>
                            </xsl:choose>
                        </ul>
                        <div class="tab-content">
                            <div id="tab-pane-validator-results-details-{$id}" class="tab-pane" role="tabpanel">
                                <ul>
                                    <li>
                                        <xsl:call-template name="prop">
                                            <xsl:with-param name="name" select="'ID'"/>
                                            <xsl:with-param name="value" select="$id"/>
                                        </xsl:call-template>
                                    </li>
                                    <li>
                                        <xsl:call-template name="prop">
                                            <xsl:with-param name="name" select="'Submitted'"/>
                                            <xsl:with-param name="value" select="$formattedSubmittedTimestamp"/>
                                        </xsl:call-template>
                                    </li>
                                    <li>
                                        <xsl:call-template name="prop">
                                            <xsl:with-param name="name" select="'Processed'"/>
                                            <xsl:with-param name="value" select="crigtt-validate:format-timestamp(crigtt-validate:processedTimestamp/text())"/>
                                        </xsl:call-template>
                                    </li>
                                    <li>
                                        <xsl:call-template name="prop">
                                            <xsl:with-param name="name" select="'Test Case'"/>
                                            <xsl:with-param name="value">
                                                <xsl:choose>
                                                    <xsl:when test="$testcaseNum = $noTestcaseSelected">None</xsl:when>
                                                    <xsl:otherwise><xsl:value-of select="$testcaseNum"/></xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:with-param>
                                        </xsl:call-template>
                                    </li>
                                    <li>
                                        <xsl:call-template name="label">
                                            <xsl:with-param name="name" select="'Document'"/>
                                        </xsl:call-template>
                                        <ul>
                                            <li>
                                                <xsl:call-template name="prop">
                                                    <xsl:with-param name="name" select="'File Name'"/>
                                                    <xsl:with-param name="value" select="$docFileName"/>
                                                </xsl:call-template>
                                            </li>
                                            <li>
                                                <xsl:call-template name="prop">
                                                    <xsl:with-param name="name" select="'Hash (SHA-512; Base64 Encoded)'"/>
                                                    <xsl:with-param name="value">
                                                        <xsl:if test="exists($doc/crigtt-validate:hash)">
                                                            <xsl:value-of
                                                                select="xsd:string(xsd:base64Binary($doc/crigtt-validate:hash/text()))"/>
                                                        </xsl:if>
                                                    </xsl:with-param>
                                                </xsl:call-template>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div id="tab-pane-validator-results-events-ig-{$id}" class="active tab-pane" role="tabpanel">
                                <table class="table table-bordered table-condensed table-hover">
                                    <caption>
                                        <ul>
                                            <li>
                                                <xsl:call-template name="prop">
                                                    <xsl:with-param name="labelIconName" select="'asterisk'"/>
                                                    <xsl:with-param name="name" select="'All'"/>
                                                    <xsl:with-param name="value" select="concat($numIgConformanceEvents, ' of ', $numIgConformanceEvents, ' (0 Filtered)')"/>
                                                </xsl:call-template>
                                            </li>
                                            <li>
                                                <xsl:call-template name="prop">
                                                    <xsl:with-param name="labelClassNames" select="'text-danger'"/>
                                                    <xsl:with-param name="labelIconName" select="'times-circle'"/>
                                                    <xsl:with-param name="name" select="'Errors'"/>
                                                    <xsl:with-param name="value" select="concat($numErrorEvents, ' of ', $numErrorEvents, ' (0 Filtered)')"/>
                                                </xsl:call-template>
                                            </li>
                                            <li>
                                                <xsl:call-template name="prop">
                                                    <xsl:with-param name="labelClassNames" select="'text-warning'"/>
                                                    <xsl:with-param name="labelIconName" select="'exclamation-circle'"/>
                                                    <xsl:with-param name="name" select="'Warnings'"/>
                                                    <xsl:with-param name="value" select="concat($numWarnEvents, ' of ', $numWarnEvents, ' (0 Filtered)')"/>
                                                </xsl:call-template>
                                            </li>
                                            <li>
                                                <xsl:call-template name="prop">
                                                    <xsl:with-param name="labelClassNames" select="'text-info'"/>
                                                    <xsl:with-param name="labelIconName" select="'info-circle'"/>
                                                    <xsl:with-param name="name" select="'Infos'"/>
                                                    <xsl:with-param name="value" select="concat($numInfoEvents, ' of ', $numInfoEvents, ' (0 Filtered)')"/>
                                                </xsl:call-template>
                                            </li>
                                        </ul>
                                    </caption>
                                    <thead>
                                        <tr>
                                            <th>Status</th>
                                            <th data-filter-label="Line #">Location</th>
                                            <th class="filter-false">Expression</th>
                                            <th class="filter-false">Description</th>
                                            <th class="filter-false">Messages</th>
                                            <th data-filter-label="ID">Vocabulary Sets</th>
                                            <th data-filter-label="ID">Code</th>
                                            <th data-filter-label="ID">Pattern</th>
                                            <th data-filter-label="ID">Rule</th>
                                            <th data-filter-label="ID">Assertion</th>
                                            <th class="filter-false">ID</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <xsl:for-each select="$igConformanceEvents">
                                            <xsl:variable name="eventStatus" select="xsd:boolean(crigtt-validate:status/text())"/>
                                            <xsl:variable name="eventLevel" select="crigtt-validate:level/text()"/>
                                            <xsl:variable name="infoEventLevel" select="$eventLevel = 'INFO'"/>
                                            <xsl:variable name="eventLevelDisplayName">
                                                <xsl:choose>
                                                    <xsl:when test="$infoEventLevel">Information</xsl:when>
                                                    <xsl:when test="$eventLevel = 'WARN'">Warning</xsl:when>
                                                    <xsl:when test="$eventLevel = 'ERROR'">Error</xsl:when>
                                                    <xsl:otherwise>default</xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:variable>
                                            <xsl:variable name="eventLevelClassName">
                                                <xsl:choose>
                                                    <xsl:when test="$infoEventLevel">info</xsl:when>
                                                    <xsl:when test="$eventLevel = 'WARN'">warning</xsl:when>
                                                    <xsl:when test="$eventLevel = 'ERROR'">danger</xsl:when>
                                                    <xsl:otherwise>default</xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:variable>
                                            <xsl:variable name="eventStatusClassName">
                                                <xsl:choose>
                                                    <xsl:when test="$eventStatus">success</xsl:when>
                                                    <xsl:otherwise>
                                                        <xsl:value-of select="$eventLevelClassName"/>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                            </xsl:variable>
                                            <tr class="{$eventStatusClassName}" data-level="{$eventLevel}" data-status="{$eventStatus}">
                                                <td>
                                                    <xsl:call-template name="propValue">
                                                        <xsl:with-param name="classNames" select="concat('text-', $eventStatusClassName)"/>
                                                        <xsl:with-param name="sortKey" select="$eventStatus"/>
                                                        <xsl:with-param name="value">
                                                            <xsl:choose>
                                                                <xsl:when test="$eventStatus">Pass</xsl:when>
                                                                <xsl:otherwise><xsl:value-of select="$eventLevelDisplayName"/></xsl:otherwise>
                                                            </xsl:choose>
                                                        </xsl:with-param>
                                                    </xsl:call-template>
                                                    <xsl:if test="not($eventStatus)">
                                                        <span class="hidden" data-sort-key="true"><xsl:value-of select="$eventLevel"/></span>
                                                    </xsl:if>
                                                </td>
                                                <td>
                                                    <xsl:call-template name="location"/>
                                                </td>
                                                <td>
                                                    <ul>
                                                        <li>
                                                            <xsl:call-template name="prop">
                                                                <xsl:with-param name="name" select="'Context Expression'"/>
                                                                <xsl:with-param name="value">
                                                                    <xsl:if test="exists(crigtt-validate:contextExpression)">
                                                                        <xsl:value-of select="crigtt-validate:contextExpression/text()"/>
                                                                    </xsl:if>
                                                                </xsl:with-param>
                                                                <xsl:with-param name="valueContainerTagName" select="'pre'"/>
                                                                <xsl:with-param name="valueNormalizeWhitespace" select="false()"/>
                                                                <xsl:with-param name="valueSortKey" select="false()"/>
                                                            </xsl:call-template>
                                                        </li>
                                                        <li>
                                                            <xsl:call-template name="prop">
                                                                <xsl:with-param name="name" select="'Runtime Test Expression'"/>
                                                                <xsl:with-param name="value">
                                                                    <xsl:if test="exists(crigtt-validate:runtimeTestExpression)">
                                                                        <xsl:value-of select="crigtt-validate:runtimeTestExpression/text()"/>
                                                                    </xsl:if>
                                                                </xsl:with-param>
                                                                <xsl:with-param name="valueContainerTagName" select="'pre'"/>
                                                                <xsl:with-param name="valueNormalizeWhitespace" select="false()"/>
                                                            </xsl:call-template>
                                                        </li>
                                                    </ul>
                                                </td>
                                                <td>
                                                    <xsl:call-template name="propValue">
                                                        <xsl:with-param name="containerTagName" select="'pre'"/>
                                                        <xsl:with-param name="normalizeWhitespace" select="false()"/>
                                                        <xsl:with-param name="value">
                                                            <xsl:if test="exists(crigtt-validate:description)">
                                                                <xsl:value-of select="crigtt-validate:description/text()"/>
                                                            </xsl:if>
                                                        </xsl:with-param>
                                                    </xsl:call-template>
                                                </td>
                                                <td>
                                                    <xsl:call-template name="messages"/>
                                                </td>
                                                <td>
                                                    <xsl:choose>
                                                        <xsl:when test="exists(crigtt-validate:vocabSet)">
                                                            <ul>
                                                                <li>
                                                                    <strong>Actual</strong>
                                                                    <xsl:call-template name="vocabSet">
                                                                        <xsl:with-param name="elem" select="crigtt-validate:vocabSet"/>
                                                                    </xsl:call-template>
                                                                </li>
                                                                <xsl:for-each select="crigtt-validate:expectedVocabSets/crigtt-validate-vocab:vocabSet">
                                                                    <li>
                                                                        <strong>Expected #<xsl:value-of select="position()"/></strong>
                                                                        <xsl:call-template name="vocabSet">
                                                                            <xsl:with-param name="elem" select="current()"/>
                                                                            <xsl:with-param name="idSortKey" select="false()"/>
                                                                        </xsl:call-template>
                                                                    </li>
                                                                </xsl:for-each>
                                                            </ul>
                                                        </xsl:when>
                                                        <xsl:otherwise><em data-sort-key="">None</em></xsl:otherwise>
                                                    </xsl:choose>
                                                </td>
                                                <td>
                                                    <xsl:choose>
                                                        <xsl:when test="exists(crigtt-validate:code)">
                                                            <ul>
                                                                <li>
                                                                    <strong>Actual</strong>
                                                                    <xsl:call-template name="component">
                                                                        <xsl:with-param name="elem" select="crigtt-validate:code"/>
                                                                    </xsl:call-template>
                                                                </li>
                                                                <xsl:for-each select="crigtt-validate:expectedCodes/crigtt-validate-vocab:code">
                                                                    <li>
                                                                        <strong>Expected #<xsl:value-of select="position()"/></strong>
                                                                        <xsl:call-template name="vocabSet">
                                                                            <xsl:with-param name="elem" select="current()"/>
                                                                            <xsl:with-param name="idSortKey" select="false()"/>
                                                                        </xsl:call-template>
                                                                    </li>
                                                                </xsl:for-each>
                                                            </ul>
                                                        </xsl:when>
                                                        <xsl:otherwise><em data-sort-key="">None</em></xsl:otherwise>
                                                    </xsl:choose>
                                                </td>
                                                <td>
                                                    <xsl:call-template name="component">
                                                        <xsl:with-param name="elem" select="crigtt-validate:pattern"/>
                                                    </xsl:call-template>
                                                </td>
                                                <td>
                                                    <xsl:call-template name="component">
                                                        <xsl:with-param name="elem" select="crigtt-validate:rule"/>
                                                    </xsl:call-template>
                                                </td>
                                                <td>
                                                    <xsl:call-template name="component">
                                                        <xsl:with-param name="elem" select="crigtt-validate:assertion"/>
                                                    </xsl:call-template>
                                                </td>
                                                <td>
                                                    <xsl:call-template name="propValue">
                                                        <xsl:with-param name="value" select="crigtt:id/text()"/>
                                                    </xsl:call-template>
                                                </td>
                                            </tr>
                                        </xsl:for-each>
                                    </tbody>
                                </table>
                            </div>
                            <xsl:choose>
                                <xsl:when test="$testcaseNum != $noTestcaseSelected">
                                    <div id="tab-pane-validator-results-events-testcases-{$id}" class="tab-pane" role="tabpanel">
                                        <table class="table table-bordered table-condensed table-hover">
                                            <caption>
                                                <ul>
                                                    <li>
                                                        <xsl:call-template name="prop">
                                                            <xsl:with-param name="labelIconName" select="'asterisk'"/>
                                                            <xsl:with-param name="name" select="'All'"/>
                                                            <xsl:with-param name="value" select="concat($numTestDataEvents, ' of ', $numTestDataEvents, ' (0 Filtered)')"/>
                                                        </xsl:call-template>
                                                    </li>
                                                    <li>
                                                        <xsl:call-template name="prop">
                                                            <xsl:with-param name="labelClassNames" select="'text-danger'"/>
                                                            <xsl:with-param name="labelIconName" select="'times-circle'"/>
                                                            <xsl:with-param name="name" select="'Test Data Mismatches'"/>
                                                            <xsl:with-param name="value" select="concat($numMismatchEvents, ' of ', $numMismatchEvents, ' (0 Filtered)')"/>
                                                        </xsl:call-template>
                                                    </li>
                                                </ul>
                                            </caption>
                                            <thead>
                                                <tr>
                                                    <th>Status</th>
                                                    <th data-filter-label="ID">Actual Result</th>
                                                    <th data-filter-label="ID">Expected Result(s)</th>
                                                    <th data-filter-label="Line #">Location</th>
                                                    <th class="filter-false">Messages</th>
                                                    <th class="filter-false">ID</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <xsl:for-each select="$testDataConformanceEvents">
                                                    <xsl:variable name="eventStatus" select="xsd:boolean(crigtt-validate:status/text())"/>
                                                    <xsl:variable name="eventLevel" select="crigtt-validate:level/text()"/>
                                                    <xsl:variable name="mismatchEventLevel" select="$eventLevel = 'MISMATCH'"/>
                                                    <xsl:variable name="eventLevelDisplayName">
                                                        <xsl:choose>
                                                            <xsl:when test="$eventLevel = 'MISMATCH'">Mismatch</xsl:when>
                                                            <xsl:otherwise>default</xsl:otherwise>
                                                        </xsl:choose>
                                                    </xsl:variable>
                                                    <xsl:variable name="eventLevelClassName">
                                                        <xsl:choose>
                                                            <xsl:when test="$mismatchEventLevel">danger</xsl:when>
                                                            <xsl:otherwise>default</xsl:otherwise>
                                                        </xsl:choose>
                                                    </xsl:variable>
                                                    <xsl:variable name="eventStatusClassName">
                                                        <xsl:choose>
                                                            <xsl:when test="$eventStatus">success</xsl:when>
                                                            <xsl:otherwise>
                                                                <xsl:value-of select="$eventLevelClassName"/>
                                                            </xsl:otherwise>
                                                        </xsl:choose>
                                                    </xsl:variable>
                                                    <tr class="{$eventStatusClassName}" data-level="{$eventLevel}" data-status="{$eventStatus}">
                                                        <td>
                                                            <xsl:call-template name="propValue">
                                                                <xsl:with-param name="classNames" select="concat('text-', $eventStatusClassName)"/>
                                                                <xsl:with-param name="sortKey" select="$eventStatus"/>
                                                                <xsl:with-param name="value">
                                                                    <xsl:choose>
                                                                        <xsl:when test="$eventStatus">Match</xsl:when>
                                                                        <xsl:otherwise><xsl:value-of select="$eventLevelDisplayName"/></xsl:otherwise>
                                                                    </xsl:choose>
                                                                </xsl:with-param>
                                                            </xsl:call-template>
                                                            <xsl:if test="not($eventStatus)">
                                                                <span class="hidden" data-sort-key="true"><xsl:value-of select="$eventLevel"/></span>
                                                            </xsl:if>
                                                        </td>
                                                        <td>
                                                            <xsl:choose>
                                                                <xsl:when test="exists(crigtt-validate:actualResult)">
                                                                    <xsl:call-template name="propValue">
                                                                        <xsl:with-param name="value" select="crigtt-validate:actualResult"/>
                                                                    </xsl:call-template>
                                                                </xsl:when>
                                                                <xsl:otherwise><em data-sort-key="">None</em></xsl:otherwise>
                                                            </xsl:choose>
                                                        </td>
                                                        <td>
                                                            <xsl:choose>
                                                                <xsl:when test="exists(crigtt-validate:expectedResults)">
                                                                    <ul>
                                                                        <xsl:for-each select="crigtt-validate:expectedResults">
                                                                            <li>
                                                                                <xsl:call-template name="propValue">
                                                                                    <xsl:with-param name="value" select="current()/text()"/>
                                                                                </xsl:call-template>
                                                                            </li>
                                                                        </xsl:for-each>
                                                                    </ul>
                                                                </xsl:when>
                                                                <xsl:otherwise><em data-sort-key="">None</em></xsl:otherwise>
                                                            </xsl:choose>
                                                        </td>
                                                        <td>
                                                            <xsl:call-template name="location"/>
                                                        </td>
                                                        <td>
                                                            <xsl:call-template name="messages"/>
                                                        </td>
                                                        <td>
                                                            <xsl:call-template name="propValue">
                                                                <xsl:with-param name="value" select="crigtt:id/text()"/>
                                                            </xsl:call-template>
                                                        </td>
                                                    </tr>
                                                </xsl:for-each>
                                            </tbody>
                                        </table>
                                    </div>
                                </xsl:when>
                            </xsl:choose>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>