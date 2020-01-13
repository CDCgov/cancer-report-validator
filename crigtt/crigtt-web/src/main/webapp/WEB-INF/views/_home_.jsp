<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="spring-form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@page contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8" session="false" %>
<spring:url var="urlBase" value="/" scope="request"/>
<c:set var="urlStatic" value="${urlBase}static" scope="request"/>
<c:set var="urlStaticImages" value="${urlStatic}/images" scope="request"/>
<c:set var="urlStaticScripts" value="${urlStatic}/scripts" scope="request"/>
<c:set var="urlStaticStyles" value="${urlStatic}/styles" scope="request"/>
<c:set var="urlWebjarsLocator" value="${urlBase}webjars-locator" scope="request"/>
<c:set var="urlWebjarsLocatorBootstrap" value="${urlWebjarsLocator}/bootstrap" scope="request"/>
<c:set var="urlWebjarsLocatorFileSaver" value="${urlWebjarsLocator}/filesaver.js" scope="request"/>
<c:set var="urlWebjarsLocatorFontAwesome" value="${urlWebjarsLocator}/font-awesome" scope="request"/>
<c:set var="urlWebjarsLocatorJquery" value="${urlWebjarsLocator}/jquery" scope="request"/>
<c:set var="urlWebjarsLocatorSelect2" value="${urlWebjarsLocator}/select2" scope="request"/>
<c:set var="urlWebjarsLocatorTablesorter" value="${urlWebjarsLocator}/tablesorter" scope="request"/>
<c:set var="urlService" value="${urlBase}service" scope="request"/>
<c:set var="urlServiceValidator" value="${urlService}/validator" scope="request"/>
<c:set var="urlServiceValidatorValidate" value="${urlServiceValidator}/validate" scope="request"/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link type="image/png" rel="icon" href="${urlStaticImages}/crigtt-logo-16x16.png"/>
        <link type="text/css" rel="stylesheet" href="${urlWebjarsLocatorBootstrap}/css/bootstrap.min.css"/>
        <link type="text/css" rel="stylesheet" href="${urlWebjarsLocatorFontAwesome}/css/font-awesome.min.css"/>
        <link type="text/css" rel="stylesheet" href="${urlWebjarsLocatorSelect2}/select2.css"/>
        <link type="text/css" rel="stylesheet" href="${urlWebjarsLocatorSelect2}/select2-bootstrap.css"/>
        <link type="text/css" rel="stylesheet" href="${urlWebjarsLocatorTablesorter}/dist/css/theme.bootstrap.min.css"/>
        <link type="text/css" rel="stylesheet" href="${urlStaticStyles}/crigtt.css"/>
        <script type="text/javascript" src="${urlWebjarsLocatorJquery}/jquery.min.js"></script>
        <script type="text/javascript" src="${urlWebjarsLocatorBootstrap}/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="${urlWebjarsLocatorFileSaver}/FileSaver.min.js"></script>
        <script type="text/javascript" src="${urlWebjarsLocatorSelect2}/select2.min.js"></script>
        <script type="text/javascript" src="${urlWebjarsLocatorTablesorter}/dist/js/jquery.tablesorter.combined.min.js"></script>
        <script type="text/javascript" src="${urlWebjarsLocatorTablesorter}/dist/js/widgets/widget-filter-formatter-select2.min.js"></script>
        <script type="text/javascript">
        $.crigtt = {
            "validate": {
                "ValidatorHeaders": ${validatorHeadersJson},
                "ValidatorLevel": ${validatorLevelJson},
                "ValidatorParameters": ${validatorParametersJson},
                "ValidatorRenderType": ${validatorRenderTypeJson}
            }
        };
        </script>
        <script type="text/javascript" src="${urlStaticScripts}/crigtt.js"></script>
        <script type="text/javascript" src="${urlStaticScripts}/crigtt-ui.js"></script>
        <script type="text/javascript" src="${urlStaticScripts}/crigtt-validate.js"></script>
        <title><spring:message code="crigtt.msg.title.home"/></title>
    </head>
    <body>
        <spring:message code="crigtt.msg.github.repository.url" var="gitHubRepositoryUrl"/>
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a href="#" class="navbar-brand">
                        <img src="${urlStaticImages}/crigtt-logo-32x32.png" alt="CRIGTT Logo"/>
                        <strong><spring:message code="crigtt.msg.header.home"/></strong>
                    </a>
                </div>
                <ul class="nav navbar-nav nav-tabs" role="tablist">
                    <li class="active" role="presentation">
                        <a href="#content-tab-home" aria-controls="content-tab-home" role="tab" data-toggle="tab">
                            <i class="fa fa-home"></i>
                            <strong>Home</strong>
                        </a>
                    </li>
                    <li role="presentation">
                        <a href="#content-tab-validator" aria-controls="content-tab-validator" role="tab" data-toggle="tab">
                            <i class="fa fa-check"></i>
                            <strong>Validator</strong>
                        </a>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a class="link" data-toggle="dropdown">
                            <i class="fa fa-fw fa-gears"></i>
                            <strong>About</strong>
                            <span class="fa fa-fw fa-caret-down"></span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li role="presentation">
                                <a role="menuitem" tabindex="-1" target="_blank" href="${gitHubRepositoryUrl}">
                                    <i class="fa fa-fw fa-github"></i>
                                    GitHub Repository and Links to Documentation
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <div id="content" class="container-fluid">
            <div id="content-tabs" class="tab-content">
                <div id="content-tab-home" class="active tab-pane" role="tabpanel">
                    <h1>
                        <i class="fa fa-fw fa-info-circle"></i>
                        <strong>Introduction</strong>
                    </h1>
                    <h2><strong>Purpose</strong></h2>
                    <p>
                        The Cancer Report Validator (CRV) is an interactive tool for validating the content of electronic
                        submissions of cancer-related medical information prior to a system&apos;s communication with a cancer registry.
                    </p>
                    <p>
                        The CRV conforms to the <a href="http://www.hl7.org/implement/standards/product_brief.cfm?product_id=398">HL7 Implementation Guide for
                        CDA&reg; Release 2: Reporting to Public Health Cancer Registries from Ambulatory Healthcare Providers, Release 1; DSTU Release 1.1 - US
                        Realm.</a>
                    </p>
                    <h2><strong>Background</strong></h2>
                    <p>
                        The <a href="http://www.cdc.gov/cancer/npcr/">National Program of Cancer Registries (NPCR)</a> is a program run by the
                        <a href="http://www.cdc.gov/chronicdisease/">National Center for Chronic Disease Prevention and Health Promotion (NCCDPHP)</a> of the
                        <a href="http://www.cdc.gov/">Centers for Disease Control and Prevention (CDC)</a>. NPCR&apos;s mission is to collect data to monitor
                        the burden of cancer, evaluate the success of programs, and identify additional needs for cancer prevention and control efforts at
                        national, state, and more local levels.
                    </p>
                    <p>
                        In order to facilitate this goal, central cancer registries have been established to collect data from sources such as hospitals,
                        doctors&apos; offices, and laboratories on cancer occurrence and type of initial treatment. CRV serves as a means of verifying that
                        the software used by doctors&apos; offices is capable of correctly preparing Clinical Document Architecture (CDA) documents for
                        submission. This tool only applies to the format required by Meaningful Use for physicians and it is not intended to be used for
                        hospital or laboratory reporting.
                    </p>
                    <p>
                        This initiative has been sponsored by the CDC and is being managed by the
                        <a href="http://www.healthit.gov/">Office of the National Coordinator for Healthcare IT</a>.
                    </p>
                    <h2><strong>Test Data</strong></h2>
                    <spring:message code="crigtt.msg.test.data.url" var="testDataUrl"/>
                    <p>
                        Test cases have been developed in conjunction with the validator. The test data can be obtained <a href="${testDataUrl}">here</a>.
                    </p>
                    <h2><strong>Documentation</strong></h2>
                    <spring:message code="crigtt.msg.juror.document.url" var="jurorDocumentUrl"/>
                    <p>
                        Links for the project documentation can be found <a target="_blank" href="${gitHubRepositoryUrl}">here</a>.
                        The Juror Document can be found <a href="${jurorDocumentUrl}">here</a>.
                    </p>
                </div>
                <div id="content-tab-validator" class="tab-pane" role="tabpanel">
                    <h1>
                        <i class="fa fa-fw fa-paper-plane"></i>
                        <strong>Submit</strong>
                    </h1>
                    <form id="form-validator" name="form-validator" action="${urlServiceValidatorValidate}" enctype="multipart/form-data" method="post">
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-btn">
                                    <span id="btn-file-doc" class="btn btn-default">
                                        <i class="fa fa-fw fa-folder-open-o"></i>
                                        Select File
                                        <input id="input-file-doc" name="file" type="file"/>
                                    </span>
                                </span>
                                <input id="input-file-doc-display" class="form-control" type="text" readonly="readonly"/>
                            </div>
                            <h3>
                                <i class="fa fa-check-square"></i>
                                <strong>Test Cases</strong>
                            </h3>
                            <div class="input-group">
                                <select id="testcase-select" class="input-sm form-control" name="testcase">
                                    <c:forEach var="testcase" items="${testcases}">
                                        <option value=${testcase.id}>${testcase.name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="btn-group btn-group-sm">
                                <button id="btn-validator-upload" class="btn btn-default form-control" disabled="disabled" type="submit" data-toggle="tooltip"
                                    data-placement="top">
                                    <i class="fa fa-fw fa-upload"></i>
                                    Upload
                                </button>
                            </div>
                        </div>
                    </form>
                    <h1>
                        <i class="fa fa-fw fa-table"></i>
                        <strong>Results</strong>
                    </h1>
                    <div id="well-validator-results-processing" class="text-muted well well-sm">
                        <i class="fa fa-fw fa-spinner fa-spin"></i>
                        <strong><em>Processing</em></strong>
                    </div>
                    <div id="well-validator-results-empty" class="text-muted well well-sm">
                        <strong><em>None</em></strong>
                    </div>
                    <div id="panel-group-validator-results" class="panel-group" aria-multiselectable="true" role="tablist"></div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container">
                <i class="fa fa-fw fa-tags"></i>
                <strong>Version</strong>: ${buildVersion}
                (<strong>Built</strong>: ${formattedBuildTimestamp})
            </div>
        </footer>
    </body>
</html>