export class ProductDeatil {
	listsImages() {
		if ($('.canhcam-product-detail-1 .list-images').length) {
			let Bigslider = tns({
				loop: false,
				container: '.canhcam-product-detail-1 .list-images',
				navContainer: '.canhcam-product-detail-1 .list-thumb',
				items: 1,
				navAsThumbnails: true,
				mouseDrag: false,
				// controls: false,
				controlsContainer: "#customize-controls",
				swipeAngle: false,
			})
			Bigslider.events.on('transitionEnd', function () {
				if ($(window).width() > 992) {
					$('.zoomContainer').remove();

					$('.list-images .tns-slide-active img').elevateZoom({
						zoomWindowWidth: $('.list-images .tns-slide-active img').height(),
						zoomWindowHeight: $('.list-images .tns-slide-active img').height(),
						scrollZoom: true
					})
				} else {
					$('.zoomContainer').remove();

				}
			})
		}
		if ($('.canhcam-product-detail-1 .list-thumb').length) {
			let Smallslider = tns({
				loop: false,
				container: '.canhcam-product-detail-1 .list-thumb',
				items: 3,
				mouseDrag: true,
				nav: false,
				// prevButton: '<span class="lnr lnr-chevron-left"></span>',
				// nextButton: ,
				controls: false,
				gutter: 14,
				responsive: {
					'768': {
						gutter: 30,
					}
				}
				//axis: "vertical"
			})
			let _prev = document.querySelector("[data-controls='prev']"),
				_next = document.querySelector("[data-controls='next']");

			_prev.addEventListener('click', () => {
				Smallslider.goTo('prev');
			});
			_next.addEventListener('click', () => {
				Smallslider.goTo('next');
			});
		}


	};
}