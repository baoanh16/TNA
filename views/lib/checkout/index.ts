export class Checkout {
	minusQuantity() {
		$('.minus').each(function () {
			$(this).on('click', function () {
				let quantity: number = parseInt($(this).siblings('.quantity-number').attr('value'))
				if ($(this).siblings('.quantity-number').val() <= 0) {
					quantity = 0;
				} else {
					quantity = quantity - 1;
				}
				$(this).siblings('.quantity-number').attr('value', quantity)
			})
		})
	}
	plusQuantity() {
		$('.plus').each(function () {
			$(this).on('click', function () {
				let quantity: number = parseInt($(this).siblings('.quantity-number').attr('value'))
				quantity = quantity + 1;
				$(this).siblings('.quantity-number').attr('value', quantity)
			})
		})
	}
}