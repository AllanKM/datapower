<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes" />

  <xsl:template match="/">
    <xsl:element name="paragraph">

<xsl:attribute name="priority">medium</xsl:attribute>
   <xsl:apply-templates />
</xsl:element>r
 <xsl:element name="message">
<xsl:value-of select="."/>
    </xsl:element>
  </xsl:template>

</xsl:stylesheet>

Input:

<?xml version="1.0"?>
<?xml-stylesheet href="Transform.xslt" type="text/xsl"?>
<message>Message.</message>