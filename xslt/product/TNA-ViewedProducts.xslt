<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:if test="count(/ProductList/Product)>0">
			<div class="row cart-title">
				<div class="col">
					<h3><span class="far fa-clock"></span><span>Sản phẩm đã xem</span></h3>
				</div>
			</div>
			<div class="swiper-container">
				<div class="swiper-button-prev"><span class="lnr lnr-chevron-left"></span></div>
				<div class="swiper-button-next"><span class="lnr lnr-chevron-right"></span></div>
				<div class="swiper-wrapper">
					<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
				</div>
			</div>
		</xsl:if>
	</xsl:template>


	<xsl:template match="Product">
		<div class="swiper-slide">
			<div class="tna-product-item">
				<figure>
					<div class="boxzoom">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="target"></xsl:value-of>
							</xsl:attribute>
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
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
								<xsl:value-of select="Title"></xsl:value-of>
							</a>
						</h4>
						<div class="code">
							<xsl:value-of select="Code"></xsl:value-of>
						</div>
						<div class="price">
					<xsl:choose>
						<xsl:when test="Price != ''">
							<xsl:value-of select="Price"></xsl:value-of>
						</xsl:when>
						<xsl:otherwise>
							<xsl:text>Liên Hệ</xsl:text>
						</xsl:otherwise>
					</xsl:choose>
						</div>
						<xsl:choose>
							<xsl:when test="Price != ''">
								<a class="addcart"  onclick="AjaxCart.addproducttocart_catalog(this);return false;">
									<xsl:attribute name="data-productid">
										<xsl:value-of select="ProductId"></xsl:value-of>
									</xsl:attribute>
									<!-- <xsl:value-of select="/ProductList/BuyText"></xsl:value-of> -->
									Thêm vào giỏ hàng
								</a>
							</xsl:when>
							<xsl:otherwise>
								<a class="addcart" disabled="">
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
									<!-- <xsl:value-of select="/ProductList/BuyText"></xsl:value-of> -->
								<xsl:text>Chi tiết sản phẩm</xsl:text>
								</a>
							</xsl:otherwise>
						</xsl:choose>
					</figcaption>
				</figure>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>