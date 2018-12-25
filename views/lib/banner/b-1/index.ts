export class Banner1 {
	sliderBanner1() {
		let swiper = new Swiper('.canhcam-banner-1 .banners-list .swiper-container', {
			pagination: {
				el: '.swiper-pagination',
				clickable: true,
			},
			autoplay: {
				delay: 3000,
				disableOnInteraction: false,
			},
		});
	}
	// getHeightBanner1() {
	// 	let getHeightHeader = $('header').outerHeight()
	// 	$(".canhcam-banner-1 .banners-list .swiper-container .swiper-slide").each((i, e) => {
	// 		$(e).css({
	// 			'height': 'calc(100vh - ' + getHeightHeader + 'px)'
	// 		})
	// 	})
	// }
}