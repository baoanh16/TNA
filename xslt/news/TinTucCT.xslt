<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<!--Begin News-->
	<xsl:template match="/">
		<section class="canhcam-news-detail-1">
			<!--Title-->
			<article class="news-list">
				<div class="container">
					<div class="row">
						<div class="col-lg-9">
							<div class="news-read">
								<h1><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></h1>
								<time><xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of></time><xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
								<div class="content">
									<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
								</div>
							</div>
							<div class="social-networks nav" style="display:flex;align-items: flex-start; margin-top: 2rem">
								<div class="nav-item" style="transform: translateY(-1px);">
									<div class="fb-share-button" data-href="" data-layout="button" data-size="small" data-mobile-iframe="true"><a
											class="fb-xfbml-parse-ignore" target="_blank" href="">Chia sẻ</a></div>
								</div>
								<div class="nav-item" style="margin-left: 1.2rem">
									<a class="twitter-share-button" href="https://twitter.com/share" data-size="medium"
										data-text="custom share text" data-url="" data-via="twitterdev" data-related="twitterapi,twitter"></a></div>
								<div class="nav-item" style="margin-left: 1.2rem">
									<div class="g-plus" data-action="share"></div>
								</div>
								<div class="nav-item" style="margin-left: 1.2rem">
									<script src="//platform.linkedin.com/in.js" type="text/javascript">lang: en_US</script>
									<script type="IN/Share"></script>
								</div>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="otherlist">
								<h2>
									<xsl:value-of select="/NewsDetail/NewsOtherText"></xsl:value-of>
								</h2>
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


		
	<!--Begin News Other Child-->
	<xsl:template match="NewsOther">
		<!--item-->
		<div class="item">
			<figure>
				<div class="boxzoom">
					<a href="#">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img src="./img/news_detail/news_detail_1.png" alt="alt">
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</a></div>
				<figcaption>
					<h3><xsl:value-of select="Title"></xsl:value-of></h3>
				</figcaption>
			</figure>
		</div>
	</xsl:template>

</xsl:stylesheet>