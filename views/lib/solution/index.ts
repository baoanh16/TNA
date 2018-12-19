export class Solution {
	SolutionNav() {
		$('.solution-list .solution-navigation h3').on('click', function () {
			if (window.innerWidth < 992) {
				$(this).siblings('ul').slideToggle(400)
			}
		})
	}
}