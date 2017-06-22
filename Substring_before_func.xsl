<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="4.0" indent="yes"/>
  <xsl:template match="neighbours">
    <html>
      <head>
        <title>Sorted planets</title>
        <style type="text/css">
          body { font-family: Verdana, Arial, sans-serif; font-size:12px;}
      </style>
      </head>
      <body>
        <h1>My sorted list of planets</h1>
        <xsl:apply-templates>
          <xsl:sort select="substring-before(meanTemp/text(), 'C')" order="ascending" data-type="number"/>
        </xsl:apply-templates>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

Input:

<?xml version="1.0" encoding="UTF-8"?>
<neighbours>
  <planet name="Venus">
    <description>
    description
    </description>
    <positionFromSun>2</positionFromSun>
    <diameter> 12104 km (7505 miles)</diameter>
    <moons> 0</moons>
    <meanTemp> 482C (900F)</meanTemp>
    <oneDay> 243.01 earth days</oneDay>
    <oneYear> 224.7 earth days</oneYear>
  </planet>
</neighbours>