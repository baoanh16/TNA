export class Home6 {
	slideHome6() {
		if ($('.canhcam-home-6 .wrap-partner').length) {
			let carouselSlider = tns({
				loop: true,
				container: '.canhcam-home-6 .wrap-partner',
				items: 2,
				mouseDrag: true,
				controls: true,
				controlsContainer: "#home6-controls",
				swipeAngle: false,
				nav: false,
				autoplay: true,
				autoplayTimeout: 3000,
				autoplayButtonOutput: false,
				gutter: 30,
				slideBy: 'page',
				responsive: {
					500: {
						items: 3
					},
					768: {
						items: 4
					},
					992: {
						items: 6
					}
				}
			})
		}

	}
}