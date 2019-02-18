export class Carousel1 {
	slideCarousel() {
		if ($('.canhcam-carousel-1 .carousel-body').length) {
			let carouselSlider = tns({
				loop: true,
				container: '.canhcam-carousel-1 .carousel-body',
				items: 2.5,
				mouseDrag: true,
				controls: true,
				controlsContainer: "#carousel-controls",
				swipeAngle: false,
				nav: false,
				gutter: 30,
				responsive: {
					500: {
						items: 3
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