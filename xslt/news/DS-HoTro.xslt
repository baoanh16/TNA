<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="row solution-title">
			<div class="col-12">
				<h2 class="tna__title tna__title--main">
					<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
				</h2>
			</div>
		</div>
		<div class="textbox">
			<div class="title">
				<h2 class="tna__title tna__title--main">
					<xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of>
					<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
				</h2>
			</div>
			<div class="briefContent">
				<xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
			<div class="fullContent">
				<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News">
		<!-- <div class="faq-block">
				<h3>
				<xsl:value-of select="Title"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</h3>
			</div>
			<div class="faq-answer">
				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>

			</div>
		</div> -->
	</xsl:template>
</xsl:stylesheet>