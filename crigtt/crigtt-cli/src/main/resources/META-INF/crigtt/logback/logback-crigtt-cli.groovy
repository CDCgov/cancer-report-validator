import gov.hhs.onc.crigtt.context.CrigttProperties
import gov.hhs.onc.crigtt.io.CrigttFileExtensions
import gov.hhs.onc.crigtt.logging.utils.CrigttLoggingUtils

/*====================================================================================================
= PROPERTIES: CONSOLE
=====================================================================================================*/
def consoleTty = CrigttLoggingUtils.getProperty(context, CrigttProperties.LOGGING_CONSOLE_TTY_NAME)

def consoleEncPattern = CrigttLoggingUtils.getProperty(context, CrigttProperties.LOGGING_CONSOLE_ENC_PATTERN_NAME, "%pColor(%p){${consoleTty}} - %m%n")

def consoleTarget = CrigttLoggingUtils.getProperty(context, CrigttProperties.LOGGING_CONSOLE_TARGET_NAME, "System.err")

/*====================================================================================================
= INCLUDES
=====================================================================================================*/
CrigttLoggingUtils.include(context, "META-INF/crigtt/logback/logback-crigtt-include.${CrigttFileExtensions.GROOVY}",
    "META-INF/crigtt/logback/logback-crigtt-cli-include.${CrigttFileExtensions.GROOVY}")
