export class ProductDetailTab {
	tabToggle() {
		$('.canhcam-product-detail-2 .product-list .tab-control .tab-panel:not(:first-child)').hide();
		$('.canhcam-product-detail-2 .product-list .nav-control ul li a').on('click', function () {
			let getAtrr = $(this).attr('data-tab')
			$('.canhcam-product-detail-2 .product-list .nav-control ul li a').removeClass('active')
			$(this).addClass('active')
			$('.canhcam-product-detail-2 .product-list .tab-control .tab-panel').hide().removeClass('active')
			$('#' + getAtrr).show().addClass('active')
		})
	}
	tabCollapse() {
		$('.canhcam-tab-2 .tabs-list .tab-content:not(:first-child) .tab-table').hide();
		// $('.canhcam-tab-2 .tabs-list .content ').trigger('click');
		$('.canhcam-tab-2 .tabs-list .tab-content .tab-title ').click(function () {
			if ($(this).next().is(':hidden') === true) {
				$('.canhcam-tab-2 .tab-content .tab-table').slideUp('fast');
				$('.canhcam-tab-2 .tabs-list .tab-content .tab-title ').removeClass('active');
				$(this).next().slideDown('fast');
				$(this).addClass('active');
			} else {
				$('.canhcam-tab-2 .tabs-list .tab-content .tab-title ').removeClass('active');
				$(this).next().slideUp('fast');
			}
		});
	}
}