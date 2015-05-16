<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="location_route_3" />
    <xsl:param name="location_route_2" />
    <xsl:param name="location_route_1" />
    <xsl:param name="location_route_0" />
    <xsl:template match="/">
        <h1>GALLERY</h1>
        <div class="row">
            <div class="col-md-4">
                <p>
                    <strong> Month: </strong>
                    <a href="#gallery/september">
                        <xsl:attribute name="class">
                            <xsl:if test="$location_route_1 = 'september'">
                                currently_filtered
                            </xsl:if>
                        </xsl:attribute>
                        September
                    </a> &#160;
                </p>
            </div>
            <div class="col-md-4">
                <p>
                    <strong> Year: </strong>
                    <a href="#gallery/none/2012">
                        <xsl:attribute name="class">
                            <xsl:if test="$location_route_2 = '2012'">
                                currently_filtered
                            </xsl:if>
                        </xsl:attribute>
                        2012
                    </a> &#160;
                    <a href="#gallery/none/2015">
                        <xsl:attribute name="class">
                            <xsl:if test="$location_route_2 = '2015'">
                                currently_filtered
                            </xsl:if>
                        </xsl:attribute>
                        2015</a> &#160;
                </p>
            </div>
            <div class="col-md-4">
                <p>
                    <strong> Location: </strong>
                    <a href="#gallery/none/none/greece">
                        <xsl:attribute name="class">
                            <xsl:if test="$location_route_3 = 'greece'">
                                currently_filtered
                            </xsl:if>
                        </xsl:attribute>
                        Greece
                    </a> &#160;
                </p>
            </div>
        </div>
        <hr class="large" />
        <xsl:for-each select="/root/images/img">
            <xsl:if test="
                (
                    string($location_route_1) 
                        and 
                    $location_route_1 = @month
                )
                or
                (
                    $location_route_0
                )
                ">
                <div class="row">
                    <div class="col-md-8">
                        <img class="img-responsive" alt="">
                        <xsl:attribute name="src">
                            <xsl:value-of select="@filepath"></xsl:value-of>
                        </xsl:attribute>
                        </img>
                    </div>
                    <div class="col-md-4">
                        <xsl:if test="@month and @year">
                            <p>
                                <strong>Date:</strong> &#160;
                                <xsl:value-of select="@month"></xsl:value-of>, &#160;
                                <xsl:value-of select="@year"></xsl:value-of>
                            </p>
                        </xsl:if>
                        <p>
                            <strong>Location:</strong> &#160;
                            <xsl:value-of select="@location"></xsl:value-of>
                        </p>
                    </div>
                </div>
                <br/>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>