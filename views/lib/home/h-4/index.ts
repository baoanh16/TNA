export class Home4 {
	slideHome4() {
		if ($('.canhcam-home-4 .wrap-product').length) {
			let carouselSlider = tns({
				loop: true,
				container: '.canhcam-home-4 .wrap-product',
				items: 2,
				mouseDrag: true,
				controls: true,
				controlsContainer: "#home4-controls",
				swipeAngle: false,
				nav: false,
				gutter: 20,
				responsive: {
					576: {
						items: 3
					},
					768: {
						items: 4
					},
					992: {
						items: 5
					}
				}
			})
		}

	}
}