<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<!--Begin Zone-->
<xsl:template match="/">

	<section class="canhcam-video-1">
		<article class="video-list">
			<div class="container">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
		</article>
	</section>
</xsl:template>
<xsl:template match="News">
	<xsl:if test="position() = 1 ">
		<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
		<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-6 top-list"&gt;</xsl:text>
	</xsl:if>
	<xsl:if test="position() = 4 ">
		<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
	</xsl:if>
	<xsl:if test="position() = 7 ">
		<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
	</xsl:if>
	<xsl:if test="position() = 1 ">
		<div class="row">
			<div class="col-12 item item-big">
				<figure>
					<div class="boxzoom">
						<div class="boxvideo"><a>
						<xsl:attribute name="href">
							<xsl:value-of select="BriefContent"></xsl:value-of>
						</xsl:attribute>
						<img src="/img/gallery/1.jpg" alt="alt">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						
						</img></a></div>
					</div>
				</figure>
			</div>
		</div>
	</xsl:if>
	<xsl:if test="position() = 2 ">
		<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
	</xsl:if>
	<xsl:if test="position() &gt; 1 and  position() &lt; 4">
		<div class="col-md-6 col-12 item">
			<figure>
				<div class="boxzoom">
					<div class="boxvideo"><a>
					<xsl:attribute name="href">
							<xsl:value-of select="BriefContent"></xsl:value-of>
						</xsl:attribute>
					<img src="/img/gallery/1.jpg" alt="alt">
					<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					
					</img></a></div>
				</div>
			</figure>
		</div>
	</xsl:if>
	<xsl:if test="position() = 4 ">
		<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-6 part-list"&gt;</xsl:text>
		<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
	</xsl:if>
	<xsl:if test="position() = 6 ">
		<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		<div class="col-12 item item-big">
			<figure>
				<div class="boxzoom">
					<div class="boxvideo"><a>
					<xsl:attribute name="href">
							<xsl:value-of select="BriefContent"></xsl:value-of>
						</xsl:attribute>
					<img src="/img/gallery/1.jpg" alt="alt">
					<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					
					</img></a></div>
				</div>
			</figure>
		</div>
	</xsl:if>
		<xsl:if test="position() &gt; 3 and  position() &lt; 6">
		<div class="col-md-6 col-12 item">
			<figure>
				<div class="boxzoom">
					<div class="boxvideo"><a>
					<xsl:attribute name="href">
							<xsl:value-of select="BriefContent"></xsl:value-of>
						</xsl:attribute>
					<img src="/img/gallery/1.jpg" alt="alt">
					<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					
					</img></a></div>
				</div>
			</figure>
		</div>
	</xsl:if>
	<xsl:if test="position() &gt; 6 ">
			<div class="col-lg-3 col-md-6 col-12 item">
			<figure>
				<div class="boxzoom">
					<div class="boxvideo"><a>
					<xsl:attribute name="href">
							<xsl:value-of select="BriefContent"></xsl:value-of>
						</xsl:attribute>
					<img src="/img/gallery/1.jpg" alt="alt">
					<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					
					</img></a></div>
				</div>
			</figure>
		</div>
	</xsl:if>
</xsl:template>

</xsl:stylesheet>