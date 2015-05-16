<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:param name="location_route_1" />
<xsl:param name="location_route_0" />
  <xsl:template match="/">  
      <xsl:for-each select="root/training">
        <div class="row">
          <div class="col-md-6">
              <h2 class="accent-color block-heading">Introduction</h2>
              <xsl:for-each select="introduction/paragraph">  
                <p><xsl:value-of select="current()" /></p>
              </xsl:for-each>

              <h2 class="accent-color block-heading">Future training</h2>
              <xsl:for-each select="future/paragraph">  
                <p><xsl:value-of select="current()" /></p>
              </xsl:for-each>
          </div>
          <div class="col-md-6">
            <h2 class="accent-color block-heading">Courses</h2>
            <div class="widget widget-medium">
              <xsl:for-each select="course">  
                <h3><xsl:value-of select="name" /></h3>
                <xsl:for-each select="description/paragraph">                  
                    <p><xsl:value-of select="current()" /></p>
                </xsl:for-each>
                <div class="row">
                  <div class="col-md-3 col-md-offset-5">
                    <button OnClick="alert('Thank you for your booking');" class="btn btn-primary">
                          Book 
                          <i class="fa fa-book"></i>
                      </button>                      
                  </div>
                </div>         
                <hr class="large"/>       
              </xsl:for-each>
            </div>
          </div>
        </div>
    </xsl:for-each>      
  </xsl:template>
</xsl:stylesheet>