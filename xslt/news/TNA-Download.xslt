<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<div class="container">
			<h2 class="tna__title tna__title--main">
				<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
			</h2>
			<div class="form-search">
				<input type="text" />
				<button>Submit</button>
			</div>
			<div class="table-responsive">
				<table>
					<thead>
						<tr>
							<th></th>
							<th><span>Ngày Đăng</span></th>
							<th><span>Tải về</span></th>
						</tr>
					</thead>
					<tbody>
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>

					</tbody>
				</table>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News">

		<tr>
			<td>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="target"></xsl:value-of>
					</xsl:attribute>
					<span class="fas fa-file-alt"></span>
					<span>
						<xsl:value-of select="Title"></xsl:value-of>
					</span>
				</a>
			</td>
			<td><span>
					<xsl:value-of select="EndDate"></xsl:value-of>
				</span></td>
			<td>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="FileUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="target"></xsl:value-of>
					</xsl:attribute>
					<span class="lnr lnr-download"></span>
				</a>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>