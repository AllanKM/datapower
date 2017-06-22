<xsl:stylesheet version = '1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
<xsl:template match="/">
	<xsl:for-each select="document/poem">
	<xsl:value-of select="translate(., 'aeiou', 'AEIOU')" /> 
	</xsl:for-each>
</xsl:template>
</xsl:stylesheet>

Input:

<?xml version="1.0"?>
<document>
<poem>
aeiou
</poem>  
  </document>

