import gov.hhs.onc.crigtt.logging.CrigttAppenderNames
import gov.hhs.onc.crigtt.web.context.impl.CrigttWebApplicationContext

/*====================================================================================================
= LOGGERS: PROJECT
=====================================================================================================*/
logger(CrigttWebApplicationContext.name, INFO, [ CrigttAppenderNames.CONSOLE, CrigttAppenderNames.FILE ], false)
