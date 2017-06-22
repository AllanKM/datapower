<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <xsl>
      <punch>

        <xsl:value-of select="string-to-codepoints(('Hello World!'))" />
     
      </punch>
    </xsl>
  </xsl:template>

</xsl:stylesheet> 