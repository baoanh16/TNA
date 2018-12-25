export class ProductNav {
	toggleNavFather(x: any) {
		if (x.matches) {

		}
	};
	toggleNavChild() {
		$('.canhcam-nav-3 .navs-list nav>ul>li').on('click', function (e) {
			console.log(this);

		})
	}

}