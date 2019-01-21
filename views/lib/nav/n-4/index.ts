export class TabNav4 {
	tabNav4 () {
		$('.canhcam-home-5 .home-list .tab-control .tab-panel:not(:first-child)').hide();
		$('.canhcam-home-5 .home-list .nav-control ul li a').on('click', function () {
			let getAtrr = $(this).attr('data-tab')
			$('.canhcam-home-5 .home-list .nav-control ul li a').removeClass('active')
			$(this).addClass('active')
			$('.canhcam-home-5 .home-list .tab-control .tab-panel').hide().removeClass('active')
			$('#' + getAtrr).show().addClass('active')
		})
	}
}