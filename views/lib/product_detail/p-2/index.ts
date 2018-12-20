export class ProductDetailTab {
	tabToggle () {
		$('.canhcam-product-detail-2 .product-list .tab-control .tab-panel:not(:first-child)').hide();
		$('.canhcam-product-detail-2 .product-list .nav-control ul li a').on('click' , function(){
			let getAtrr = $(this).attr('data-tab')
			$('.canhcam-product-detail-2 .product-list .nav-control ul li a').removeClass('active')
			$(this).addClass('active')
			$('.canhcam-product-detail-2 .product-list .tab-control .tab-panel').hide().removeClass('active')
			$('#'+ getAtrr).show().addClass('active')
		})
	}
}