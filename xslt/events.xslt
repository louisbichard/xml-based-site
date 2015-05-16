<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="location_route_2" />
    <xsl:param name="location_route_1" />
    <xsl:param name="location_route_0" />
    <xsl:param name="current_month" />
    <xsl:param name="current_year" />
    <xsl:template match="/">
        <xsl:comment>
            <!-- Assess to see whether any months and years are passed in the URL, if there are, run as individual month events page, else run the template as the core events page -->
        </xsl:comment>
        <xsl:choose>
            <xsl:when test="not($location_route_2)">
                <div class="row">
                    <div class="col-md-6">
                        <h2 class="block-heading">Events this May (2)</h2>
                        <div class="widget widget-small">
                            <xsl:for-each select="root/events/event">
                                <xsl:if test="start_date/month = $current_month and start_date/year = $current_year">
                                    <a href="#/events/2015/May">
                                        <h3>
                            <xsl:value-of select="start_date/date" /> - 
                            <xsl:value-of select="title" />
                          </h3>
                                    </a>
                                </xsl:if>
                            </xsl:for-each>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h2 class="block-heading">Nearly sold out!</h2>
                        <div class="widget widget-small">
                            <xsl:for-each select="root/events/event">
                                <xsl:if test="availability &lt; 5">
                                    <xsl:comment>
                                        <!-- 
                            TODO: Don't hardcode the date, get it from the XML
                          -->
                                    </xsl:comment>
                                    <a href="#/events/2015/May">
                                        <h3>
                            <xsl:value-of select="start_date/date" /> - 
                            <xsl:value-of select="title" />
                          </h3>
                                    </a>
                                </xsl:if>
                            </xsl:for-each>
                        </div>
                    </div>
                </div>
            </xsl:when>
            <xsl:otherwise>
                <xsl:for-each select="root/events/event">
                    <xsl:if test="$location_route_2">
                        <xsl:if test="$location_route_1 and start_date/year = $location_route_1 and start_date/month = $location_route_2">
                            <h3> <xsl:value-of select="title" /> 
                    <button OnClick="alert('Thank you for your booking');" class="btn pull-right btn-primary">
                      Book 
                      <i class="fa fa-book"></i>
                    </button>
                    <button OnClick="alert('Thank you for your booking');" class="btn pull-right btn-success">
                      Watch 
                      <i class="fa fa-eye"></i>
                    </button>
                  </h3>
                            <br/>
                            <div class="row">
                                <div class="col-md-4">
                                    <p class="text-center">
                                        <strong> Date: </strong>
                                        <xsl:value-of select="start_date/date" />&#160;
                                        <xsl:value-of select="start_date/month" />&#160;
                                        <xsl:value-of select="start_date/year" />
                                        <xsl:if test="end_date">
                                            -
                                            <xsl:value-of select="end_date/date" />&#160;
                                            <xsl:value-of select="end_date/month" />&#160;
                                            <xsl:value-of select="end_date/year" />
                                        </xsl:if>
                                    </p>
                                </div>
                                <div class="col-md-4">
                                    <p class="text-center">
                                        <strong> 
                          Price:  
                        </strong> &#163;
                                        <xsl:value-of select="price" />
                                    </p>
                                </div>
                                <div class="col-md-4">
                                    <xsl:if test="availability = 0">
                                        <p class="text-center bg-danger">Unfortunately this event is now fully booked
                                        </p>
                                    </xsl:if>
                                    <xsl:if test="availability > 2 and availability &gt; 5">
                                        <p class="text-center bg-info">Book now, places available (
                                            <xsl:value-of select="availability" />)
                                        </p>
                                    </xsl:if>
                                    <xsl:if test="availability &lt; 2 and availability != 0">
                                        <p class="text-center bg-warning"> Book soon, availability limited (
                                            <xsl:value-of select="availability" />)
                                        </p>
                                    </xsl:if>
                                </div>
                            </div>
                            <p>
                                <xsl:value-of select="description" />
                            </p>
                        </xsl:if>
                    </xsl:if>
                </xsl:for-each>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>