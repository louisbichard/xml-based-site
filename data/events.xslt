<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="location_route_2" />
  <xsl:param name="location_route_1" />
  <xsl:param name="location_route_0" />   

  <xsl:template match="/">
      <xsl:for-each select="root/event">
            <xsl:if test="$location_route_1 and start_date/year = $location_route_1 and start_date/month = $location_route_2" >

            <h3> <xsl:value-of select="title" /> </h3>
            <p>
              <strong> Date: </strong>
               <xsl:value-of select="start_date/date" />&#160;
               <xsl:value-of select="start_date/month" />&#160;<xsl:value-of select="start_date/year" />

              <xsl:if test="end_date">
                - 
                <xsl:value-of select="end_date/date" />&#160;<xsl:value-of select="end_date/month" />&#160;<xsl:value-of select="end_date/year" />
               </xsl:if>
           </p>
           <p> 
            <strong> 
              Places left: 
            </strong>
              <xsl:value-of select="availability" />
              
              <xsl:if test="availability = 0">
                <p class="bg-danger">Unfortunately this event is now fully booked</p>
              </xsl:if>


              <xsl:if test="availability > 2">
                <xsl:if test="availability > 5">
                  <p class="bg-info">There is plenty of space mate</p>
                </xsl:if>
                <xsl:if test="availability &gt; 5">
                  <p class="bg-warning"> There is limited availability</p>
                </xsl:if>                
              </xsl:if>

           </p>
            <p> 
            <strong> 
              Price:  
            </strong>
              &#163;<xsl:value-of select="price" />
           </p>
            <p> 
               <xsl:value-of select="description" />
           </p>
           <hr></hr>
           </xsl:if> 
      </xsl:for-each>      
  </xsl:template>
</xsl:stylesheet>
