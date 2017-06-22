<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <xsl>
      <punch>

        <xsl:value-of select="codepoints-to-string((72, 101, 108, 108, 111,32, 87, 111, 114, 108, 100, 33))" />
     
      </punch>
    </xsl>
  </xsl:template>

</xsl:stylesheet> 

