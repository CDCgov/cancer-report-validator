import static ch.qos.logback.classic.Level.ALL
import static ch.qos.logback.classic.Level.INFO
import static ch.qos.logback.classic.Level.WARN
import ch.qos.logback.classic.encoder.PatternLayoutEncoder
import ch.qos.logback.core.ConsoleAppender
import ch.qos.logback.core.rolling.RollingFileAppender
import ch.qos.logback.core.rolling.SizeAndTimeBasedFNATP
import ch.qos.logback.core.rolling.TimeBasedRollingPolicy
import ch.qos.logback.core.status.NopStatusListener
import gov.hhs.onc.crigtt.data.cache.impl.CrigttCacheListener
import gov.hhs.onc.crigtt.context.CrigttProperties
import gov.hhs.onc.crigtt.io.CrigttFileExtensions
import gov.hhs.onc.crigtt.logging.CrigttAppenderNames
import gov.hhs.onc.crigtt.logging.impl.PriorityColorCompositeConverter
import gov.hhs.onc.crigtt.logging.impl.RootCauseThrowableProxyConverter
import gov.hhs.onc.crigtt.logging.utils.CrigttLoggingUtils
import gov.hhs.onc.crigtt.validate.vocab.impl.DynamicVocabServiceImpl
import gov.hhs.onc.crigtt.validate.vocab.impl.StaticVocabServiceImpl
import gov.hhs.onc.crigtt.xml.impl.CrigttJaxbMarshaller
import org.apache.commons.io.FilenameUtils

/*====================================================================================================
= PROPERTIES: CONSOLE
=====================================================================================================*/
def consoleEncPattern = CrigttLoggingUtils.getProperty(context, CrigttProperties.LOGGING_CONSOLE_ENC_PATTERN_NAME, "%pColor - %m%n%exRoot")

def consoleTarget = CrigttLoggingUtils.getProperty(context, CrigttProperties.LOGGING_CONSOLE_TARGET_NAME, "System.out")

/*====================================================================================================
= PROPERTIES: FILE
=====================================================================================================*/
def fileDir = CrigttLoggingUtils.getProperty(context, CrigttProperties.LOGGING_FILE_DIR_NAME)

def fileName = CrigttLoggingUtils.getProperty(context, CrigttProperties.LOGGING_FILE_NAME_NAME)

def fileExt = CrigttLoggingUtils.getProperty(context, CrigttProperties.LOGGING_FILE_EXT_NAME, "${FilenameUtils.EXTENSION_SEPARATOR}${CrigttFileExtensions.LOG}")

def fileEncPattern = CrigttLoggingUtils.getProperty(context, CrigttProperties.LOGGING_FILE_ENC_PATTERN_NAME,
    "%d{yyyy-MM-dd HH:mm:ss z} [%C:%L %t] %p - %m%n%exRoot")

def fileSizeMax = CrigttLoggingUtils.getProperty(context, CrigttProperties.LOGGING_FILE_SIZE_MAX_NAME, "50MB")

/*====================================================================================================
= CONVERSION RULES
=====================================================================================================*/
conversionRule("exRoot", RootCauseThrowableProxyConverter)

conversionRule("pColor", PriorityColorCompositeConverter)

/*====================================================================================================
= STATUS LISTENERS
=====================================================================================================*/
statusListener(NopStatusListener)

/*====================================================================================================
= APPENDER: CONSOLE
=====================================================================================================*/
appender(CrigttAppenderNames.CONSOLE, ConsoleAppender) {
    encoder(PatternLayoutEncoder) {
        pattern = consoleEncPattern
    }
    target = consoleTarget
    withJansi = true
}

/*====================================================================================================
= APPENDER: FILE
=====================================================================================================*/
appender(CrigttAppenderNames.FILE, RollingFileAppender) {
    file = "${fileDir}/${fileName}${fileExt}"
    rollingPolicy(TimeBasedRollingPolicy) {
        fileNamePattern = "${fileDir}/${fileName}.%d{yyyy-MM-dd}.%i${fileExt}"
        timeBasedFileNamingAndTriggeringPolicy(SizeAndTimeBasedFNATP) {
            maxFileSize = fileSizeMax
        }
    }
    encoder(PatternLayoutEncoder) {
        pattern = fileEncPattern
    }
}

/*====================================================================================================
= LOGGERS: PROJECT
=====================================================================================================*/
logger("gov.hhs.onc.crigtt", ALL, [ CrigttAppenderNames.CONSOLE, CrigttAppenderNames.FILE ], false)

logger(CrigttCacheListener.name, DEBUG, [ CrigttAppenderNames.CONSOLE, CrigttAppenderNames.FILE ], false)

logger(DynamicVocabServiceImpl.name, DEBUG, [ CrigttAppenderNames.CONSOLE, CrigttAppenderNames.FILE ], false)

logger(StaticVocabServiceImpl.name, DEBUG, [ CrigttAppenderNames.CONSOLE, CrigttAppenderNames.FILE ], false)

logger(CrigttJaxbMarshaller.name, WARN, [ CrigttAppenderNames.CONSOLE, CrigttAppenderNames.FILE ], false)

/*====================================================================================================
= LOGGERS: ORIENT TECHNOLOGIES
=====================================================================================================*/
logger("com.orientechnologies", INFO, [ CrigttAppenderNames.CONSOLE, CrigttAppenderNames.FILE ], false)

/*====================================================================================================
= LOGGERS: EHCACHE
=====================================================================================================*/
logger("net.sf.ehcache", INFO, [ CrigttAppenderNames.CONSOLE, CrigttAppenderNames.FILE ], false)

/*====================================================================================================
= LOGGERS: SAXON
=====================================================================================================*/
logger("net.sf.saxon", INFO, [ CrigttAppenderNames.CONSOLE, CrigttAppenderNames.FILE ], false)

/*====================================================================================================
= LOGGERS: APACHE
=====================================================================================================*/
logger("org.apache", INFO, [ CrigttAppenderNames.CONSOLE, CrigttAppenderNames.FILE ], false)

/*====================================================================================================
= LOGGERS: APACHE CXF
=====================================================================================================*/
logger("org.apache.cxf", INFO, [ CrigttAppenderNames.CONSOLE, CrigttAppenderNames.FILE ], false)

/*====================================================================================================
= LOGGERS: SITENV
=====================================================================================================*/
logger("org.sitenv", ALL, [ CrigttAppenderNames.CONSOLE, CrigttAppenderNames.FILE ], false)

/*====================================================================================================
= LOGGERS: SPRING FRAMEWORK
=====================================================================================================*/
logger("org.springframework", INFO, [ CrigttAppenderNames.CONSOLE, CrigttAppenderNames.FILE ], false)

logger("org.springframework.context.support.PostProcessorRegistrationDelegate\$BeanPostProcessorChecker", WARN,
    [ CrigttAppenderNames.CONSOLE, CrigttAppenderNames.FILE ], false)

/*====================================================================================================
= ROOT LOGGER
=====================================================================================================*/
root(WARN, [ CrigttAppenderNames.CONSOLE, CrigttAppenderNames.FILE ])
