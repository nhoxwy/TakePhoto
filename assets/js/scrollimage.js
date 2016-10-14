$(window).scroll(function() {
	if ($(this).scrollTop() > 500) {
		$('.hwd-1').fadeIn(1000);
	}
	else {
		$('.hwd-1').fadeOut();
	}
	if ($(this).scrollTop() > 550) {
		$('.hwd-3').fadeIn(1000);
	}
	else {
		$('.hwd-3').fadeOut(1000);
	}
	if ($(this).scrollTop() > 600) {
		$('.hwd-5').fadeIn(1000);
	}
	else {
		$('.hwd-5').fadeOut(1000);
	}
	if ($(this).scrollTop() > 600) {
		$('.hwd-7').fadeIn(1000);
	}
	else {
		$('.hwd-7').fadeOut(1000);
	}
});
