<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="product-nav">
			<div class="canhcam-nav-3">
				<article class="navs-list">
					<h2>
						<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
					</h2>
					<nav>
						<ul>
							<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
						</ul>
					</nav>
				</article>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Zone">
		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
			<!-- <div class="collapse-btn">
				<em class="lnr lnr-chevron-down"></em>
			</div> -->
			<xsl:if test="count(Zone)>0">
				<div class="nav-sub">
					<xsl:if test="IsActive='true'">
						<xsl:attribute name="style">
							<xsl:text>display: block</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<ul>
						<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
					</ul>
				</div>
			</xsl:if>
		</li>
	</xsl:template>


	<xsl:template match="Zone" mode="Child">
		<li>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>