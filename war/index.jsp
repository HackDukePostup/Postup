<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="stylesheets/main.css" rel="stylesheet">
    <style>
      html, body, #map-canvas {
        margin: auto;
      }
      
      #map-canvas {
      	height: 400px;
      	width: 60%;
      	padding: 100px;
      	border-radius:8px;
      }
      
      .controls {
        margin-top: 16px;
        border: 1px solid transparent;
        border-radius: 2px 0 0 2px;
        box-sizing: border-box;
        -moz-box-sizing: border-box;
        height: 32px;
        outline: none;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
      }

      #pac-input {
        background-color: #fff;
        padding: 0 11px 0 13px;
        width: 400px;
        font-family: Roboto;
        font-size: 15px;
        font-weight: 300;
        text-overflow: ellipsis;
      }

      #pac-input:focus {
        border-color: #4d90fe;
        margin-left: -1px;
        padding-left: 14px;  /* Regular padding-left + 1. */
        width: 401px;
      }

      #pac-input .notfound {
        border-color: #e86850;
        margin-left: -1px;
        padding-left: 14px;
        width: 401px;
      }

      .pac-container {
        font-family: Roboto;
      }

      #type-selector {
        color: #fff;
        background-color: #4d90fe;
        padding: 5px 11px 0px 11px;
      }

      #type-selector label {
        font-family: Roboto;
        font-size: 13px;
        font-weight: 300;
      }
}

    </style>
    <title>Places search box</title>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
    <script>
// This example adds a search box to a map, using the Google Place Autocomplete
// feature. People can enter geographical searches. The search box will return a
// pick list containing a mix of places and predicted search terms.

function initialize() {

  var markers = [];
  var map = new google.maps.Map(document.getElementById('map-canvas'), {
    mapTypeId: google.maps.MapTypeId.ROADMAP
  });

  var defaultBounds = new google.maps.LatLngBounds(
      new google.maps.LatLng(35.7120, -79.2690),
      new google.maps.LatLng(36.1057, -78.4534));
  map.fitBounds(defaultBounds);

  // Create the search box and link it to the UI element.
  var input = /** @type {HTMLInputElement} */(
      document.getElementById('pac-input'));
  map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

  var searchBox = new google.maps.places.SearchBox(
    /** @type {HTMLInputElement} */(input));

  // [START region_getplaces]
  // Listen for the event fired when the user selects an item from the
  // pick list. Retrieve the matching places for that item.
  google.maps.event.addListener(searchBox, 'places_changed', function() {
    var places = searchBox.getPlaces();

    for (var i = 0, marker; marker = markers[i]; i++) {
      marker.setMap(null);
    }

    // For each place, get the icon, place name, and location.
    markers = [];
    var bounds = new google.maps.LatLngBounds();
    for (var i = 0, place; place = places[i]; i++) {
      var image = {
        url: place.icon,
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(17, 34),
        scaledSize: new google.maps.Size(25, 25)
      };

      // Create a marker for each place.
      var marker = new google.maps.Marker({
        map: map,
        icon: image,
        title: place.name,
        position: place.geometry.location
      });

      markers.push(marker);

      bounds.extend(place.geometry.location);
    }

    map.fitBounds(bounds);
  });
  // [END region_getplaces]

  // Bias the SearchBox results towards places that are within the bounds of the
  // current map's viewport.
  google.maps.event.addListener(map, 'bounds_changed', function() {
    var bounds = map.getBounds();
    searchBox.setBounds(bounds);
  });
}

google.maps.event.addDomListener(window, 'load', initialize);

    </script>
    <style>
      #target {
        width: 345px;
      }
    </style>
  </head>
  <body style="background-image:url('/images/austin.jpg'); background-size:100%;">
  	<div class="row" style="margin-bottom:60px;">
	  <div class="col-xs-12 col-sm-6 col-md-6">
	  	<img src="/images/logo1.png" style="margin-left:20px;" ></img>
	  	<!-- <!-- <h1 style="margin-top:0px; color:#ffffff">POSTUP</h1> -->
	  </div>
	</div>
	
	
  
  
  	<form action="/posters.jsp" method="get" enctype="multipart/form-data">
    <input id="pac-input" name="address" class="controls" type="text" placeholder="Search Box">
    
    <div id="map_container" style="background-color:#242223; background-opacity:.5; width:57%; height:500px; margin-left:auto; margin-right:auto; border-radius:10px">
    	<div id="spacer" style="height:10px;width:100%;"></div>
    	<div id="map-canvas" style="width:calc(100% - 20px);height:calc(100% - 70px);"></div>
    	<div class="form-group">
    		<div class="col-sm-offset-9 col-sm-9;" style="padding-top:12px; padding-left:70px;">
        		<button type="submit" class="btn btn-default">Go</button>
        </div>
    </div>
    </div>

    
    </form>
  </body>
</html>