<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">
  <xsl:output method="xml" omit-xml-declaration="yes" indent="no" />
  
  <xsl:template match="employees">
    A. Number of employees:
    <xsl:value-of select="count(employee)" />
    B. Number of officers:
    <xsl:value-of select="count(employee[@officer='yes'])" />
    C. Number of employees without 'officer' attribute set:
    <xsl:value-of select="count(employee[not(@officer)])" />
    D. Number of comments in 'employees' element:
    <xsl:value-of select="count(//comment())" />
  </xsl:template>
  <xsl:template match="employee" />
</xsl:stylesheet>

Input:
<employees>
  <employee hireDate="04/23/1999" officer="yes">
    <last>A</last>
    <first>B</first>
    <salary>1000</salary>
  </employee>

  <employee hireDate="09/01/1998" officer="no">
    <last>C</last>
    <first>D</first>
    <salary>95000</salary>
  </employee>

  <employee hireDate="08/20/2000">
    <last>E</last>
    <first>F</first>
    <salary>8900</salary>
  </employee>
</employees>

