<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="service-detail">
				<article>
					<div class="container">
						<h2 class="tna__title tna__title--main">
							<xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of>
						<br/><span>(<xsl:value-of select="/NewsDetail/SubTitle" disable-output-escaping="yes"></xsl:value-of>)</span></h2>
						<div class="row no-gutters briefContent">
							<div class="col-lg-6">
								<div class="content">
									<xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
								</div>
							</div>
							<div class="col-lg-5 offset-lg-1">
								<div class="img">
									<xsl:apply-templates select="/NewsDetail/NewsImages"></xsl:apply-templates>
								</div>
							</div>
						</div>
						<div class="row no-gutters fullContent">
							<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</article>
			</section>
	</xsl:template>

	<xsl:template match="NewsImages">
		<xsl:if test="position()=2">
			
									<img>
									<xsl:attribute name="src">
										<xsl:value-of select="ImageUrl"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="alt">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
									</img>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>