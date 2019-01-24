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

const setSrcImage = (el) => {
	let src = el.getAttribute('data-src')
	el.setAttribute('src', src)
}

var findImage = () => {
	let imgList = document.querySelectorAll('.lazyload')
	for (var i = 0; i < imgList.length; i++) {
		let offsetTop = imgList[i].getBoundingClientRect().top + window.scrollY
		if (window.scrollY + window.innerHeight * 1.05 >= offsetTop) {
			var i = i;
			setSrcImage(imgList[i])
		}
	}
}

document.addEventListener('scroll', () => {
	findImage();
})

$(document).ready(function () {
	function aosRun(x) {
		if (x.matches) {
			AOS.init();
		} else {
			$('[data-aos]').removeAttr('data-aos')
		}
	}
	let aosBP = window.matchMedia("(min-width: 768px)")
	aosRun(aosBP);
	aosBP.addListener(aosRun);
	findImage();
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
	// header.toggleUser();
	header.toggleChildmenu();
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
	checkout.refreshCart();
	checkout.viewedProductAddCart();
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
	if ($('.canhcam-contact-2 .contact-list .frm-btnwrap').length > 0) {

		let moveButtonFormContact = new MappingListener({
			selector: '.canhcam-contact-2 .contact-list .frm-btnwrap',
			desktopWrapper: '.Module-228 .col-lg-7',
			desktopMethod: 'appendTo',
			mobileWrapper: '.Module-228 .col-lg-7',
			mobileMethod: 'appendTo',
			breakpoint: 992,
		}).watch()
	}

	$('.searchinput').on('keydown', function (e) {
		if (e.keyCode === 13) {
			$(this).siblings('button').trigger('click')
		}
	})
	$('.jobs-list .apply').click(function () {
		$('.job-apply-form').slideToggle();
	})

	$('.login-panel .forget label').on('click', function (e) {
		$(this).toggleClass('active')
	})
	// Find Product
	if (('.product-search input').length > 0) {
		$("body").on("click", ".product-search button", function (e) {
			e.preventDefault();
			KeyWordSearh();
		});

		function KeyWordSearh() {
			let linkSearch = $("#urlKeywordUrlOutParam").val();
			let keyWord = $(".product-search input").val();
			if (keyWord != '') {
				if (linkSearch.indexOf("?") > 0)
					linkSearch = linkSearch + "&keyword=" + keyWord;
				else
					linkSearch = linkSearch + "?keyword=" + keyWord;
			}
			ProcessAjax(linkSearch);
		}
		SetupScriptSearch();

		function SetupScriptSearch() {
			$('.product-search input').bind("enterKey", function (e) {
				e.preventDefault();
				KeyWordSearh();
				return false;
			});
			$('.product-search input').keyup(function (e) {
				if (e.keyCode == 13) {
					$('.product-search button').trigger('click')
					// $(this).trigger("enterKey");
					e.preventDefault();
					return false;
				}
			});
			$('#aspnetForm').on('keyup keypress', function (e) {
				let keyCode = e.keyCode || e.which;
				if (keyCode === 13) {
					$('.product-search button').trigger('click')
					e.preventDefault();
					return false;
				}
			});
			$(".product-search input").val($("#txtKeyword").val());
		}
	}
	if (('.solution-title .form-search input').length > 0) {
		$("body").on("click", ".solution-title .form-search button", function (e) {
			e.preventDefault();
			KeyWordSearh();
		});

		function KeyWordSearh() {
			let linkSearch = $("#urlKeywordUrlOutParam").val();
			let keyWord = $(".solution-title .form-search input").val();
			if (keyWord != '') {
				if (linkSearch.indexOf("?") > 0)
					linkSearch = linkSearch + "&keyword=" + keyWord;
				else
					linkSearch = linkSearch + "?keyword=" + keyWord;
			}
			ProcessAjax(linkSearch);
		}
		SetupScriptSearch();

		function SetupScriptSearch() {
			$('.solution-title .form-search input').bind("enterKey", function (e) {
				e.preventDefault();
				KeyWordSearh();
				return false;
			});
			$('.solution-title .form-search input').keyup(function (e) {
				if (e.keyCode == 13) {
					$('.solution-title .form-search button').trigger('click')
					// $(this).trigger("enterKey");
					e.preventDefault();
					return false;
				}
			});
			$('#aspnetForm').on('keyup keypress', function (e) {
				let keyCode = e.keyCode || e.which;
				if (keyCode === 13) {
					$('.solution-title .form-search button').trigger('click')
					e.preventDefault();
					return false;
				}
			});
			$(".solution-title .form-search input").val($("#txtKeyword").val());
		}
	}
	$("#ctl00_mainContent_RegisterUser_CreateUserStepContainer_txtLastName").keydown(function (e) {
		if (e.which == 9) {
			// $("#ctl00_mainContent_RegisterUser_CreateUserStepContainer_iscProvince_ddProvince").html(this.value);
			// this.value = "";
			$('#ctl00_mainContent_RegisterUser_CreateUserStepContainer_iscProvince_ddProvince').focus()
			$('#ctl00_mainContent_RegisterUser_CreateUserStepContainer_captcha_CaptchaTextBox').trigger('click')
			e.preventDefault();
		}
	});
	$("#ctl00_mainContent_RegisterUser_CreateUserStepContainer_iscProvince_ddProvince").keydown(function (e) {
		if (e.which == 9) {
			// $("#ctl00_mainContent_RegisterUser_CreateUserStepContainer_captcha_CaptchaTextBox").html(this.value);
			// this.value = "";
			$('#ctl00_mainContent_RegisterUser_CreateUserStepContainer_captcha_CaptchaTextBox').focus()
			e.preventDefault();
		}
	});
	if ($('.user .firstnav').length > 0) {
		let moveButtonFormContact = new MappingListener({
			selector: '.user .firstnav a',
			desktopWrapper: '.user-toggle',
			desktopMethod: 'appendTo',
			mobileWrapper: '.user-toggle',
			mobileMethod: 'appendTo',
			breakpoint: 992,
		}).watch()
		let moveButtonFormContact2 = new MappingListener({
			selector: '.user li:nth-child(2) a',
			desktopWrapper: '.user-toggle',
			desktopMethod: 'appendTo',
			mobileWrapper: '.user-toggle',
			mobileMethod: 'appendTo',
			breakpoint: 992,
		}).watch()
		$('.user-toggle').addClass('logined')
		$('.firstnav').hide()
		$('.user-panel').hide()
	};
	// $('.product-images .list-images .item img').elevateZoom({
	// 	zoomWindowFadeIn: 100,
	// 	zoomWindowFadeOut: 100,
	// 	lensFadeIn: 50,
	// 	lensFadeOut: 50,
	// 	scrollZoom: true
	// });
	var arr = document.querySelectorAll('.boxzoom')
	var max = arr[0].clientHeight
	for (var i = 0; i++; i < arr.length) {
		if (arr[i].clientHeight >= max) {
			max = arr[i].clientHeight
		}
	} $('.boxzoom').height(max)
});


// Function Find Product 
function ProcessAjax(pageurl, obj) {
	//to get the ajax content and display in div with id 'content'
	$.ajax({
		url: pageurl,
		data: { isajax: true },
		success: function (data) {
			var linkajaxs = $(".ajaxfilterresponse .ajaxlink");
			var newlinkajaxs = $(data).find('.ajaxfilterresponse .ajaxlink');
			var i;
			for (i = 0; i < linkajaxs.length; i++) {
				var oldlink = $(linkajaxs[i]);
				var newlink = $(newlinkajaxs[i]);
				if (oldlink.text() == newlink.text()) {
					if (newlink.hasClass('active'))
						oldlink.addClass('active');
					else
						oldlink.removeClass('active');

					oldlink.attr("title", newlink.attr("title"));
					oldlink.attr("href", newlink.attr("href"));
				}
			}
			//$('.ajaxresponsewrap').html($(data).find('.ajaxresponsewrap').html());
			$('.ajaxfilterresponse').html($(data).find('.ajaxfilterresponse').html());
			//$('.ajaxbrandresponse').html($(data).find('.ajaxbrandresponse').html());
			$('.ajaxresponse').html($(data).find(".ajaxresponse").html());
			//$('.project-number').html($(data).find('.project-number').html());
			$('.productpager').remove();
			$(data).find('.productpager').insertAfter($('.ajaxresponse'));
			//$(".filter-count").removeClass("hidden");
			//$(".filter-count .amount").text($(data).find(".totalproduct").text());

			//CanhCamResponsive();
		}
	});

	//to change the browser URL to 'pageurl'
	if (pageurl != window.location) {
		window.history.pushState({ path: pageurl }, '', pageurl);
	}
}

$(window).on('resize', function () {
	$('.backdrop').fadeOut()
	$('.cc-header .nav').removeClass('active')
})