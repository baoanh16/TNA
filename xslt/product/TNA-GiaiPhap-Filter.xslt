<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<div class="row solution-title">
			<div class="col-12">
				<h2 class="tna__title tna__title--main">
					<xsl:value-of select="/ProductFilter/ZoneTitle"></xsl:value-of>
				</h2>
				<div class="form-search">
					<div class="ajaxfilterresponse form-search-wrap">
						<input type="text" class="recruitment-searchbox">
						<xsl:attribute name="value">
							<xsl:value-of select="/ProductFilter/Keyword" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						</input>
						<a class="btn-search recruitment-searchbutton" href="#">
							<xsl:attribute name="data-url">
								<xsl:value-of select="UrlWithoutKeyword" disable-output-escaping="yes"></xsl:value-of>
							</xsl:attribute>
							<span class="lnr lnr-magnifier"></span>
						</a>
					</div>
				</div>
				<!-- <div class="form-search">
					<input type="text" class="recruitment-searchbox">
					<xsl:attribute name="value">
						<xsl:value-of select="Keyword" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					</input>
					<a class="btn-search recruitment-searchbutton" href="#">
						<xsl:attribute name="data-url">
							<xsl:value-of select="/ProductList/UrlWithoutKeyword" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						<span class="lnr lnr-magnifier"></span>
					</a>
				</div> -->
			</div>
		</div>

	</xsl:template>
</xsl:stylesheet>