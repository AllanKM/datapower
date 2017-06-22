<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:param name="selectedStandard">Development</xsl:param>
<xsl:key name="language-by-standard" match="language" use="standards/standard/@id" />

<xsl:template match="/" >
                   <xsl:value-of select="$selectedStandard"/>
                   
                        <xsl:for-each select="key('language-by-standard', programming/standards/standard[.=$selectedStandard]/@id)" >
                            <xsl:value-of select="l" />
                           
                        </xsl:for-each>
        </xsl:template>

</xsl:stylesheet>

Input:
<?xml version="1.0" standalone="no"?>
<?xml-stylesheet type="text/xsl" href="standards_XSL.xsl"?>

<programming>
  <languages>
    <language id="1">
      <l>C</l>
      <standards>
        <standard id="3" />
         </standards>
       </language>
    <language id="2">
      <l>C++</l>
       </language>
    <language id="3">
      <l>C#</l>
       <standards>
        <standard id="3" />
         </standards>
       </language>
    <language id="4">
      <l>Datapower</l>
      <standards>
        <standard id="3" />
         </standards>
       </language>
  </languages>
<standards>
     <standard id="3">Development</standard>
     </standards>
</programming>