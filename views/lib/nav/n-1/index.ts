export class MenuNews {
	toggleNews() {
		let btnMenuNew = $('.canhcam-nav-1 .nav-list .nav__toogle');
		let navMenuNew = $('.canhcam-nav-1 .nav-list nav');
		btnMenuNew.on('click' , function(){
			if ($(window).width() < 420) {
				navMenuNew.slideToggle()
			}
		})
	}
}