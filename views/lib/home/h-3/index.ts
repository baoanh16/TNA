export class Home3 {
	slideHome3() {
		if ($('.canhcam-home-3 .wrap-service').length) {
			let carouselSlider = tns({
				loop: true,
				container: '.canhcam-home-3 .wrap-service',
				items: 1,
				mouseDrag: true,
				controls: true,
				controlsContainer: "#home3-controls",
				swipeAngle: false,
				nav: false,
				gutter: 2,
				responsive: {
					500: {
						items: 2
					},
					768: {
						items: 3
					},
					992: {
						items: 4
					}
				}
			})
		}

	}
}