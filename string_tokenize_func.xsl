<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/*">
<xsl:value-of select="reverse(*)/string(.)" seperator="&#xA;"/>
</xsl:template>
</xsl:stylesheet>

Input:
<?xml-stylesheet type="text/xsl" href="simple.xsl"?>
<root>
<text>apple, grapes, orange</text>
</root>