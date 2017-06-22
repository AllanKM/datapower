<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">

    <xsl:output omit-xml-declaration="yes"/>

    <xsl:strip-space elements="*"/>
    <xsl:output indent="yes"/>

    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="transactionSplitTrans">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
        <xsl:if test="descendant::code='SCBP' ">
            <underlyingPolicyOperationalDatabaseCd>
                <code>SCBP</code>
            </underlyingPolicyOperationalDatabaseCd>
        </xsl:if>
 <xsl:if test="descendant::code='UB' ">
           <Policy>
                <code>UB</code>
            </Policy>
</xsl:if>
    </xsl:template>

</xsl:stylesheet>

Input:
<?xml version="1.0" encoding="utf-8"?>
<policies>
    <policy>
        <policyKey>
            <policyNbr>004567</policyNbr>
            <policyEffectiveDt>2014-11-14</policyEffectiveDt>
            <policyID>54545</policyID>
            <policyFormCd>
                <code>669</code>
            </policyFormCd>
        </policyKey>
        <transactionSplitTrans>
            <sourceSystemCd>
                <code>SCBP</code>
            </sourceSystemCd>
        </transactionSplitTrans>
    </policy> 
</policies>

