<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
      <xsl:for-each select="root/navigation">
        	<xsl:for-each select="item">
	          <p>           
		          <accordion>
	                    <accordion-group is-open="status.open">
	                        <accordion-heading>
	                            <a href="#{route}"> <xsl:value-of select="title" /> </a>
	                        </accordion-heading>
	                        Some content
	                    </accordion-group>
	                </accordion>
                </p>
          </xsl:for-each>
      </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>