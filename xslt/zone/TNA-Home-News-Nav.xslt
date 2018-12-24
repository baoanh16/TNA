<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="nav-control">
						<div class="canhcam-nav-4">
							<article class="nav-list">
								<div class="container">
									<div class="row">
										<div class="col-12">
											<h2 class="tna__title tna__title--extra-3">
												<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
											</h2>
											<a class="nav__toogle" href="javascript:void(0)">Danh mục </a>
											<nav>
												<ul>
													<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
												</ul>
											</nav>
										</div>
									</div>
								</div>
							</article>
						</div>
					</div>
	</xsl:template>

	<xsl:template match="Zone">
		<li>
			<a href="javascript:void(0)">
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="data-tab">
				<xsl:text>tab-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

</xsl:stylesheet>