$(document).ready(function(){  
	$("#nav.menu").hover( function() { $("#BG.menu").fadeIn(500); }, 
		function() { $("#BG.menu").fadeOut(500); }); 
	$("#nav.about").hover( function() { $("#BG.about").fadeIn(500); }, 
		function() { $("#BG.about").fadeOut(500); }); 
	$("#nav.contact").hover( function() { $("#BG.contact").fadeIn(500); }, 
		function() { $("#BG.contact").fadeOut(500); }); 
	$("#sotd.soup").hover( function() { $("#BG.soup").fadeIn(500); 	}, 
		function() { $("#BG.soup").fadeOut(500); }); 
	
	$('#nav.menu').click(function(){
		 $('html, body').animate({
			 scrollTop: $('#container.menu').offset().top
		}, 1500);
	});
	$('#nav.about').click(function(){
		 $('html, body').animate({
			 scrollTop: $('#container.about').offset().top
		}, 1500);
	}); 
	$('#nav.contact').click(function(){
		 $('html, body').animate({
			 scrollTop: $('#container.contact').offset().top
		}, 1500);
	}); 
});