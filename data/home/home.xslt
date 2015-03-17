<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
      <ol>
      <xsl:for-each select="home/paragraph">
        <p>
          <xsl:value-of select="current()" />
        </p>
      </xsl:for-each>
      </ol>
  </xsl:template>
</xsl:stylesheet>