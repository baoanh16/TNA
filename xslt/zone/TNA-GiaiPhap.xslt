<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="container">
			<h2 class="tna__title tna__title--main">
				<xsl:value-of select="/ZoneList/Title"></xsl:value-of>
			</h2>
			<div class="form-search">
				<input type="text" />
				<button>Submit</button>
			</div>
			<div class="row page-list">
				<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

			</div>
		</div>
	</xsl:template>

	<xsl:template match="Zone">
		<div class="col-md-4 col-6 item">
			<figure>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="target"></xsl:value-of>
					</xsl:attribute>
					<div class="img-box">
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
				</a>
				<figcaption>
					<h4>
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="target"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title"></xsl:value-of>
						</a>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h4>
				</figcaption>
			</figure>
		</div>
	</xsl:template>

</xsl:stylesheet>