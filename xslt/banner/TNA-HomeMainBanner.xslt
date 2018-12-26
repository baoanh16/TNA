<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-banner-1">
			<article class="banners-list">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
					</div>
					<div class="swiper-pagination"></div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="Banner">
		<div class="swiper-slide">
			<a>
				<xsl:attribute name="target">
					<xsl:value-of select="target"></xsl:value-of>
				</xsl:attribute>
				<xsl:if test="Url != ''">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
				</xsl:if>
				<div class="slide-inner">
					<div class="slide-img">
						<img class="img-fluid">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<div class="slide-title">
						<div class="container">
							<div class="row">
								<div class="col">
									<h2>
										<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
									</h2>
								</div>
							</div>
						</div>
					</div>
				</div>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>