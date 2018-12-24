<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="container">
			<h2 class="tna__title tna__title--extra-3">
				<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
			</h2>
			<div class="row">
				<div class="col-12">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Vị trí ứng tuyển</th>
								<th scope="col">Số lượng ứng tuyển</th>
								<th scope="col">Địa điểm</th>
								<th scope="col">Hạn nộp hồ sơ</th>
							</tr>
						</thead>
						<tbody>
							<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News">
		<tr>
			<th scope="row">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="target"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title"></xsl:value-of>
				</a>
			</th>
			<td>
				<xsl:value-of select="SubTitle"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="CreatedDate"></xsl:value-of>
			</td>
		</tr>
	</xsl:template>

</xsl:stylesheet>