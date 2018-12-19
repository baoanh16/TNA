export class ProductNav {
	toggleNavFather(x: any) {
		if (x.matches) {
			$('.canhcam-nav-3 .navs-list nav').slideUp()
			$('.canhcam-nav-3 .navs-list h2').on('click' , function(){
				$(this).toggleClass('active')
				$('.canhcam-nav-3 .navs-list nav').slideToggle()
			})
		}
	} ;
	toggleNavChild(){
		$('.canhcam-nav-3 .navs-list nav ul li:not(:first-child) .nav-sub').hide();
		// $('.canhcam-nav-3 .navs-list ul li .nav-sub').hide();
		$('.canhcam-nav-3 .navs-list ul li > .collapse-btn').click(function () {
			console.log($(this).next());
			if ($(this).next().is(':hidden') === true) {
				$('.canhcam-nav-3 .navs-list nav .nav-sub').slideUp('fast');
				$('.canhcam-nav-3 .navs-list ul li > .collapse-btn').removeClass('active');
				$('.canhcam-nav-3 .navs-list ul li > a').removeClass('active');
				$(this).next().slideDown('fast');
				$(this).addClass('active');
				$(this).prev().addClass('active')
			} else {
				$('.canhcam-nav-3 .navs-list nav > .collapse-btn').removeClass('active');
				$('.canhcam-nav-3 .navs-list nav > a').removeClass('active');
				$(this).next().slideUp('fast');
			}
		});
	}

}