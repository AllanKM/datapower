<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<body>
  <xsl:apply-templates/>
</body>
</xsl:template>

<xsl:template match="food_list">
  
    <xsl:for-each select="food_item[position() = 3]">  
    
    
      <xsl:value-of select="substring-after('Cabbage is my favourite food', 'Cabbage')"/>
      
    </xsl:for-each>
  
</xsl:template>

</xsl:stylesheet>

Input:

<?xml version="1.0"?>
<food_list>
  <food_item type="vegetable">
    <name>Agar</name>
  </food_item>
  <food_item type="vegetable">
    <name>Asparagus</name>
  </food_item>
  <food_item type="vegetable">
    <name>Cabbage</name>
  </food_item>
  </food_list>



