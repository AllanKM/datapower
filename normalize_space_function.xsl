<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">
  <xsl:output method="xml" omit-xml-declaration="yes" />

  <xsl:template match="employee">

    <xsl:value-of select="normalize-space(@hireDate)" />
    <xsl:text>,</xsl:text>
    <xsl:value-of select="normalize-space(salary)" /> // <xsl:value-of select="normalize-space(empty)" />
    <xsl:text>,</xsl:text>
    <xsl:value-of select="normalize-space(first)" />
  </xsl:template>

</xsl:stylesheet>

Input:

<employees>
  <employee hireDate="09/01/1998">
    <last>A</last>
    <first>B</first>
    <salary>95000</salary>
  </employee>
  <employee hireDate="     04/23/1999">
    <last>C</last>
    <first>D</first>
    <salary>100000</salary>
  </employee>
</employees>