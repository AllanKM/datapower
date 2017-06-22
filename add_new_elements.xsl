<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
 
   <xsl:template match="library/*">
    <xsl:copy>
      <xsl:element name="type">
        <xsl:value-of select="name(.)"/>
      </xsl:element>
 
      <xsl:call-template name="copy-children"/>
    </xsl:copy>
  </xsl:template>
   
  <xsl:template name="copy-children">
    <xsl:copy-of select="./*"/>
  </xsl:template>
 
   <xsl:template match="node()|@*">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>

Input:
<library>
  <book>
    <title>Book of Haunting</title>
    <author>Renold</author>
  </book>
  <magazine>
    <title>Kerala Tourism</title>
  </magazine>
</library>

s