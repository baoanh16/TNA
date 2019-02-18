<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="container">
						<h2 class="tna__title tna__title--extra-2">
							<xsl:value-of select="/BannerList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<div class="row">
							<div class="col-12">
								<div class="wrap-partner">
									<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
									
								</div>
								<ul class="controls" id="home6-controls" aria-label="Carousel Navigation" tabindex="0">
									<li class="prev" data-controls="prev" aria-controls="customize" tabindex="-1"><span class="lnr lnr-chevron-left"></span></li>
									<li class="next" data-controls="next" aria-controls="customize" tabindex="-1"><span class="lnr lnr-chevron-right"></span></li>
								</ul>
							</div>
						</div>
					</div>
	</xsl:template>

	<xsl:template match="Banner">
		<div class="partner-item" data-aos="zoom-in-up" data-aos-offset="-400" data-aos-delay="300" data-aos-duration="1000">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:if test="Url=''">
					<xsl:attribute name="href">
						<xsl:text>javascript:void(0)</xsl:text>
					</xsl:attribute>
				</xsl:if>
			<xsl:attribute name="target">
				<xsl:value-of select="target"></xsl:value-of>
			</xsl:attribute>
			<div class="item">
				<img class="lazyload">
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>