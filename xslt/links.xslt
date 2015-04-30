<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="location_route_2" />
  <xsl:param name="location_route_1" />
  <xsl:param name="location_route_0" />   

  <xsl:template match="/">
      <h1 class="block-heading">Useful links</h1>
      <div class="useful-links">
        <div class="row">
          <div class="col-md-6">
            <div class="row">
              <div class="col-md-4">
                  <img class="img-responsive" src="img/links1/howellsail.png" alt=""/>
              </div>
              <div class="col-md-4">
                <img class="img-responsive" src="img/links1/marinetraffic.gif" alt=""/>
              </div>
              <div class="col-md-4">
                <img class="img-responsive" src="img/links1/policesailing.jpg" alt=""/>  
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          
        </div>
      </div>
  </xsl:template>
</xsl:stylesheet>
