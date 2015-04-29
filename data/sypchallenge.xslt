<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="location_route_2" />
  <xsl:param name="location_route_1" />
  <xsl:param name="location_route_0" />   

  <xsl:template match="/">
      <h1 class="block-heading">SYP Challenge 2013</h1>
      <h3>What is the SYP challenge?</h3>
      <p> 
        <xsl:value-of select="/root/sypchallenge/introduction" />
      </p>
      <h3>How much was raised?</h3>
      <p class="lead">
        <xsl:value-of select="/root/sypchallenge/raised" />
      </p>
      <h2 class="block-heading">Teams</h2>
        
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
  </xsl:template>
</xsl:stylesheet>
