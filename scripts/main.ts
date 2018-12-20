import { Header } from '../views/lib/header/index';
import { MenuNews } from '../views/lib/nav/n-1/index';
import { Solution } from '../views/lib/solution/index';
import { galleryImages } from '../views/lib/gallery/g-1/index';
import { videoImages } from '../views/lib/video/v-1/index';
import { collapseFaq } from '../views/lib/faq/f-1/index'
import { ProductNav } from '../views/lib/nav/n-3/index'
import { Checkout } from '../views/lib/checkout/index';

let header = new Header();
let menunews = new MenuNews();
let solution = new Solution();
let galleryimages = new galleryImages();
let videoimages = new videoImages();
let collapsefaq = new collapseFaq();
let productnav = new ProductNav();
let checkout = new Checkout();

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
	// News
	menunews.toggleNews();
	solution.SolutionNav();
	// Gallery
	galleryimages.thumImages();
	// Video
	videoimages.videoPopup();
	// FAQ
	collapsefaq.collapseToogle();
	// Product
	productnav.toggleNavFather(breakpoint);
	productnav.toggleNavChild();
	// Checkout
	checkout.minusQuantity();
	checkout.plusQuantity();
	checkout.viewedProductSlide();
	checkout.toggleOtherAddress();
	checkout.toggleExportBill();
	checkout.sameInfo();
	checkout.choosePaymentMethod();
});

$(window).on('resize', function () {
	$('.backdrop').fadeOut()
	$('.cc-header .nav').removeClass('active')
})