<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="container">
			<h2 class="tna__title tna__title--main">
				<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
			</h2>
			<div class="row">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News">
		<div class="col-md-6 item">
			<figure>
				<div class="img-box">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
					<div class="title">
						<p>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</p><span>(<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>)</span>
					</div>
				</div>
				<figcaption>
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					<a class="btn btn-grad">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="target"></xsl:value-of>
						</xsl:attribute>
						Chi tiết
					</a>
				</figcaption>
			</figure>
		</div>
	</xsl:template>

</xsl:stylesheet>