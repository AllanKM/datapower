<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" encoding="utf-8" />
    <xsl:strip-space elements="*" />

    <xsl:template match="@*|node()">
        <xsl:if test=".!=''">
            <xsl:copy>
                <xsl:apply-templates select="@*|node()"/>
            </xsl:copy>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>

Input:

<?xml version="1.0" encoding="utf-8" ?>
<Persons>
  <Person>
    <Name>user1</Name>
    <Tel />
    <Mobile>123</Mobile>
  </Person>
  <Person>
    <Name>user2</Name>
    <Tel>456</Tel>
    <Mobile />
  </Person>
  <Person>
    <Name />
    <Tel></Tel>
    <Mobile />
  </Person>
  <Person>
    <Name></Name>
    <Tel />
    <Mobile />
  </Person>
</Persons>