<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
				<div class="container">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<xsl:if test="position() = 1 ">
			<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() = 1 ">
			<div class="col-lg-6">
				<div class="top-news">
					<figure>
						<div class="boxzoom">
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="target">
									<xsl:value-of select="Target"></xsl:value-of>
								</xsl:attribute>
								<img>
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
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
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h2>
							<p>
								<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</p>
						</figcaption>
					</figure>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position() = 2 ">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-6"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="part-news"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() &gt; 1 and position() &lt; 5">
			<figure>
				<div class="boxzoom">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
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
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h2>
				</figcaption>
			</figure>
		</xsl:if>
		<xsl:if test="position() = 4 ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="row other-list"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() &gt; 4">
			<div class="col-sm-6 col-lg-4 item">
				<figure>
					<div class="boxzoom">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Target"></xsl:value-of>
							</xsl:attribute>
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
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
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h2>
					</figcaption>
				</figure>
			</div>
		</xsl:if>
		<xsl:if test="position() = last() ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>