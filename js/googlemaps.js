			function init_map(){
			var 
				myOptions = {
					zoom:18,
					center:new google.maps.LatLng(22.27595150, 114.1721588),mapTypeId: google.maps.MapTypeId.ROADMAP,
					zoomControl: false,
					scrollwheel: false,
					panControl: false,
					mapTypeControl: false,
					streetViewControl: false,
					styles: [
						{	
							stylers: [
								{ visibility: "simplified" },
								{ color: "#000000"},
								{ lightness: 25}
							]
						},
						{
   							featureType: 'road',
    							elementType: 'geometry',
   							stylers: [
      								{ color: '#000000'},
      								{ lightness: 30}
    							]
  						},
  						{
   							featureType: 'road',
    							elementType: 'geometry.stroke',
   							stylers: [
      								{ color: '#000000'},
      								{ lightness: 25}
    							]
  						},
  						{
							featureType: "road",
							elementType: "labels",
							stylers: [
								{ visibility: "on" },
								{ color: "#ffffff"}
							]
						},
						{
							featureType: "road",
							elementType: "labels.text.stroke",
							stylers: [
								{ visibility: "off" }
							]
						},
  						{
							featureType: 'landscape',
							elementType: 'all',
							stylers: [
								{ color: '#000000' },
								{ gamma: 1.4 },
								{ lightness: 30},
								{ visibility: "off" }
							]
						},
						{
							featureType: 'landscape',
							elementType: 'all',
							stylers: [
								{ visibility: "off" }
							]
						},					
						{
							featureType: "transit",
							elementType: "all",
							stylers: [
								{ visibility: "off" }
							]
						},
						{
							featureType: "poi",
							elementType: "all",
							stylers: [
								{ visibility: "off" }
							]
						},
						{
							featureType: "administrative",
							elementType: "all",
							stylers: [
								{ visibility: "off" }
							]
						},
						{
							featureType: "water",
							elementType: "all",
							stylers: [
								{ visibility: "off" }
							]
						},
					]
				};
				map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);
				marker = new google.maps.Marker({
					map: map,
					position: new google.maps.LatLng(22.27595150, 114.1721588),
					icon: 'http://www.pieterdn.be/tallore/img/ico/Locator3.png',
					animation: google.maps.Animation.DROP,
               				draggable: false,
				});
				infowindow = new google.maps.InfoWindow({
					content:'<b>Tallore</b><br/>7-17 Amoy Street<br/> hongkong' 
				});
				google.maps.event.addListener(marker, 'click', function(){
					infowindow.open(map,marker);
				})	
			;}
			google.maps.event.addDomListener(window, 'load', init_map);