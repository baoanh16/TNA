export class Carousel1 {
	slideCarousel (){
		let carouselSlider = tns({
			loop: true,
			container: '.canhcam-carousel-1 .carousel-body',
			items: 1,
			mouseDrag: true,
			controls: true,
			controlsContainer: "#carousel-controls",
			swipeAngle: false,
			nav: false,
			gutter: 30,
			responsive: {
				500: {
					items: 2
				} ,
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