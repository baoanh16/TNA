<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<div class="product-list-inner ajaxresponse">
		
			<input type="hidden" id="txtKeyword">
			<xsl:attribute name="value">
				<xsl:value-of select="/ProductList/KeyWord"/>
			</xsl:attribute>
			</input>
			<input type="hidden" id="urlKeywordUrlOutParam">
			<xsl:attribute name="value">
				<xsl:value-of select="/ProductList/KeywordUrlOutParam"/>
			</xsl:attribute>
			</input>
			<input type="hidden" id="urlKeywordUrlWithParam">
			<xsl:attribute name="value">
				<xsl:value-of select="/ProductList/KeywordUrlWithParam"/>
			</xsl:attribute>
			</input>
			<div class="product-head">
				<h2 class="tna__title tna__title--extra-3">
					<xsl:value-of select="/ProductList/ModuleTitle"></xsl:value-of>
				</h2>
				<div class="product-search">
					<input type="text" name="Product_Search" id="Product_Search" />
					<button type="submit"><em class="fas fa-search"></em></button>
				</div>
			</div>
			<div class="product-sort">
				<label>
					<xsl:value-of select="/ProductList/ShortText"></xsl:value-of>
				</label>
				<div class="sort-select">
					<select class="ajaxsort">
						<xsl:apply-templates select="/ProductList/SortBy"></xsl:apply-templates>
					</select>
				</div>
			</div>
			<div class="product-body">
				<div class="row ajaxresponsewrap">
					<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
				</div>
			</div>
		</div>
	</xsl:template>


	<xsl:template match="SortBy">
		<option>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="selected">
					<xsl:text>selected</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="value">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of>
		</option>
	</xsl:template>

	<xsl:template match="Product">
		<div class="col-6 col-sm-4 col-md-3 tna-product-item">
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
					<!--<div class="product-btn">
						<a class="addcart" onclick="AjaxCart.addproducttocart_catalog(this);return false;">
							<xsl:attribute name="data-productid">
								<xsl:value-of select="ProductId"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="/ProductList/BuyText"></xsl:value-of>
							Thêm vào giỏ hàng
						</a>
						<a class="detail">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="target"></xsl:value-of>
							</xsl:attribute>
							Xem chi tiết
						</a>
					</div> -->
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
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
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
				</figcaption>
			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>