<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="2.0"
    xmlns:axsl="http://www.w3.org/1999/XSL/TransformAlias"
    xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <!--====================================================================================================
    = IMPORTS
    =====================================================================================================-->
    <xsl:import href="crigtt-core.xsl"/>
    
    <!--====================================================================================================
    = NAMESPACE ALIASES
    =====================================================================================================-->
    <xsl:namespace-alias stylesheet-prefix="axsl" result-prefix="xsl"/>
    
    <!--====================================================================================================
    = TEMPLATES: MATCHED
    =====================================================================================================-->
    <xsl:template match="xsl:stylesheet/xsl:template/xsl:choose[(preceding-sibling::svrl:fired-rule)[1]]">
        <xsl:variable name="patternMode" select="parent::xsl:template/@mode"/>
        <xsl:variable name="patternId" select="../preceding-sibling::xsl:template/svrl:schematron-output/svrl:active-pattern[
            following-sibling::xsl:apply-templates[1][@mode = $patternMode]]/xsl:attribute[@name = 'id']/text()"/>
        <xsl:variable name="failedAssertionElem" select="xsl:otherwise/svrl:failed-assert"/>
        <xsl:variable name="assertionTest" select="replace($failedAssertionElem/@test, '(crigtt\-validate\-vocab:)(static|dynamic)(\-vocab\()\$patternId',
                concat('$1$2$3', $SINGLE_QUOTE, $patternId, $SINGLE_QUOTE))"/>
        <axsl:variable name="contextLoc" select="crigtt-validate:location(.)"/>
        <axsl:variable name="contextLineNum" select="$contextLoc[1]"/>
        <axsl:variable name="contextColumnNum" select="$contextLoc[2]"/>
        <axsl:choose>
            <axsl:when test="{$assertionTest}">
                <svrl:successful-report test="{$assertionTest}">
                    <xsl:copy-of select="$failedAssertionElem/*"/>
                </svrl:successful-report>
            </axsl:when>
            <axsl:otherwise>
                <svrl:failed-assert test="{$assertionTest}">
                    <xsl:copy-of select="$failedAssertionElem/*"/>
                </svrl:failed-assert>
            </axsl:otherwise>
        </axsl:choose>
    </xsl:template>
    
    <xsl:template match="/|node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>