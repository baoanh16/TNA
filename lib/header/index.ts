export class Header {
	toggleCart() {
		$('.cart-toggle').on('click', function () {
			$('.cart .cart-panel').toggleClass('active')
		})
	}
	closeCart() {
		$('body').on('click', '.cart-panel .cart-header .fas', function () {
			$('.cart .cart-panel').removeClass('active')
		})
	}
	moveSearch() {
		let moveSearch = new MappingListener({
			selector: '.search',
			desktopWrapper: '.desktop-container .user',
			desktopMethod: 'insertAfter',
			mobileWrapper: '.desktop-container .logo-wrap',
			mobileMethod: 'insertAfter',
			breakpoint: 992,
		}).watch()
	}
	moveCart() {
		let moveCart = new MappingListener({
			selector: '.cart',
			desktopWrapper: '.desktop-container .language',
			desktopMethod: 'insertAfter',
			mobileWrapper: '.mobile-container',
			mobileMethod: 'prependTo',
			breakpoint: 992,
		}).watch()
	}
}