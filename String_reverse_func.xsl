<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/*">
   <xsl:value-of select="reverse(*)/string(.)" separator="&#xA;"/> <!--  A Simple Technique for Adding Whitespace to Text Output:
                                                                                              //&#xA;--->values seperated with newlines 
                                                                                             //&#x9;---->values seperated with tabs Ex:a      x      c      z
                                                                                             //&#x20;----->values seperated with spaces Ex: a x c z  -->
<!--Here, sepeator is an attribute-->
  </xsl:template>
</xsl:stylesheet>

Input:

<items>
    <item>a</item>
    <item>x</item>
    <item>c</item>
    <item>z</item>
</items>