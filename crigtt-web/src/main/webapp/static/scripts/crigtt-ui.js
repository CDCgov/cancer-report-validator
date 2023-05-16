(function ($) {
    //====================================================================================================
    // EXTENSIONS: TABLESORTER
    //====================================================================================================
    $.extend($.tablesorter.defaults, {
        "headerTemplate": "{content}{icon}",
        "ignoreCase": false,
        "theme": "bootstrap",
        "widgetOptions": {
            "filter_searchDelay": 1000,
            "uitheme": "bootstrap"
        },
        "widgets": [
            "filter",
            "stickyHeaders",
            "uitheme"
        ]
    });
    
    //====================================================================================================
    // EXTENSIONS: TABLESORTER THEME
    //====================================================================================================
    $.extend($.tablesorter.themes.bootstrap, {
        "iconSortAsc": "fa fa-fw fa-sort-up",
        "iconSortDesc": "fa fa-fw fa-sort-down",
        "iconSortNone": "fa fa-fw fa-sort"
    });
    
    //====================================================================================================
    // NAMESPACE: USER INTERFACE
    //====================================================================================================
    $.extend($.crigtt, {
        "ui": {}
    });
}(jQuery));
