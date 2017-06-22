<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes" />
  <xsl:template match="b">
  <xsl:value-of
    select="concat(a[1]/@Name, ',', a[2]/@Name, ',', a[3]/@Name)"/>
</xsl:template>

</xsl:stylesheet>

Input:
<b>
<a Name="priya">
</a>
<a Name="raj">
</a>
<a Name="kerala">
</a>
</b>
