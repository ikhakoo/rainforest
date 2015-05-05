// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.

$(document).on('ready page:load', function(){
	$(window).scroll(function(){
		var url = $('.pagination span.next').children().attr('href');
		if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 50) {
			$('pagination').text("Fetching more products...");
			return $.getScript(url);
		}
	});
});

$(document).ready(function(){
	$('#search_form').submit(function(e){
		e.preventDefault();
		var searchValue = $('#search').val();

		$.ajax({
			url: '/products?search=' + searchValue,
			type: 'GET',
			dataType: 'html',
			success: function(data, status){
				console.log(data);
				console.log(status);
				$('#products').html(data);
			},
			error: function(xhr, status, error){
				alert("something bad happened!: " + error);
			}, 
			complete: function(xhr, status){
				console.log('complete');
			}

		});
	});

});
