<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="product-detail-1">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-lg-6 product-image-wrapper">
						<div class="image-slide">
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="/ProductDetail/ProductImages" mode="BigImages"></xsl:apply-templates>
								</div>
							</div>
						</div>
						<div class="thumbnail-slide">
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="/ProductDetail/ProductImages" mode="SmallImages"></xsl:apply-templates>
								</div>
							</div>
							<div class="swiper-pagination">
								<div class="swiper-button-prev"><span class="lnr lnr-chevron-left"></span></div>
								<div class="swiper-button-next"><span class="lnr lnr-chevron-right"></span></div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="product-info">
							<h4>
								<xsl:value-of select="/ProductDetail/Title" disable-output-escaping="yes"></xsl:value-of>
								<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h4>
							<p>
								<span class="new-price">
									<xsl:value-of select="/ProductDetail/Price" disable-output-escaping="yes"></xsl:value-of>
								</span>
								<xsl:if test="/ProductDetail/OldPrice!=''">

									<del class="old-price">
										<xsl:value-of select="/ProductDetail/OldPrice" disable-output-escaping="yes"></xsl:value-of>
									</del>
								</xsl:if>
							</p>
						</div>
						<div class="product-filter">
							<div class="option">
								<h4>Kích thước</h4>
								<input /><span>x</span>
								<input /><span>x</span>
								<input />
							</div>
							<div class="option">
								<h4>Màu Sắc</h4>
								<ul>
									<li><a href="#"> 
										<img src="/Data/Sites/1/skins/default/img/product/c_1.png"></img>
									</a></li>
									<li><a href="#"> 
										<img src="/Data/Sites/1/skins/default/img/product/c_2.png"></img>
									</a></li>
								</ul>
							</div>
						</div>
						<div class="product-buy">
							<div class="quantity">
								<input value="1" type="number">
								<xsl:attribute name="name">
									<xsl:text>addtocart_</xsl:text>
									<xsl:value-of select="/ProductDetail/ProductId" disable-output-escaping="yes"></xsl:value-of>
									<xsl:text>.EnteredQuantity</xsl:text>
								</xsl:attribute>
								</input>
							</div>
							<div class="btn-buy" onclick="AjaxCart.addproducttocart_details(this);return false;">
								<xsl:attribute name="data-productid">
									<xsl:value-of select="/ProductDetail/ProductId"></xsl:value-of>
								</xsl:attribute>
								<span class="fas fa-shopping-cart"></span>
								<span>
									<xsl:value-of select="/ProductDetail/BuyText" disable-output-escaping="yes"></xsl:value-of>
								</span>
							</div>
							<div class="wishlist active" onclick="AjaxCart.carttowishlist(this); return false;">
								<xsl:if test="/ProductDetail/AddedWishlist='true'">
									<xsl:attribute name="class">
										<xsl:text>wishlist active</xsl:text>
									</xsl:attribute>
								</xsl:if>
								<xsl:attribute name="data-productid">
									<xsl:value-of select="/ProductDetail/ProductId"></xsl:value-of>
								</xsl:attribute>
								<span class="lnr lnr-heart"></span>
								<span>
									<xsl:value-of select="/ProductDetail/WishListText" disable-output-escaping="yes"></xsl:value-of>
								</span>
							</div>
						</div>
						<div class="product-briefContent">
							<xsl:value-of select="/ProductDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="viewmore">
							<a href="javascript:void(0)">
								<span>
									<xsl:value-of select="/ProductDetail/ViewMoreText" disable-output-escaping="yes"></xsl:value-of>
								</span>
								<span class="lnr lnr-chevron-right"></span>
							</a>
						</div>
					</div>
				</div>
				<div class="row fullContent">
					<div class="col-12">
						<xsl:value-of select="/ProductDetail/FullContent" disable-output-escaping="yes">
						</xsl:value-of>
					</div>
				</div>
				<div class="row product-attribute-wrapper">
					<div class="col-12 product-attribute-tab">
						<ul>
							<xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Nav"></xsl:apply-templates>
						</ul>
					</div>
					<div class="col-12 product-attribute-content">
						<xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Content"></xsl:apply-templates>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<div class="social-share">
							<p>Chia sẻ</p>
							<ul style="display: flex;align-items: flex-start">
								<li style="display: flex;justify-content: center;align-items: center;">
									<div class="fb-share-button" data-href="" data-layout="button" data-size="small" data-mobile-iframe="true">
										<a class="fb-xfbml-parse-ignore" target="_blank" href="">Chia sẻ
										</a>
									</div>
								</li>
								<li style="display: flex;justify-content: center;align-items: center;">
									<a class="fab fa-twitter twitter-share-button" href="https://twitter.com/share" data-size="medium" data-text="custom share text" data-url="" data-via="twitterdev" data-related="twitterapi,twitter"></a>
								</li>
								<li style="display: flex;justify-content: center;align-items: center;">
									<a class="fab fa-google-plus-g g-plusone"  data-size="tall"></a>
								</li>
							</ul>
							<!-- <div class="social-networks nav">
									<div class="nav-item">
										<div class="fb-share-button" data-href="" data-layout="button" data-size="small" data-mobile-iframe="true">
											<a class="fb-xfbml-parse-ignore" target="_blank" href="">Chia sẻ
											</a>
										</div>
									</div>
									<div class="nav-item">
										<a class="twitter-share-button" href="https://twitter.com/share" data-size="medium" data-text="custom share text"
										 data-url="" data-via="twitterdev" data-related="twitterapi,twitter">Tweet
										</a>
									</div>
									<div class="nav-item">
										<div class="g-plusone" data-size="tall">
										</div>
									</div>
									<div class="nav-item">
										<script src="//platform.linkedin.com/in.js" type="text/javascript"> lang: en_US
										</script>
										<script type="IN/Share"></script>
									</div>
								</div> -->
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="product-detail-2">
			<div class="container">
				<h2>Có thể bạn quan tâm</h2>
				<div class="row">
					<div class="col-12">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>

							</div>
						</div>
						<div class="swiper-pagination style-2">
							<div class="swiper-button-prev"><span class="lnr lnr-chevron-left"></span></div>
							<div class="swiper-button-next"><span class="lnr lnr-chevron-right"></span></div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="ProductAttributes" mode="Nav">
		<li>
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="data-target">
				<xsl:text>#tab-</xsl:text>
				<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
		</li>
	</xsl:template>
	<xsl:template match="ProductAttributes" mode="Content">
		<div class="tab-content">
			<xsl:if test="position()=1">
				<xsl:attribute name="style">
					<xsl:text>display: block</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="id">
				<xsl:text>tab-</xsl:text>
				<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
			<!-- <ul>
				<li>- Nhân viên chăm sóc khách hàng sẽ gọi điện xác nhận đơn hàng trước khi giao</li>
				<li>- Sản phẩm được đóng gói cẩn thận để đảm bảo quá trình vận chuyển đường dài</li>
				<li>- Phí vận chuyển được tính trong đơn hàng</li>
				<li>- Thời gian giao hàng tuỳ thuộc vào địa chỉ nhận hàng của khách hàng, tham khảo thêm tại Hình thức vận chuyển</li>
			</ul> -->
		</div>
	</xsl:template>

	<xsl:template match="ProductProperties">
		<xsl:choose>
			<xsl:when test="FieldType=-1">
				<div class="product-size">
					<div class="label">
						<xsl:value-of select="Title"></xsl:value-of>
						<xsl:text>:</xsl:text>
					</div>
					<ul>
						<xsl:apply-templates select="Options"></xsl:apply-templates>
					</ul>
					<input type="hidden" class="product-option-input">
					<xsl:attribute name="name">
						<xsl:text>product_option_</xsl:text>
						<xsl:value-of select="FieldId"></xsl:value-of>
					</xsl:attribute>
					</input>
				</div>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<!--LK Custom 06-->
	<xsl:template match="ProductColors">
		<li class="color">
			<a class="color-img product-option-color" href="#!" onclick="AjaxCart.selectproductoption(this);return false;" style="background:#FFF">
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="data-id">
					<xsl:value-of select="ColorId"></xsl:value-of>
				</xsl:attribute>
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</a>
		</li>
	</xsl:template>
	<!--LK Custom 06-->

	<xsl:template match="Colors">
		<div class="item">
			<div class="color">
				<xsl:if test="IsActive='True'">
					<xsl:attribute name="class">
						<xsl:text>color color-active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<a href="#!" data-toggle="tooltip" data-placement="top">
					<xsl:attribute name="style">
						<xsl:text>background:</xsl:text>
						<xsl:value-of select="ColorCode"></xsl:value-of>
						<xsl:text>;</xsl:text>
					</xsl:attribute>
					<xsl:attribute name="data-original-title">
						<xsl:value-of select="Name"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="data-id">
						<xsl:value-of select="OptionId"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="data-proid">
						<xsl:value-of select="/ProductDetail/ProductId"></xsl:value-of>
					</xsl:attribute>
				</a>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Options">
		<li class="size">
			<a href="#!" class="product-option-size" onclick="AjaxCart.selectproductoption(this);return false;">
				<!--LK Custom: Thêm class="product-option-size" onclick="AjaxCart.selectproductoption(this);return false;"-->
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>ajaxlink active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="data-id">
					<xsl:value-of select="OptionId"></xsl:value-of>
				</xsl:attribute>

				<!--LK Custom 07-->
				<xsl:attribute name="data-price">
					<xsl:value-of select="Price"></xsl:value-of>
				</xsl:attribute>
				<!--LK Custom 07-->

				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

	<xsl:template match="ProductOther">
		<div class="swiper-slide">
			<figure class="mrVui-product-item">
				<div class="imgbox">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="target"></xsl:value-of>
						</xsl:attribute>
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
						<span>
							<xsl:value-of select="/ProductDetail/WishListText" disable-output-escaping="yes"></xsl:value-of>
						</span>
					</div>
					<div class="btn add-cart" onclick="AjaxCart.addproducttocart_catalog(this);return false;">
						<xsl:attribute name="data-productid">
							<xsl:value-of select="ProductId"></xsl:value-of>
						</xsl:attribute>
						<span class="lnr lnr-cart"></span>
						<span>
							<xsl:value-of select="/ProductDetail/BuyText" disable-output-escaping="yes"></xsl:value-of>
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

	<xsl:template match="ProductImages" mode="BigImages">
		<div class="swiper-slide">
			<a data-fancybox="product">
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<img class="lazyload">
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				</img>
			</a>
		</div>
	</xsl:template>
	<xsl:template match="ProductImages" mode="SmallImages">
		<div class="swiper-slide">
			<img class="lazyload">
			<xsl:attribute name="src">
				<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
			</xsl:attribute>
			</img>
		</div>
	</xsl:template>

	<xsl:template match="Colors">
		<li class="color">
			<xsl:if test="IsActive='True'">
				<xsl:attribute name="class">
					<xsl:text>color color-active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a href="#!" data-toggle="tooltip" data-placement="top">
				<xsl:attribute name="style">
					<xsl:text>background:</xsl:text>
					<xsl:value-of select="ColorCode"></xsl:value-of>
					<xsl:text>;</xsl:text>
				</xsl:attribute>
				<xsl:attribute name="data-original-title">
					<xsl:value-of select="Name"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="data-id">
					<xsl:value-of select="OptionId"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="data-proid">
					<xsl:value-of select="/ProductDetail/ProductId"></xsl:value-of>
				</xsl:attribute>
			</a>
		</li>
	</xsl:template>

</xsl:stylesheet>
