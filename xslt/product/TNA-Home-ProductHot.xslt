<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="container">
			<h2 class="tna__title tna__title--extra-2">
				<xsl:value-of select="/ProductList/ModuleTitle"></xsl:value-of>
			</h2>
			<div class="row">
				<div class="col-12">
					<div class="wrap-product">
						<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>

					</div>
					<ul class="controls" id="home4-controls" aria-label="Carousel Navigation" tabindex="0">
						<li class="prev" data-controls="prev" aria-controls="customize" tabindex="-1"><span class="lnr lnr-chevron-left"></span></li>
						<li class="next" data-controls="next" aria-controls="customize" tabindex="-1"><span class="lnr lnr-chevron-right"></span></li>
					</ul>
					<div class="seemore"><a href="#">Xem tất cả</a></div>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Product">
		<div class="project-item">
			<div class="tna-product-item">
				<figure>
					<div class="boxzoom">
						<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="target"></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
						</a>
					</div>
					<figcaption>
						<h4>
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="target">
									<xsl:value-of select="target"></xsl:value-of>
								</xsl:attribute>

								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</a>
						</h4>
						<div class="code">
							<xsl:value-of select="Code"></xsl:value-of>
						</div>
						<div class="price">
							<xsl:value-of select="Price"></xsl:value-of>
						</div>
					</figcaption>
				</figure>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>