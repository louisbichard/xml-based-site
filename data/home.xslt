<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
  	<h1>Welcome,</h1>
      <xsl:for-each select="root/home/paragraph">
        <p class="lead">
          <xsl:value-of select="current()" />
        </p>
      </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>