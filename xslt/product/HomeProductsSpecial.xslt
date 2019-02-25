<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <section class="home-product home-productSlider">
      <div class="container full-width">
        <h2 class="home-title text-uppercase">
          <xsl:value-of select="/ProductList/ModuleTitle"></xsl:value-of>
        </h2>
        <div class="product-list">
          <div class="row">
            <xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
          </div>
        </div>
      </div>
    </section>
  </xsl:template>

  <xsl:template match="Product">
    <div class="col-6 col-md-4 col-lg-3">
      <div class="product-col">
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
            <!--<div class="product-color">7 màu</div>-->
            <div class="product-intro">
              <div class="product-cate">
                <xsl:value-of select="ZoneTitle"></xsl:value-of>
              </div>
              <div class="product-name">
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
              </div>
            </div>
            <div class="product-price">
              <xsl:if test="OldPrice != ''">
                <div class="old">
                  <xsl:value-of select="OldPrice"></xsl:value-of>
                </div>
              </xsl:if>
              <xsl:choose>
                <xsl:when test="Price!=''">
                  <div class="new">
                    <xsl:value-of select="Price"></xsl:value-of>
                  </div>
                </xsl:when>
                <xsl:otherwise>
                  <div class="new">
                    <xsl:text>Liên hệ</xsl:text>
                  </div>
                </xsl:otherwise>
              </xsl:choose>
            </div>
            <div class="buy-wrap">
              
              <!--LK Custom 00: <a class="btn-buy" href="#!" onclick="AjaxCart.addproducttocart_catalog(this);return false;">
                <xsl:attribute name="data-productid">
                  <xsl:value-of select="ProductId"></xsl:value-of>
                </xsl:attribute>
                <xsl:text>Mua ngay</xsl:text>
              </a>-->


              <xsl:choose>
                <xsl:when test="StockQuantity>0">
                  <a class="btn-buy" href="#!" onclick="AjaxCart.addproducttocart_details(this);return false;" data-toggle="modal" data-target="#exampleModal" data-action="addcart" data-url=''>
                    <xsl:attribute name="data-productid">
                      <xsl:value-of select="ProductId"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="data-zonetitle">
                      <xsl:value-of select="/ProductList/ModuleTitle"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="data-productimagesurl">
                      <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="data-title">
                      <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="data-code">
                      <xsl:value-of select="Code"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="data-price">
                      <xsl:value-of select="Price"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="data-oldprice">
                      <xsl:value-of select="OldPrice"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="data-checkouturl">
                      <xsl:value-of select="CheckoutUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:text>Mua ngay</xsl:text>
                  </a>
                </xsl:when>
                <xsl:otherwise>
                  <a class="btn-buy" href="#!">
                    <span>Hết hàng</span>
                  </a>
                </xsl:otherwise>
              </xsl:choose>
              <!--LK Custom 00-->
              
            </div>
          </figcaption>
        </figure>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>