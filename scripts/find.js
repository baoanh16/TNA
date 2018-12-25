var siteRoot = "";
$(document).ready(function () {

	if (('.store-nav .store-search input').length > 0) {
		$(".store-nav .store-search").on("click", "button", function (e) {
			e.preventDefault();
			KeyWordSearh();
		});

		function KeyWordSearh() {
			var linkSearch = $("#urlKeywordUrlOutParam").val();
			var keyWord = $(".store-nav .store-search input").val();
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
			$('.store-nav .store-search input').bind("enterKey", function (e) {
				e.preventDefault();
				KeyWordSearh();
				return false;
			});
			$('.store-nav .store-search input').keyup(function (e) {
				if (e.keyCode == 13) {
					$(this).trigger("enterKey");
					e.preventDefault();
					return false;
				}
			});
			$('#aspnetForm').on('keyup keypress', function (e) {
				var keyCode = e.keyCode || e.which;
				if (keyCode === 13) {
					e.preventDefault();
					return false;
				}
			});
			$(".store-search input").val($("#txtKeyword").val());
		}
	}

	/****************/
	/* Ajax process */
	/****************/
	$("body").on("change", '.ajaxsort', function () {
		ProcessAjax($(this).val());
	});

	if ($(window).width() >= 1200) {
		$("body").on("click", '.filter-group .title', function (e) {
			var obj = $(this);

			if (obj.hasClass('active')) {
				obj.removeClass('active');
				obj.parent().find('.product-category').slideUp(300);
			} else {
				$('.filter-group .title').removeClass('active');
				$('.filter-group .product-category').slideUp();
				obj.addClass('active');
				obj.parent().find('.product-category').slideDown(300);
			}

		});
	}

	$("body").on("click", 'a.ajaxlink', function (e) {
		e.preventDefault();
        /*  
        if uncomment the above line, html5 nonsupported browers won't change the url but will display the ajax content;
        if commented, html5 nonsupported browers will reload the page to the specified link. 
        */

		ProcessAjax($(this).attr('href'), this);

		//window.scrollTo(0, 0);
		if ($(this).parent().hasClass('reset_wrap'))
			initSlider();

		return false;
	});

	$("body").on("change", ".product-category select", function (e) {
		e.preventDefault();
        /*  
        if uncomment the above line, html5 nonsupported browers won't change the url but will display the ajax content;
        if commented, html5 nonsupported browers will reload the page to the specified link. 
        */

		if ($(this).val() != '')
			ProcessAjax($(this).val());
		else {
			pageurl = $('.urlwithprice').attr('href');
			ProcessAjax(pageurl);
		}

		//window.scrollTo(0, 0);
		if ($(this).parent().hasClass('reset_wrap'))
			initSlider();

		return false;
	});

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
				$('.ajaxresponse').html($(data).filter(".ajaxresponse"));
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

	$("body").on("click", "a.ajaxpagerlink", function (e) {
		e.preventDefault();
        /*  
        if uncomment the above line, html5 nonsupported browers won't change the url but will display the ajax content;
        if commented, html5 nonsupported browers will reload the page to the specified link. 
        */

		//get the link location that was clicked
		obj = $(this);
		pageurl = $(this).attr('href');

		//to get the ajax content and display in div with id 'content'
		$.ajax({
			url: pageurl,
			data: { isajax: true },
			success: function (data) {
				console.log(obj);

				$('.ajaxresponse .ajaxresponsewrap').append($(data).find('.ajaxresponsewrap').html());
				obj.remove();
			}
		});

		//to change the browser URL to 'pageurl'
		if (pageurl != window.location) {
			window.history.pushState({ path: pageurl }, '', pageurl);
		}
		//window.scrollTo(0, 0);

		return false;
	});

	/* the below code is to override back button to get the ajax content without reload*/
	$(window).bind('popstate', function () {
		$.ajax({
			url: location.pathname,
			data: { isajax: true },
			success: function (data) {
				$('.ajaxresponse').html($(data).filter('.ajaxresponse').html());
				$('.ajaxfilterresponse').html($(data).find('.ajaxfilterresponse').html());
				$('.ajaxbrandresponse').html($(data).find('.ajaxbrandresponse').html());
			}
		});
	});

	/*************************************************************************************************************/
    /* END FILTER
    /*************************************************************************************************************/

});