import { Header } from '../views/lib/header/index';
import { MenuNews } from '../views/lib/nav/n-1/index';
import { Solution } from '../views/lib/solution/index';
import { galleryImages } from '../views/lib/gallery/g-1/index';
import { videoImages } from '../views/lib/video/v-1/index';
import { collapseFaq } from '../views/lib/faq/f-1/index'
import { ProductNav } from '../views/lib/nav/n-3/index'
import { Checkout } from '../views/lib/checkout/index';
import { CCBanner2 } from '../views/lib/breadcrumb/b-2/index';
import { ProductDeatil } from '../views/lib/product_detail/p-1/index'
import { ProductDetailTab } from '../views/lib/product_detail/p-2/index'
import { Carousel1 } from '../views/lib/carousel/c-1/index'
import { Banner1 } from '../views/lib/banner/b-1/index'
import { Home3 } from '../views/lib/home/h-3/index'
import { Home4 } from '../views/lib/home/h-4/index'
import { TabNav4 } from '../views/lib/nav/n-4/index'
import { Home6 } from '../views/lib/home/h-6/index'


let header = new Header();
let menunews = new MenuNews();
let solution = new Solution();
let galleryimages = new galleryImages();
let videoimages = new videoImages();
let collapsefaq = new collapseFaq();
let productnav = new ProductNav();
let checkout = new Checkout();
let ccbanner2 = new CCBanner2();
let productdeatil = new ProductDeatil();
let productdetailTab = new ProductDetailTab();
let carousel1 = new Carousel1();
let banner1 = new Banner1();
let home3 = new Home3();
let home4 = new Home4();
let tabnav4 = new TabNav4();
let home6 = new Home6();

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
	checkout.checkout_wo_register();
	checkout.checkout_w_register();
	productnav.toggleNavChild();

	// Banner 2 slide
	ccbanner2.bannerslide2();

	// Product detail
	productdeatil.listsImages();
	productdetailTab.tabToggle();
	productdetailTab.tabCollapse();
	carousel1.slideCarousel();

	// Index
	banner1.sliderBanner1()
	home3.slideHome3()
	home4.slideHome4()
	tabnav4.tabNav4()
	home6.slideHome6()
});

$(window).on('resize', function () {
	$('.backdrop').fadeOut()
	$('.cc-header .nav').removeClass('active')
})