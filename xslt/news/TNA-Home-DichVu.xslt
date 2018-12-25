<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<div class="container">
			<h2 class="tna__title tna__title--extra-2">
				<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
			</h2>
			<div class="wrap-service">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
			<ul class="controls" id="home3-controls" aria-label="Carousel Navigation" tabindex="0">
				<li class="prev" data-controls="prev" aria-controls="customize" tabindex="-1"><span class="lnr lnr-chevron-left"></span></li>
				<li class="next" data-controls="next" aria-controls="customize" tabindex="-1"><span class="lnr lnr-chevron-right"></span></li>
			</ul>
		</div>
	</xsl:template>

	<xsl:template match="News">
		<a>
		<xsl:attribute name="href">
			<xsl:value-of select="Url"></xsl:value-of>
		</xsl:attribute>
		<xsl:attribute name="target">
			<xsl:value-of select="target"></xsl:value-of>
		</xsl:attribute>
		<div class="service-item">
			<figure>
				<div class="boxzoom">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<figcaption>
					<h5>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h5>
				</figcaption>
			</figure>
		</div>
		</a>
	</xsl:template>
</xsl:stylesheet>