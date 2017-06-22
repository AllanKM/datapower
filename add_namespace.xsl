<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">

<xsl:template match="*">
<xsl:element name="{local-name()}" namespace="A" >
            <xsl:copy-of select="attribute::*"/>
            <xsl:apply-templates />
        </xsl:element>
      </xsl:template>

    <xsl:template match="a-special-element">
        <B:a-special-element xmlns:B="B">
            <xsl:value-of select="."/>
        </B:a-special-element>
    </xsl:template>

</xsl:stylesheet>

Input:
<?xml version="1.0" encoding="UTF-8"?>
<foo x="1">
    <bar y="2">
        <baz z="3"/>
    </bar>
    <a-special-element/>
</foo>