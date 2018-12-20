import { Header } from '../views/lib/header/index';
import { MenuNews } from '../views/lib/nav/n-1/index';
import { galleryImages } from '../views/lib/gallery/g-1/index';
import { videoImages } from '../views/lib/video/v-1/index';
import { collapseFaq } from '../views/lib/faq/f-1/index'
import {ProductNav} from '../views/lib/nav/n-3/index';
import {CCBanner2} from '../views/lib/breadcrumb/b-2/index';
import {ProductDeatil} from '../views/lib/product_detail/p-1/index'
import {ProductDetailTab} from '../views/lib/product_detail/p-2/index'


let header = new Header();
let menunews = new MenuNews();
let galleryimages = new galleryImages();
let videoimages = new videoImages();
let collapsefaq = new collapseFaq();
let productnav = new ProductNav();
let ccbanner2 = new CCBanner2();
let productdeatil = new ProductDeatil();
let productdetailTab = new ProductDetailTab();

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
	// Gallery
	galleryimages.thumImages();
	// Video
	videoimages.videoPopup();
	// FAQ
	collapsefaq.collapseToogle();
	// Product
	productnav.toggleNavFather(breakpoint);
	productnav.	toggleNavChild();

	// Banner 2 slide
	ccbanner2.bannerslide2()

	// Product detail
	productdeatil.listsImages()
	productdetailTab.tabToggle()
});

$(window).on('resize', function () {
	$('.backdrop').fadeOut()
	$('.cc-header .nav').removeClass('active')
})