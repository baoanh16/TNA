import { Header } from '../views/lib/header/index';
import { MenuNews } from '../views/lib/nav/n-1/index';
import { Solution } from '../views/lib/solution/index';


let header = new Header();
let menunews = new MenuNews();
let solution = new Solution();

$(document).ready(function () {
	// Header
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
	// Trang nào đây?? :V
	menunews.toggleNews();
	solution.SolutionNav();
});

$(window).on('resize', function () {
	$('.backdrop').fadeOut()
	$('.cc-header .nav').removeClass('active')
})