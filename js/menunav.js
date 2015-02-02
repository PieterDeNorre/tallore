$(document).ready(function(){  

	$('#navsoup').click(function() { // should be better selector than just li
  		$('li').removeClass('active'); // remove all active classes
  		$(this).addClass('active'); // add active class to element clicked
	
		$("#menu.salad").fadeOut(0);
		$("#menu.pasta").fadeOut(0);
		$("#menu.dessert").fadeOut(0);
		$("#menu.colddrinks").fadeOut(0);
		$("#menu.hotdrinks").fadeOut(0);
		$("#menu.soup").fadeIn(0);	


	});

	$('#navsalad').click(function() { // should be better selector than just li
  		$('li').removeClass('active'); // remove all active classes
  		$(this).addClass('active'); // add active class to element clicked

		$("#menu.soup").fadeOut(0);	
		$("#menu.pasta").fadeOut(0);
		$("#menu.dessert").fadeOut(0);
		$("#menu.colddrinks").fadeOut(0);
		$("#menu.hotdrinks").fadeOut(0);
		$("#menu.salad").fadeIn(0);
	});

	$('#navpasta').click(function() { // should be better selector than just li
  		$('li').removeClass('active'); // remove all active classes
  		$(this).addClass('active'); // add active class to element clicked

		$("#menu.soup").fadeOut(0);	
		$("#menu.salad").fadeOut(0);
		$("#menu.pasta").fadeIn(0);
		$("#menu.dessert").fadeOut(0);
		$("#menu.colddrinks").fadeOut(0);
		$("#menu.hotdrinks").fadeOut(0);
	});

	$('#navdessert').click(function() { // should be better selector than just li
  		$('li').removeClass('active'); // remove all active classes
  		$(this).addClass('active'); // add active class to element clicked

		$("#menu.soup").fadeOut(0);	
		$("#menu.salad").fadeOut(0);
		$("#menu.pasta").fadeOut(0);
		$("#menu.dessert").fadeIn(0);
		$("#menu.colddrinks").fadeOut(0);
		$("#menu.hotdrinks").fadeOut(0);
	});

	$('#navcolddrinks').click(function() { // should be better selector than just li
  		$('li').removeClass('active'); // remove all active classes
  		$(this).addClass('active'); // add active class to element clicked

		$("#menu.soup").fadeOut(0);	
		$("#menu.salad").fadeOut(0);
		$("#menu.pasta").fadeOut(0);
		$("#menu.dessert").fadeOut(0);
		$("#menu.colddrinks").fadeIn(0);
		$("#menu.hotdrinks").fadeOut(0);

	});

	$('#navhotdrinks').click(function() { // should be better selector than just li
  		$('li').removeClass('active'); // remove all active classes
  		$(this).addClass('active'); // add active class to element clicked

		$("#menu.soup").fadeOut(0);	
		$("#menu.salad").fadeOut(0);
		$("#menu.pasta").fadeOut(0);
		$("#menu.dessert").fadeOut(0);
		$("#menu.colddrinks").fadeOut(0);
		$("#menu.hotdrinks").fadeIn(0);
	});
});