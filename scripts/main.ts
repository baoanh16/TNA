import { Header } from '../views/lib/header/index';


let header = new Header();

$(document).ready(function () {
	header.moveLanguage();
	header.moveCart();
	header.moveUser();
	header.moveSearch();
	header.toggleSearch();
	header.turnoffSearch();
	header.toggleMainNav();
	header.toggleCart();
	header.closeCart();
	let breakpoint = window.matchMedia("(max-width: 991.98px)")
	header.addBackdrop(breakpoint);
	breakpoint.addListener(header.addBackdrop);
	header.closeMainNav();
	header.toggleLang();
});