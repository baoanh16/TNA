export class Header {
	moveUser() {
		let moveUser = new MappingListener({
			selector: '.user',
			desktopWrapper: '.toolbar .cart',
			desktopMethod: 'insertAfter',
			mobileWrapper: '.main-navbar .nav',
			mobileMethod: 'prependTo',
			breakpoint: 992,
		}).watch()
	};
	moveSearch() {
		let moveUser = new MappingListener({
			selector: '.search',
			desktopWrapper: '.toolbar .language',
			desktopMethod: 'insertAfter',
			mobileWrapper: '.menu-wrap .logo-wrap',
			mobileMethod: 'insertAfter',
			breakpoint: 992,
		}).watch()
	}
}