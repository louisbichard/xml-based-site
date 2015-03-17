<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
      <ol>
      <xsl:for-each select="navigation/item">
        <li>
          <a href="#{route}"> <xsl:value-of select="title" /> </a>
      </li>
      </xsl:for-each>
      </ol>
  </xsl:template>
</xsl:stylesheet>