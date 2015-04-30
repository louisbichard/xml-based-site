<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:param name="location_route_1" />
<xsl:param name="location_route_0" />
  <xsl:template match="/">  


      <xsl:for-each select="root/navigation">
      	<ul class="nav-list">
        	<xsl:for-each select="item">  
	          		<li>
                    <xsl:attribute name="class">
                        main-nav-tab
                        <xsl:if test="route = $location_route_0">active</xsl:if>
                    </xsl:attribute>
	                   <a href="#{route}"> <xsl:value-of select="title" /> </a>
	                </li>
                  <xsl:if test="route = 'events'">
                  	<ul>
                    	<xsl:for-each select="/root/event">
	                    	<li class=".sub-nav-tab">
		                    	<a href="#events/{start_date/year}/{start_date/month}"> 
		                    		<xsl:value-of select="start_date/month" />&#160;<xsl:value-of select="start_date/year" /> 
      									</a>
      								</li>
                    	</xsl:for-each>
                    </ul>
                  </xsl:if>
          </xsl:for-each>
          </ul>
      </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>