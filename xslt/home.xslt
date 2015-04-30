<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
  	<div class="text-center">
	  	<h1>Welcome to South Yorkshire Police Offshore Sailing</h1>
	  	<h3 class="cursive"> <xsl:value-of select="root/home/strapline" /> </h3>
  	</div>
  	<div class="row">
  		<div class="col-md-4">
  			<h2 class="text-center block-heading"> Who we are </h2> 
			<p> <xsl:value-of select="root/home/whoweare" /> </p>
  		</div>
  		<div class="col-md-4">
  			<h2 class="text-center block-heading"> What we do </h2> 
			<p> <xsl:value-of select="root/home/whatwedo" /> </p>
  		</div>
  		<div class="col-md-4">
  			<h2 class="text-center block-heading"> How we do it </h2> 
			<p> <xsl:value-of select="root/home/howwedoit" /> </p>
  		</div>
  	</div>

  	<h3> How much does it cost? </h3>

  	<p> <xsl:value-of select="root/home/costs" /> </p>

  	<h3> How do I get involved? </h3>

  	<p> <xsl:value-of select="root/home/contact" /> </p>
  	
      <xsl:for-each select="root/home/paragraph">
        <p>
          <xsl:value-of select="current()" />
        </p>
      </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>