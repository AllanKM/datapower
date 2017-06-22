<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    <xsl:template match="*">
        <xsl:element name="{local-name()}">
            <xsl:apply-templates select="@*|node()"/>
        </xsl:element>
    </xsl:template>
    <xsl:template match="@*">
        <xsl:attribute name="{local-name()}">
            <xsl:value-of select="."/>
        </xsl:attribute>
    </xsl:template>
    <xsl:template match="comment() | processing-instruction()">
        <xsl:copy/>
    </xsl:template>
</xsl:stylesheet>

Input:
<foo xmlns="A" x="1">
    <bar y="2">
        <baz z="3"/>
    </bar>
    <B:a-special-element xmlns:B="B"/>
</foo>