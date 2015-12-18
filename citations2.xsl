<?xml version ="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:cito="http://purl.org/spar/cito/"
    xmlns:dc="http://purl.org/dc/elements/1.1/">

    <xsl:output method="xml" indent="yes"/>

    <xsl:variable name="baseURL">http://madata/rdf</xsl:variable>

    <xsl:template match="creator">
        <dc:creator>
            <xsl:copy-of select="$baseURL"/>/<xsl:value-of select="family"/><xsl:value-of select="substring(given, 1, 1)"/>
        </dc:creator>
    </xsl:template>

    <xsl:template match="publication|citation|eprint">
        <xsl:call-template name="pubOrCit" select="."/>
    </xsl:template>

    <xsl:template name='pubOrCit'>
        <rdf:Description>
            <xsl:attribute name="rdf:about">
                <xsl:value-of select="url"/>
            </xsl:attribute>
            <xsl:apply-templates select="./creators/creator"/>
            <dc:title>
                <xsl:value-of select="title"/>
            </dc:title>
            <xsl:for-each select="./publications/publication">
                <cito:citedBy>
                    <xsl:attribute name="rdf:resource">
                        <xsl:value-of select="url"/>
                    </xsl:attribute>
                </cito:citedBy>
            </xsl:for-each>
            <xsl:for-each select="./citations/citation">
                <cito:citedBy>
                    <xsl:attribute name="rdf:resource">
                        <xsl:value-of select="url"/>
                    </xsl:attribute>
                </cito:citedBy>
            </xsl:for-each>
        </rdf:Description>
    </xsl:template>

    <xsl:template match="data">
        <rdf:RDF>
            <xsl:apply-templates select="eprint"/>
            <xsl:apply-templates select="//publication"/>
            <xsl:apply-templates select="//citation"/>
        </rdf:RDF>
    </xsl:template>

</xsl:stylesheet>
