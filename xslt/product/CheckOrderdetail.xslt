<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <div class="col-xs-12 col-lg-9">
      <section class="user-page clearfix">
        <h1 class="postname">
          <xsl:text>Đơn hàng #</xsl:text>
          <xsl:value-of select="/ProductList/OrderCode"></xsl:value-of>
		   
        </h1>        
        <div class="shipping-step clearfix">
          <div class="step">
            <xsl:if test="/ProductList/ProcessingStatus='True'">
              <xsl:attribute name="class">
                <xsl:text>step active</xsl:text>
              </xsl:attribute>
            </xsl:if>
            <div class="icon">
              <img src="/Data/Sites/1/skins/default/img/icon/s1.png" alt=""/>
            </div>
            <div class="name">Đang xử lý</div>
          </div>
          <div class="step">
            <xsl:if test="/ProductList/DeliveryStatus='True'">
              <xsl:attribute name="class">
                <xsl:text>step active</xsl:text>
              </xsl:attribute>
            </xsl:if>
            <div class="icon">
              <img src="/Data/Sites/1/skins/default/img/icon/s2.png" alt=""/>
            </div>
            <div class="name">Đang chuyển hàng</div>
          </div>
          <div class="step">
            <xsl:if test="/ProductList/CompletedStatus='True'">
              <xsl:attribute name="class">
                <xsl:text>step active</xsl:text>
              </xsl:attribute>
            </xsl:if>
            <div class="icon">
              <img src="/Data/Sites/1/skins/default/img/icon/s3.png" alt=""/>
            </div>
            <div class="name">Đơn hàng thành công</div>
          </div>
        </div>
        <div class="cart-history clearfix">
          <div class="row flex flex-wrap">
            <article class="col-xs-12 col-md-6">
              <section class="cart-info clearfix">
                <div class="title">Thông tin khách hàng
                </div>
                <div class="cart-detail">
                  <div class="form-group">
                    <div class="label">Website: </div>
                    <div class="value">SkyWatch</div>
                  </div>
                  <div class="form-group">
                    <div class="label">Tên người nhận: </div>
                    <div class="value">
                      <xsl:value-of select="/ProductList/BillingLastName"></xsl:value-of>
                      <xsl:text> </xsl:text>
                      <xsl:value-of select="/ProductList/BillingFirstName"></xsl:value-of>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="label">Số điện thoại: </div>
                    <div class="value">
                      <xsl:value-of select="/ProductList/BillingPhone"></xsl:value-of>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="label">Email: </div>
                    <div class="value">
                      <xsl:value-of select="/ProductList/BillingEmail"></xsl:value-of>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="label">Địa chỉ nhận hàng: </div>
                    <div class="value">
                      <xsl:value-of select="/ProductList/BillingAddress"></xsl:value-of>
                    </div>
                  </div>
                </div>
              </section>
            </article>
            <article class="col-xs-12 col-md-6">
              <section class="cart-info clearfix">
                <div class="title">Thông tin khách hàng
                </div>
                <div class="cart-detail">
                  <div class="form-group">
                    <div class="label">
                      <strong>
                        <xsl:text>Ngày dự kiến giao hàng: </xsl:text>
                      </strong>
                    </div>
                    <div class="value">
                      <xsl:value-of select="/ProductList/OrderDate"></xsl:value-of>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="label">
                      <xsl:value-of select="/ProductList/PaymentMethodText"></xsl:value-of>
                      <xsl:text>: </xsl:text>
                    </div>
                    <div class="value">
                      <xsl:value-of select="/ProductList/PaymentMethod"></xsl:value-of>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="label">Phương thức vận chuyển: </div>
                    <div class="value">
                      <xsl:value-of select="/ProductList/ShippingMethod"></xsl:value-of>
                    </div>
                  </div>
                  <xsl:if test="/ProductList/OrderNote!=''">
                    <div class="form-group">
                      <div class="label">Ghi chú: </div>
                      <div class="value">
                        <xsl:value-of select="/ProductList/OrderNote"></xsl:value-of>
                      </div>
                    </div>
                  </xsl:if>
                </div>
              </section>
            </article>
			<xsl:if test="/ProductList/InvoiceCompanyAddress!=''">
			
            <article class="col-xs-12 col-md-12">
              <section class="cart-info clearfix">
                <div class="title">Thông tin Xuất hóa đơn
                </div>
                <div class="cart-detail">
                  <div class="form-group">
                    <div class="label">
                      <strong>
                        <xsl:text>Mã số thuế: </xsl:text>
                      </strong>
                    </div>
                    <div class="value">
                      <xsl:value-of select="/ProductList/InvoiceCompanyTaxCode"></xsl:value-of>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="label">
                        <xsl:text>Tên công ty: </xsl:text>
                    </div>
                    <div class="value">
                      <xsl:value-of select="/ProductList/InvoiceCompanyName"></xsl:value-of>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="label"><xsl:text>Địa chỉ công ty: </xsl:text> </div>
                    <div class="value">
                      <xsl:value-of select="/ProductList/InvoiceCompanyAddress"></xsl:value-of>
                    </div>
                  </div>
                </div>
              </section>
            </article>
			</xsl:if>
          </div>
          <div class="table-responsive">
            <table class="table">
              <thead>
                <tr>
                  <th>
				  Sản Phẩm
                  </th>
                  <th>
				  Giá
                  </th>
                  <th>
                    <xsl:text>Số lượng</xsl:text>
                  </th>
                  <th>
				  Tổng
                  </th>
                </tr>
              </thead>
              <tbody>
                <xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
              </tbody>
            </table>
          </div>
          <div class="total-amount clearfix">
            <div class="label">
              <xsl:text>Phí vận chuyển: </xsl:text>
            </div>
            <div class="value">
              <xsl:value-of select="/ProductList/OrderShipping"></xsl:value-of>
            </div>
            <div class="label">
              <xsl:text>Giảm giá: </xsl:text>
            </div>
            <div class="value">
              <xsl:value-of select="/ProductList/OrderDiscount"></xsl:value-of>
            </div>
            <div class="label">
              <xsl:text>Tổng số tiền: </xsl:text>
            </div>
            <div class="value">
              <xsl:value-of select="/ProductList/OrderTotal"></xsl:value-of>
            </div>
          </div>
          <a href="/Product/PurchaseHistory.aspx" class="btn-back">
            <xsl:value-of select="/ProductList/Back"></xsl:value-of>
          </a>
        </div>
      </section>
    </div>
  </xsl:template>

  <!--<xsl:template match="Status">
    <xsl:if test="Value&lt;3">
      <li>
        <xsl:attribute name="data-value">
          <xsl:value-of select="Value"></xsl:value-of>
        </xsl:attribute>
        <xsl:if test="/ProductList/OrderStatusValue = Value">
          <xsl:attribute name="class">
            <xsl:text>active</xsl:text>
          </xsl:attribute>
        </xsl:if>
        <xsl:value-of select="Name"></xsl:value-of>
      </li>
    </xsl:if>
  </xsl:template>-->

  <xsl:template match="Product">
    <tr>
      <td>
        <a>
          <xsl:attribute name="href">
            <xsl:value-of select="Url"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="target">
            <xsl:value-of select="Target"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="title">
            <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
          <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
        </a>
      </td>
      <td>
        <xsl:value-of select="UnitPrice"></xsl:value-of>
      </td>
      <td>
        <xsl:value-of select="Quantity"></xsl:value-of>
      </td>
      <td>
        <xsl:value-of select="ProductAmount"></xsl:value-of>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>