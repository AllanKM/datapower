<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output omit-xml-declaration="yes" indent="yes"/>
 <xsl:strip-space elements="*"/>

 <xsl:template match="book">
   <xsl:value-of select=
   "concat('book ', ., ' = ', count(preceding::book) +1, '&#xA;')"/>
 </xsl:template>
</xsl:stylesheet>

Input:

<books>
  <cat>
    <book>a</book>
    <book>b</book>
  </cat>
  <cat>
    <book>c</book>
    <book>d</book>
    <book>e</book>
  </cat>
</books>


