<?xml version='1.0'?>
<xsl:stylesheet version="1.0"           

xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="xml"   
     omit-xml-declaration="yes"/>

  <xsl:template match="/">
    <body>
       <xsl:apply-templates select="//person"/>
    </body>
  </xsl:template>

  <xsl:template match="family">
     <xsl:if test="starts-with(name, 'p')">
       
        <xsl:value-of select="name"/> 
        <xsl:value-of select="relation"/>
         <xsl:value-of select="age"/>.
       </xsl:if>
  </xsl:template>

</xsl:stylesheet>

Input:

<?xml version="1.0"?>

<family>
  <person>
     <name>priya</name>
     <relation>didi</relation>
     <age>100</age>
  </person>
  <person>
     <name>santosh</name>
     <relation>bhayya</relation>
     <age>15</age>
  </person>
 </family>
