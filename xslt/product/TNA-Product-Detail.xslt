<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-product-detail-1">
			<article class="product-list">
				<div class="container">
					<div class="row no-gutters">
						<div class="col-lg-6">
							<div class="product-images">
								<div class="list-images">
									<xsl:apply-templates select="/ProductDetail/ProductImages" mode="Thumbnail"></xsl:apply-templates>
								</div>
								<div class="list-control">
									<div class="list-thumb">
										<xsl:apply-templates select="/ProductDetail/ProductImages" mode="Image"></xsl:apply-templates>
									</div>
									<ul class="controls" id="customize-controls" aria-label="Carousel Navigation" tabindex="0">
										<li class="prev" data-controls="prev" aria-controls="customize" tabindex="-1"><span class="lnr lnr-chevron-left"></span></li>
										<li class="next" data-controls="next" aria-controls="customize" tabindex="-1"><span class="lnr lnr-chevron-right"></span></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="product-info">
								<h1>
									<xsl:value-of select="/ProductDetail/Title"></xsl:value-of>
									<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
								</h1>
								<div class="content price">
									<div class="content-title price-new">
										<xsl:value-of select="/ProductDetail/Price"></xsl:value-of>
										<span>(Giá đã bao gồm VAT)</span>
									</div>
									<div class="content-des price-old">
										<xsl:value-of select="/ProductDetail/OldPrice"></xsl:value-of>
									</div>
								</div>
								<div class="content">
									<div class="content-title">Mã sản phẩm</div>
									<div class="content-des"><span>:</span>
										<xsl:value-of select="/ProductDetail/Code"></xsl:value-of>
									</div>
								</div>
								<xsl:value-of select="/ProductDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
								<div class="product-button">
									<a class="btn addcart" onclick="AjaxCart.addproducttocart_catalog(this);return false;">
										<xsl:attribute name="data-productid">
											<xsl:value-of select="ProductId"></xsl:value-of>
										</xsl:attribute>
										Mua ngay
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
		<section class="canhcam-product-detail-2">
			<article class="product-list">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<nav class="nav-control">
								<ul>
									<li><a class="active" href="javascript:void(0)" data-tab="tab-1">Mô tả</a></li>
									<li><a href="javascript:void(0)" data-tab="tab-2">Thông số kỹ thuật</a></li>
									<li><a href="javascript:void(0)" data-tab="tab-3">Download</a></li>
								</ul>
							</nav>
							<div class="tab-control">
								<div class="tab-panel" id="tab-1">
									<div class="canhcam-tab-1">
										<article class="tabs-list">
											<xsl:value-of select="/ProductDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
										</article>
									</div>
								</div>
								<div class="tab-panel" id="tab-2">
									<div class="canhcam-tab-2">
										<article class="tabs-list">
											<xsl:apply-templates select="/ProductDetail/ProductAttributes"></xsl:apply-templates>
											<!-- <xsl:value-of  disable-output-escaping="yes"></xsl:value-of> -->
										</article>
									</div>
								</div>
								<div class="tab-panel" id="tab-3">
									<div class="canhcam-tab-3">
										<article class="tabs-list">
											<div class="tab-head">
												<p>Tải driver, hướng dẫn sử dụng cho thiết bị</p>
											</div>
											<div class="tab-body">
												<div class="tab-table">
													<table class="table">
														<tbody>

															<tr>
																<th scope="row"><a href="">Hướng dẫn sử dụng thiết bị</a></th>
																<td><span class="fas fa-download"></span></td>
															</tr>
															<tr>
																<th scope="row"><a href="">Hướng dẫn sử dụng thiết bị</a></th>
																<td><span class="fas fa-download"></span></td>
															</tr>
															<tr>
																<th scope="row"><a href="">Hướng dẫn sử dụng thiết bị</a></th>
																<td><span class="fas fa-download"></span></td>
															</tr>
															<tr>
																<th scope="row"><a href="">Hướng dẫn sử dụng thiết bị</a></th>
																<td><span class="fas fa-download"></span></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</article>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
		<section class="canhcam-carousel-1">
			<article class="carousel-list">
				<div class="container">
					<div class="row">
						<div class="col-12">
							<div class="carousel-head">
								<h2>Sản phẩm tương tự</h2>
								<ul class="controls" id="carousel-controls" aria-label="Carousel Navigation" tabindex="0">
									<li class="prev" data-controls="prev" aria-controls="customize" tabindex="-1"><i class="fas fa-chevron-left"></i></li>
									<li class="next" data-controls="next" aria-controls="customize" tabindex="-1"><i class="fas fa-chevron-right"></i></li>
								</ul>
							</div>
						</div>
						<div class="col-12">
							<div class="carousel-body">
								<xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>


	<xsl:template match="ProductAttributes">
		<xsl:if test="position()=1">
			<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
		</xsl:if>
	</xsl:template>


	<xsl:template match="ProductImages" mode="Image">
		<div class="tns-item">
			<div class="item">
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="ProductImages" mode="Thumbnail">
		<div class="tns-item">
			<div class="item">
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="ProductOther">
		<div class="c-item">
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
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h4>
						<div class="code">
							<xsl:value-of select="Code"></xsl:value-of>
						</div>
						<div class="price">
							<xsl:value-of select="Price"></xsl:value-of>
						</div>
					</figcaption>
				</figure>
			</div>
		</div>
	</xsl:template>


	<!-- <xsl:template match="ProductRelated">
		<div class="item">
			<div class="product-col">
				<xsl:choose>
					<xsl:when test="floor(ShowOption div 1) mod 2 = 1">
						<div class="promotion op1">
							<span>
								<xsl:value-of select="/ProductDetail/NewText"></xsl:value-of>
							</span>
						</div>
					</xsl:when>
					<xsl:when test="floor(ShowOption div 2) mod 2 = 1">
						<span class="promotion op2">
							<xsl:value-of select="/ProductDetail/SaleText"></xsl:value-of>
						</span>
					</xsl:when>
				</xsl:choose>
				<figure>
					<a class="product-img">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
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
					<figcaption>
						<div class="product-name">
							<a class="btn-detail">
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select="Code"></xsl:value-of>
							</a>
						</div>
						<div class="product-price">
							<xsl:if test="OldPrice != ''">
								<div class="old">
									<xsl:value-of select="OldPrice"></xsl:value-of>
								</div>
							</xsl:if>
							<xsl:if test="Price != ''">
								<div class="new">
									<xsl:value-of select="Price"></xsl:value-of>
								</div>
							</xsl:if>
						</div>
						<a class="buy" onclick="AjaxCart.addproducttocart_catalog(this);return false;">
							<xsl:attribute name="data-productid">
								<xsl:value-of select="ProductId"></xsl:value-of>
							</xsl:attribute>
							<span>
								<xsl:value-of select="/ProductDetail/BuyText"></xsl:value-of>
							</span>
							<i class="fa fa-shopping-bag" aria-hidden="true"></i>
						</a>
					</figcaption>
				</figure>
			</div>
		</div>
	</xsl:template> -->

</xsl:stylesheet>