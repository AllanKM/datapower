<?xml version="1.0" encoding="UTf-8" ?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" indent="yes" />
<xsl:template match="/">
<html>
<body>
<xsl:choose>
<xsl:when test="function-available('aardvark')">
<xsl:text>The aardvark function is available</xsl:text>
</xsl:when>
<xsl:otherwise>
<xsl:text>The aardvark function is not available</xsl:text>
</xsl:otherwise>
</xsl:choose>
</body>
</html>
  </xsl:template>
</xsl:stylesheet>