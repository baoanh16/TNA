<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
			</div>
		</div>
		<div class="swiper-pagination style-2">
			<div class="swiper-button-prev"><span class="lnr lnr-chevron-left"></span></div>
			<div class="swiper-button-next"><span class="lnr lnr-chevron-right"></span></div>
		</div>
	</xsl:template>
	<xsl:template match="Product">
		<div class="swiper-slide" data-aos="flip-up">
			<xsl:attribute name="data-aos-delay">
				<xsl:value-of select="position()*250" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<figure class="mrVui-product-item">
				<div class="imgbox">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<!-- <xsl:attribute name="target">
							<xsl:value-of select="target"></xsl:value-of>
						</xsl:attribute> -->
						<img>
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
					<h4>
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="target"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</a>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h4>
					<p class="code">
						<xsl:value-of select="Code" disable-output-escaping="yes"></xsl:value-of>
					</p>
					<p>
						<span class="price">
							<xsl:value-of select="Price" disable-output-escaping="yes"></xsl:value-of>
						</span>
						<xsl:if test="OldPrice!=0">
							<del class="old-price">
								<xsl:value-of select="OldPrice" disable-output-escaping="yes"></xsl:value-of>
							</del>
						</xsl:if>
					</p>
				</figcaption>
				<div class="shopping-button-wrapper">
					<div class="btn add-wishlist">
						<span class="lnr lnr-heart"></span>
						<span> Yêu Thích
							<!-- <xsl:value-of select="/ProductList/WishListText" disable-output-escaping="yes"></xsl:value-of> -->
						</span>
					</div>
					<div class="btn add-cart" onclick="AjaxCart.addproducttocart_catalog(this);return false;">
						<xsl:attribute name="data-productid">
							<xsl:value-of select="ProductId"></xsl:value-of>
						</xsl:attribute>
						<span class="lnr lnr-cart"></span>
						<span> Mua Ngay
							<!-- <xsl:value-of select="/ProductList/BuyText" disable-output-escaping="yes"></xsl:value-of> -->
						</span>
					</div>
				</div>
				<xsl:if test="OldPrice!=0">
					<span class="promotion gradient_1">
						-<xsl:value-of select="round((1-substring(Price,0,string-length(Price)-2) div substring(OldPrice,0,string-length(OldPrice)-2)) * 100)" />%
					</span>
				</xsl:if>
			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>
