<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<div class="row">
			<xsl:apply-templates select="/NewsList/News" mode="Big"></xsl:apply-templates>
			<div class="col-lg-6">
				
			<xsl:apply-templates select="/NewsList/News" mode="Small"></xsl:apply-templates>
			</div>
			<!-- <xsl:if test="count(News)>1">
				<div class="col-lg-6">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</xsl:if> -->
		</div>
	</xsl:template>

	<xsl:template match="News" mode="Big">
		<xsl:if test="position()=1">
			<div class="col-lg-6">
				<div class="top-news">
					<figure>
						<div class="boxzoom">
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="target">
									<xsl:value-of select="target"></xsl:value-of>
								</xsl:attribute>
								<img class="lazyload">
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
							<time>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</time>
							<h2>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h2>
							<p>
								<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</p>
						</figcaption>
					</figure>
				</div>
			</div>
		</xsl:if>
	</xsl:template>


	<xsl:template match="News" mode="Small">
		<xsl:if test="position()=2">
			<xsl:text disable-output-escaping="yes">&lt;div class="part-news"&gt;</xsl:text>
			<figure>
				<div class="boxzoom">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="target"></xsl:value-of>
						</xsl:attribute>
						<img class="lazyload">
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
					<time>
						<xsl:value-of select="CreatedDate"></xsl:value-of>
					</time>
					
						<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="target"></xsl:value-of>
						</xsl:attribute>
					<h2>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h2>
						</a>
				</figcaption>
			</figure>
		</xsl:if>

		<xsl:if test="position()=3">
			<figure>
				<div class="boxzoom">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="target"></xsl:value-of>
						</xsl:attribute>
						<img class="lazyload">
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
					<time>
						<xsl:value-of select="CreatedDate"></xsl:value-of>
					</time>
					
						<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="target"></xsl:value-of>
						</xsl:attribute>
					<h2>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h2>
						</a>
				</figcaption>
			</figure>
		</xsl:if>

		<xsl:if test="position()=4">
			<figure>
				<div class="boxzoom">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="target"></xsl:value-of>
						</xsl:attribute>
						<img class="lazyload">
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
					<time>
						<xsl:value-of select="CreatedDate"></xsl:value-of>
					</time>
						<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="target"></xsl:value-of>
						</xsl:attribute>
					<h2>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h2>
						</a>
				</figcaption>
			</figure>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>