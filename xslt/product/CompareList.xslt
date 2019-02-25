<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    <xsl:if test="/ProductList/CompareCount > 0">
      <div class="compare-panel clearfix active"> <div class="compare-toggle">
            <div class="btn-minimize">
              Thu nhỏ <i class="fas fa-angle-down"></i>
            </div>
          </div>
        <div class="container">
          <div class="row no-gutters">
            <div class="col-12 col-lg-9 col-xl-9">
              <div class="compare-list">
                <xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>

              </div>
            </div>
            <div class="col-12 col-lg-3 col-xl-3">
              <div class="btn-wrap">
                <a class="btn_compare_b" rel="nofollow" href="/Product/Compare.aspx">So sánh chi tiết</a>
                <div class="des">So sánh tối đa 3 sản phẩm</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </xsl:if>
  </xsl:template>

  <xsl:template match="Product">
    <div class="product" data-productid="264">
      <div class="item-cpr">
        <a class="remove-cpr" data-productid="264">
          <xsl:attribute name="data-productid">
            <xsl:value-of select="ProductId"></xsl:value-of>
          </xsl:attribute>
          <span>x</span>
        </a>
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
            <h2 class="product-name">
              <a href="http://lug.webcanhcam.com/vali-keo-lusetti-lst1563-28-blue" title="Vali Kéo Lusetti">
                <xsl:attribute name="href">
                  <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="target">
                  <xsl:value-of select="Target"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                  <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title"></xsl:value-of>
              </a>
            </h2>
            <div class="product-price">
              <span class="new">
                <xsl:value-of select="Price"></xsl:value-of>
              </span>
            </div>
          </figcaption>
        </figure>
      </div>
    </div>
  </xsl:template>

</xsl:stylesheet>
