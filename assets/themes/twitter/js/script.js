
$(function() {

	// decorate all tables so they look nice
	$("table").addClass("table")
		.addClass("table-striped")
		.addClass("table-condensed")
		.addClass("table-bordered")
	;

	// adjust size of embedded videos to smaller screens
	$(".video-container").fitVids();

});
