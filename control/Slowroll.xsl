<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:y2="http://www.suse.com/1.0/yast2ns"
    xmlns:config="http://www.suse.com/1.0/configns">

    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

    <!-- Identity transform: Copy all nodes and attributes as they are by default -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <!-- Modify external_sources_link -->
    <xsl:template match="y2:external_sources_link">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:text>https://download.opensuse.org/YaST/Repos/openSUSE_Slowroll_Servers.xml</xsl:text>
        </xsl:copy>
    </xsl:template>

    <!-- Update repo-update -->
    <xsl:template match="y2:extra_url[y2:alias='repo-update']/y2:baseurl">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:text>http://download.opensuse.org/update/slowroll/repo/oss/</xsl:text>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="y2:extra_url[y2:alias='repo-update']/y2:name">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:text>openSUSE-Slowroll-Update</xsl:text>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="y2:extra_url[y2:alias='repo-update']/y2:priority">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:text>80</xsl:text>
        </xsl:copy>
    </xsl:template>

    <!-- Update repo-oss -->
    <xsl:template match="y2:extra_url[y2:alias='repo-oss']/y2:baseurl">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:text>http://download.opensuse.org/slowroll/repo/oss/</xsl:text>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="y2:extra_url[y2:alias='repo-oss']/y2:name">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:text>openSUSE-Slowroll-Oss</xsl:text>
        </xsl:copy>
    </xsl:template>

    <!-- Update repo-non-oss -->
    <xsl:template match="y2:extra_url[y2:alias='repo-non-oss']/y2:baseurl">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:text>http://download.opensuse.org/slowroll/repo/non-oss/</xsl:text>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="y2:extra_url[y2:alias='repo-non-oss']/y2:name">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:text>openSUSE-Slowroll-Non-Oss</xsl:text>
        </xsl:copy>
    </xsl:template>

    <!-- Update repo-debug -->
    <xsl:template match="y2:extra_url[y2:alias='repo-debug']/y2:baseurl">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:text>http://download.opensuse.org/debug/slowroll/repo/oss/</xsl:text>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="y2:extra_url[y2:alias='repo-debug']/y2:name">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:text>openSUSE-Slowroll-Debug</xsl:text>
        </xsl:copy>
    </xsl:template>

    <!-- Update repo-source -->
    <xsl:template match="y2:extra_url[y2:alias='repo-source']/y2:baseurl">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:text>http://download.opensuse.org/source/slowroll/repo/oss/</xsl:text>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="y2:extra_url[y2:alias='repo-source']/y2:name">
        <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:text>openSUSE-Slowroll-Source</xsl:text>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>