<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="location_route_2" />
  <xsl:param name="location_route_1" />
  <xsl:param name="location_route_0" />   

  <xsl:template match="/">
      <h1 class="block-heading">SYP Challenge 2013</h1>
      <div class="row">
        <div class="col-md-6">    
          <h3>The SYP challenge</h3>
          <p> 
            <xsl:value-of select="/root/sypchallenge/introduction" />
          </p>
          <br/>
          <p class="lead text-center">
            £<xsl:value-of select="/root/sypchallenge/raised" /> raised!
          </p>
        </div>
        <div class="col-md-6">
          <br/>
          <br/>
          <img src="img/sponsors/cheque.jpg" alt="" class="img-responsive"/>
          <p class="caption">Noel Lightfoot, Secretary of the SYP Sailing Section, and Colin Lightfoot, the Chairman, presenting Amy Hebdon, the area Fundraising Manager for Macmillan, with a cheque for £16,000.</p>
        </div>
      </div>
      <h2 class="block-heading">Teams</h2>
      <div class="widget widget-small">
          <table class="table table-striped">
            <thead>
                <th>Region</th>
                <th>Teams</th>
            </thead>
            <tbody>          
                <xsl:for-each select="/root/sypchallenge/teams/region"> 
                  <tr>
                    <td>
                      <xsl:element name="a">
                          <xsl:attribute name="href">
                              <xsl:value-of select="website"/>
                          </xsl:attribute>
                          <xsl:value-of select="@name" />
                      </xsl:element> 
                    </td>                  
                    <td>
                      <xsl:for-each select="teamname">  
                        <p class="small"> <xsl:value-of select="current()" /></p> 
                      </xsl:for-each>  
                    </td>
                  </tr>
                </xsl:for-each>  
            </tbody>
          </table>
        </div>

        <h2 class="block-heading">The challenge</h2>

        <p>Crews assembled in Hamble on Sunday Night / Monday morning and enjoyed a gentle sail to East Cowes where they had supper in the Lifeboat pub, and exchanged sailing stories. 

        The race began off Cowes at 0600 Tuesday morning, just as it was getting light. The teams sailed close hauled in a north-westerly force 3-4, making excellent ground with a strong ebb tide and most teams had rounded the needles by 0730. Having gybed around the needles it was a dead run towards St Catherine's Lighthouse on the southern tip of the Island. All yachts then enjoyed an exhilarating broad reach to Bembridge Ledge before beating close inshore past Ryde, Wooton and Osborne to keep out of the flood tide. The first yacht crossed the finish line at 1336, taking just 7 hours and 36 minutes to circumnavigate the Island. All yachts finished safely. 

        A presentation evening took place on Tuesday Evening at the prestigious Royal Corinthian Yacht Club, West Cowes.

        Each team was entirely funded by the crew, meaning that all funds raised went directly to Macmillan.</p>

        <h2 class="block-heading">Winners</h2>        
        <div class="row">
          <xsl:for-each select="/root/sypchallenge/competitions/competition">  
            <div class="col-md-4">
              <h2><xsl:value-of select="@name" /></h2>
              <ol>
                <xsl:for-each select="team">  
                    <li><xsl:value-of select="current()" /></li>            
                </xsl:for-each>  
              </ol>
            </div>
          </xsl:for-each>  
        </div>

        <h2 class="block-heading">Sponsors</h2>   

        <p>The following are proud to sponsor the event, enabling more of the funds raised to go directly to Macmillan Cancer Support</p>
        
        <xsl:for-each select="/root/sypchallenge/sponsors/sponsor">  
          <h3>
            <xsl:element name="a">
                <xsl:attribute name="href">
                    <xsl:value-of select="website" />
                </xsl:attribute>
                <xsl:value-of select="name" />
            </xsl:element> 
          </h3>
          <div class="row">
            <div class="col-md-9">
              <p>
                 <xsl:value-of select="description" />
               </p> 
             </div>
             <div class="col-md-3">
              <xsl:element name="img">
                  <xsl:attribute name="src">
                      <xsl:value-of select="image" />
                  </xsl:attribute>
                  <xsl:attribute name="class">
                      img-responsive
                  </xsl:attribute>
              </xsl:element> 
            </div>
          </div>            
        </xsl:for-each>  
  </xsl:template>
</xsl:stylesheet>
