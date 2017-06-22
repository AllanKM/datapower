<?xml version='1.0'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="xml"   
     omit-xml-declaration="yes"/>

  <xsl:template match="/">
    <body>
       <xsl:apply-templates select="//person"/>
    </body>
   
  </xsl:template>

  <xsl:template match="family">
     <xsl:if test="contains(name, 'relation')">
       
         <xsl:value-of select="name"/> 
         <xsl:value-of select="relation"/> 
         <xsl:value-of select="age"/>.
      
     </xsl:if>
  </xsl:template>

</xsl:stylesheet>

Input:

<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" 

href="contains.xsl"?>      
<family>
  <person>
     <name>priya</name>
     <relation>didi</relation>
     <age>100</age>
  </person>
  <person>
     <name>raj</name>
     <relation>uncle</relation>
     <age>150</age>
  </person>
  <person>
     <name>tshiamo</name>
     <relation>brother</relation>
     <age>80</age>
  </person>
  </family>
     
