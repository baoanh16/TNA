<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <section class="product-page ajaxresponse clearfix">
      <div class="ajaxresponsewrap clearfix">
        <div class="compare-panel clearfix">
          <div class="container">

            <div class="row no-gutters">
              <div class="col-12 col-lg-9 col-xl-9">
                <div class="compare-list clearfix">
                  <xsl:if test="count(/ProductList/Compared)=0">
                    <xsl:attribute name="class">
                      <xsl:text>compare-list hidden</xsl:text>
                    </xsl:attribute>
                  </xsl:if>
                  <xsl:apply-templates select="/ProductList/Compared"/>
                </div>
              </div>
              <div class="col-12 col-lg-3 col-xl-3">
                <div class="btn-wrap">
                  <a class="btn_compare_b" rel="nofollow">
                    <xsl:attribute name="href">
                      <xsl:value-of select="/ProductList/CompareListUrl"/>
                    </xsl:attribute>
                    <xsl:text>So sánh chi tiết</xsl:text>
                  </a>
                  <div class="des">So sánh tối đa 3 sản phẩm</div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="product-list clearfix">
          <div class="row no-gutters" style="overflow-x:auto;">

            <table  class="compare-products-table">
              <tbody>
                <tr class="product-header">
                  <td> </td>
                  <xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
                </tr>
                <tr class="product-description">
                  <td>Giá</td>
                  <xsl:apply-templates select="/ProductList/Product" mode="price"></xsl:apply-templates>
                </tr>
                <tr class="product-description">
                  <td>Thông tin sản phẩm</td>
                  <xsl:apply-templates select="/ProductList/Product" mode="description"></xsl:apply-templates>
                </tr>
                <xsl:apply-templates select="/ProductList/Digital"></xsl:apply-templates>

              </tbody>
            </table>


          </div>
        </div>
      </div>
    </section>
  </xsl:template>


  <xsl:template match="Product" mode="price">
    <td>
      <span class="new">
        <xsl:value-of select="Price" disable-output-escaping="yes"></xsl:value-of>
      </span>
      <span class="old">
        <s>
          <xsl:value-of select="OldPrice" disable-output-escaping="yes"></xsl:value-of>
        </s>
      </span>
    </td>

  </xsl:template>
  <xsl:template match="Product" mode="description">
    <td>
      <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>

    </td>

  </xsl:template>
  <xsl:template match="Digital">
    <tr class="product-digital">
      <td class="digital-title">
        <xsl:value-of select="Title"></xsl:value-of>
      </td>

      <xsl:apply-templates select="ProductDigital"></xsl:apply-templates>

    </tr>

  </xsl:template>

  <xsl:template match="ProductDigital">
    <td>
      <p>
        <xsl:apply-templates select="ProductDigitalDetail"></xsl:apply-templates>
      </p>
    </td>
  </xsl:template>
  <xsl:template match="ProductDigitalDetail">
    <xsl:value-of select="DigitalValue"></xsl:value-of>
  </xsl:template>

  <xsl:template match="Product" >
    <td>
      <div class="compare-item">
        <a  href="#" title="Xóa" class="remove-button compare-item remove-cpr">

          <xsl:attribute name="data-productid">
            <xsl:value-of select="ProductId"></xsl:value-of>
          </xsl:attribute>Xóa
        </a>
        <br/>
        <br/>
        <a class="product-image" href="http://lug.webcanhcam.com/vali-keo-echolac-pc108z-20-silver">
          <xsl:attribute name="href">
            <xsl:value-of select="Url"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="target">
            <xsl:value-of select="Target"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="title">
            <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
          <img border="0">
            <xsl:attribute name="src">
              <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
              <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
          </img>
        </a>
        <div class="item-name">
          <a class="link" href="http://lug.webcanhcam.com/vali-keo-echolac-pc108z-20-silver">
            <xsl:attribute name="href">
              <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of select="Title"></xsl:value-of>
          </a>

        </div>

        <div class="product-kind">
          <xsl:value-of select="SubTitle"></xsl:value-of>
        </div>
      </div>
    </td>
  </xsl:template>
</xsl:stylesheet>