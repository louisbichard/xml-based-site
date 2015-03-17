<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
      <xsl:for-each select="home/event">
            <h3> <xsl:value-of select="title" /> </h3>
            <p>
              <strong> 
              <xsl:value-of select="date" />
            </strong>
           </p>
           <p> 
            <strong> 
              Places left: <xsl:value-of select="availability" />
            </strong>
           </p>
            <p> 
            <strong> 
              Price: &#163;<xsl:value-of select="price" />
            </strong>
           </p>
            <p> 
               <xsl:value-of select="description" />
           </p>
           <hr></hr>
      </xsl:for-each>      
  </xsl:template>
</xsl:stylesheet>
