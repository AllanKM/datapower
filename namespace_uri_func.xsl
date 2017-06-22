<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:head="http://www.domain.com/namespace/header">
  <xsl:output method="xml" indent="yes" />
   <xsl:template match="head:header">
    <xsl:apply-templates select="head:header" />
      The namespace URI is:
    <xsl:value-of select="namespace-uri()" />
  </xsl:template>
</xsl:stylesheet>

Input:

<?xml version="1.0" encoding="utf-8"?>
  <head:header xmlns:head="http://www.domain.com/namespace/header">
 <emailList>
    <title>Email List</title>
    <maintainer>Joe</maintainer>
     <person type="work" id="p002">
    <name>person2</name>
    <email>p@hotmail.com</email>
  </person>
  </emailList>
  </head:header>