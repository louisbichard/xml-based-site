<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="location_route_2" />
  <xsl:param name="location_route_1" />
  <xsl:param name="location_route_0" />   

  <xsl:template match="/">
    <div class="row">
      <div class="col-md-6">
        <h1>Heading 1</h1>
        <h2>Heading 2</h2>
        <h3>Heading 3</h3>
        <h4>Heading 4</h4>
        <h5>Heading 5</h5>  
      </div>
      <div class="col-md-6">
        <h1 class="block-heading">Heading 1</h1>
        <h2 class="block-heading">Heading 2</h2>
        <h3 class="block-heading">Heading 3</h3>
        <h4 class="block-heading">Heading 4</h4>
        <h5 class="block-heading">Heading 5</h5>  
      </div>
    </div>
      <hr/>
      <p class="lead">Lead text!</p>
      <p class="lead">  
        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam odio explicabo, eligendi nihil placeat earum veritatis! Minus ut harum aperiam facilis, pariatur quia, odio eum et error, libero omnis distinctio!
      </p>

      <hr/>
      <p>Paragraph text: </p>
      <p>  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam odio explicabo, eligendi nihil placeat earum veritatis! Minus ut harum aperiam facilis, pariatur quia, odio eum et error, libero omnis distinctio!</p>
  </xsl:template>
</xsl:stylesheet>
