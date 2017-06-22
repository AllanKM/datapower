<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
   ceiling(3.5) = <xsl:value-of select='ceiling(3.5)'/>
   floor(-1.3) =<xsl:value-of select='floor(-1.3)'/>
   round(4.3) = <xsl:value-of select='round(4.3)'/>
   count('4.8,3') = <xsl:value-of select="count('4.8,3')"/>
   sum(2,3) = <xsl:value-of select='sum(2,3)'/>
   format-number(1234567, #,##0.00) = <xsl:value-of select="format-number('1234567', '#,##0.00')"/>
</xsl:template>
</xsl:stylesheet>