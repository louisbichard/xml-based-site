<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="location_route_2" />
  <xsl:param name="location_route_1" />
  <xsl:param name="location_route_0" />   

  <xsl:template match="/">
      <h1 class="block-heading">Committee</h1>
      <xsl:for-each select="/root/committee/member">  
          <h2>
            <xsl:value-of select="@role" />
            - 
            <xsl:value-of select="@name" />            

          </h2>          
          <div class="row">
            <div class="col-md-3">
              <img class="img-responsive">
                  <xsl:attribute name="src">../img/committee/<xsl:value-of select="@img" />.jpg</xsl:attribute>
              </img>
            </div>
            <div class="col-md-9">
              <p><xsl:value-of select="current()" /></p>    
            </div>
          </div>          
        </xsl:for-each>  
  </xsl:template>
</xsl:stylesheet>
