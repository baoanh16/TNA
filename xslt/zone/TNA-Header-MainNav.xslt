<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<ul class="nav-list">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</ul>
	</xsl:template>

	<xsl:template match="Zone">
		<li class="nav-item">
			<xsl:if test="count(Zone)>0">
				<xsl:attribute name="class">
					<xsl:text>nav-item child</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<!-- <xsl:if test="IsActive='true' and count(Zone)>0">
				<xsl:attribute name="class">
					<xsl:text>nav-item child active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="IsActive='true' and count(Zone)=0">
				<xsl:attribute name="class">
					<xsl:text>nav-item active</xsl:text>
				</xsl:attribute>
			</xsl:if> -->
				
			<a class="nav-link">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
			
			<xsl:if test="count(Zone)>0">
				<ul class="nav-child">
					<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
				</ul>
			</xsl:if>
		</li>
	</xsl:template>


	<xsl:template match="Zone" mode="Child">
		<li class="nav-child-item">
			<a class="nav-link">
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