<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin Zone-->
	<xsl:template match="/">
		<div class="row">
			<div class="col-12">
				<h1 class="tna__title tna__title--extra-3">
					<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
				</h1>
				<a class="nav__toogle" href="javascript:void(0)">Danh mục
				</a>
				<nav>
					<ul>
						<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
					</ul>
				</nav>
			</div>
		</div>
	</xsl:template>

	<!--Begin Zone Child-->
	<xsl:template match="Zone">
		<!--item-->
		<li>
			<!-- Active -->
			<!-- URL -->
			<a>
				<!-- Active -->
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

</xsl:stylesheet>