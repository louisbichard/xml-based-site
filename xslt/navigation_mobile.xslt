<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="location_route_2" />
    <xsl:param name="location_route_1" />
    <xsl:param name="location_route_0" />
    <xsl:template match="/">
        <xsl:for-each select="root/navigation">
            <ul class="nav-list">
                <xsl:for-each select="item">
                    <!-- DRAW ALL NAVIGATION NODES  -->
                    <li>
                        <xsl:attribute name="class">
                            main-nav-tab
                            <!-- ONLY SHOW THE TOP NAV AS ACTIVE, IF THERE AREN'T NESTED ACTIVE TABS -->
                            <xsl:if test="@route = $location_route_0">active</xsl:if>
                            <xsl:if test="@isdropdown">dropdown</xsl:if>
                        </xsl:attribute>
                        <a href="#{@route}">
                            <xsl:value-of select="@title" />
                        </a>
                        &#160;
                        <xsl:if test="@icon">
                            <i class="fa fa-{@icon}"></i>
                        </xsl:if>
                    </li>
                    <!-- SUB ROUTES FOR EVENTS -->
                    <xsl:if test="@route = 'events'">
                        <ul>
                            <xsl:for-each select="/root/months/month">
                                <li>
                                    <xsl:attribute name="class">
                                        sub-nav-tab
                                        <xsl:if test="@name = $location_route_2">active</xsl:if>
                                    </xsl:attribute>
                                    <a><xsl:attribute name="href">#events/2015/<xsl:value-of select="@name" /></xsl:attribute><xsl:value-of select="@name" />&#160; 2015
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