<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <xsl:apply-templates select="/OrderDetails/OrderItems"></xsl:apply-templates>
    <div class="row">
      <div class="col-12 col-md-6"></div>
      <div class="col-12 col-md-6">
        <div class="cart-fee">
          <div class="group">
            <div class="label">Tổng giá trị sản phẩm:</div>
            <div class="value">
              <xsl:value-of select="/OrderDetails/OrderSubTotal"></xsl:value-of>
            </div>
          </div>
          <div class="group">
            <div class="label">Phí vận chuyển:</div>
            <div class="value">
              <xsl:value-of select="/OrderDetails/ShippingFee"></xsl:value-of>
            </div>
          </div>
          <div class="group">
            <div class="label">Giảm giá:</div>
            <div class="value">
              <xsl:value-of select="/OrderDetails/OrderDiscount"></xsl:value-of>
            </div>
          </div>
          <div class="group total">
            <div class="label">
              Tổng giá trị đơn hàng:
            </div>
            <div class="value">
              <xsl:value-of select="/OrderDetails/OrderTotal"></xsl:value-of>
            </div>
          </div>
        </div>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="OrderItems">
    <div class="cart-table">
      <div class="cart-item">
        <figure>
          <a class="item-img">
            <img>
              <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="alt">
                <xsl:value-of select="Title"></xsl:value-of>
              </xsl:attribute>
            </img>
          </a>
          <figcaption>
            <div class="item-info">
              <div class="item-name">
                <xsl:value-of select="Title"></xsl:value-of>
              </div>
              <xsl:apply-templates select="Attributes"></xsl:apply-templates>
              <div class="item-amount">
                Số lượng: 
                <input type="text">
                  <xsl:attribute name="value">
                    <xsl:value-of select="Quantity"></xsl:value-of>
                  </xsl:attribute>
                </input>
              </div>
            </div>
            <div class="item-price">
              <div class="new">
                <xsl:value-of select="Price"></xsl:value-of>
              </div>
              <div class="old">
                <xsl:value-of select="OriginalPrice"></xsl:value-of>
              </div>
            </div>
          </figcaption>
        </figure>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="Attributes">
    <div class="item-amount">
      <xsl:value-of select="Title"></xsl:value-of>
      <xsl:text>: </xsl:text>
      <xsl:apply-templates select="Options"></xsl:apply-templates>
    </div>
  </xsl:template>
  
  <xsl:template match="Options">
    <xsl:value-of select="Title"></xsl:value-of>
  </xsl:template>
</xsl:stylesheet>