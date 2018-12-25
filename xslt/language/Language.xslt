<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="current-lang">

			<div class="img">
				<xsl:apply-templates select="/LanguageList/Language" mode="Nav"></xsl:apply-templates>
			</div>
		</div>
		<span class="lnr lnr-chevron-down"></span>
		<ul>
			<xsl:apply-templates select="/LanguageList/Language" mode="List"></xsl:apply-templates>
		</ul>
	</xsl:template>

	<xsl:template match="Language" mode="Nav">
		<img style="display: none">
		<xsl:if test="IsActive='true'">
			<xsl:attribute name="style">
				<xsl:text>display: block</xsl:text>
			</xsl:attribute>
		</xsl:if>
		<xsl:attribute name="src">
			<xsl:value-of select="ImageUrl"></xsl:value-of>
		</xsl:attribute>
		</img>
	</xsl:template>

	<xsl:template match="Language" mode="List">
		<li>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				</img>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>