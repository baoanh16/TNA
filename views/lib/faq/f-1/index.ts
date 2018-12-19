export class collapseFaq {
	collapseToogle() {
		$('.canhcam-faq-1 .faqs-list .faq-block:not(:first-child) .faq-answer').hide();
		// $('.canhcam-suppport-1 .list-detail .content ').trigger('click');
		$('.canhcam-faq-1 .faqs-list .faq-block .faq-question').click(function () {
			if ($(this).next().is(':hidden') === true) {
				$('.canhcam-faq-1 .faqs-list .faq-block .faq-answer').slideUp('fast');
				$('.canhcam-faq-1 .faqs-list .faq-block .faq-question ').removeClass('active');
				$(this).next().slideDown('fast');
				$(this).addClass('active');
			} else {
				$('.canhcam-faq-1 .faqs-list .faq-block .faq-question').removeClass('active');
				$(this).next().slideUp('fast');
			}
		});
	}
}