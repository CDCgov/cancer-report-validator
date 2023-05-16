import gov.hhs.onc.crigtt.io.CrigttFileExtensions
import gov.hhs.onc.crigtt.logging.utils.CrigttLoggingUtils

/*====================================================================================================
= INCLUDES
=====================================================================================================*/
CrigttLoggingUtils.include(context, "META-INF/crigtt/logback/logback-crigtt-include.${CrigttFileExtensions.GROOVY}",
    "META-INF/crigtt/logback/logback-crigtt-web-include.${CrigttFileExtensions.GROOVY}")
