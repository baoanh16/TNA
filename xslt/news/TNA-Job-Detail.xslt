<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-job-detail-1">
			<article class="jobs-list">
				<div class="container">
					<div class="row">
						<div class="col-lg-9">
							<div class="job-read">
								<h2>
									<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
								</h2>
								<time><em class="fas fa-calendar-alt"></em>
									<xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of>
								</time>
								<div class="content">
									<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
								</div>
								<div class="btnGroup">
									<a class="download">
										<xsl:attribute name="href">
											<xsl:value-of select="/NewsDetail/FileUrl" disable-output-escaping="yes" />
										</xsl:attribute>Tải mẫu đơn xin việc
									</a>
									<a class="apply" href="javascript:void(0)">Ứng tuyển ngay</a></div>
							</div>
							<div class="job-apply-form" style="display:none;">
								<iframe class="frame" frameborder="0" width="100%" height="560px">
									<xsl:attribute name="src">
										<xsl:value-of select="/NewsDetail/ApplyUrl" disable-output-escaping="yes" />
									</xsl:attribute>
								</iframe>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="otherjob">
								<h2>Tin tuyển dụng khác</h2>
								<div class="lists">
									<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="NewsOther">
		<div class="item">
			<time><em class="fas fa-calendar-alt"></em>
				<xsl:value-of select="CreatedDate"></xsl:value-of>
			</time>
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
			</h4>
		</div>
	</xsl:template>

</xsl:stylesheet>