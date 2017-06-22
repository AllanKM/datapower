<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output method="text"/>
 <xsl:template match="/">
Version : <xsl:value-of select="system-property('xsl:version')"/>
Vendor : <xsl:value-of select="system-property('xsl:vendor')"/>
Product name : <xsl:value-of select="system-property('xsl:product-name')"/>
 </xsl:template>
</xsl:stylesheet>