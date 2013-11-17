<!DOCTYPE html>
<html>
  <head>
<<<<<<< HEAD
<<<<<<< HEAD
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
=======
=======
>>>>>>> branch 'master' of https://github.com/codereggie/childofreggie.git
    <title>
      POSTUP
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
>>>>>>> branch 'master' of https://github.com/codereggie/childofreggie.git
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="stylesheets/main.css" rel="stylesheet">
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
    <!-- Jasny Bootstrap Extensions -->
    <link href="extend/css/jasny-bootstrap.min.css" rel="stylesheet">
    <!-- Datepicker Bootstrap Extension-->
    <link href="datepicker/css/datepicker.css" rel="stylesheet">
>>>>>>> branch 'master' of https://github.com/codereggie/childofreggie.git
=======
    <!-- Jasny Bootstrap Extensions -->
    <link href="extend/css/jasny-bootstrap.min.css" rel="stylesheet">
    <!-- Datepicker Bootstrap Extension-->
    <link href="datepicker/css/datepicker.css" rel="stylesheet">
>>>>>>> branch 'master' of https://github.com/codereggie/childofreggie.git

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
      new google.maps.LatLng(-33.8902, 151.1759),
      new google.maps.LatLng(-33.8474, 151.2631));
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
<<<<<<< HEAD
<<<<<<< HEAD
  <body style="background-image:url('/images/concert.jpg'); background-size:100%;">
  	<div class="row" style="margin-bottom:60px;">
=======
=======
>>>>>>> branch 'master' of https://github.com/codereggie/childofreggie.git

  <body>
  
  <% BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService(); %>
  

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="dist/js/bootstrap.min.js"></script>

    <!-- Header Row -->
    <div class="row">

    <!-- Site Title -->
<<<<<<< HEAD
>>>>>>> branch 'master' of https://github.com/codereggie/childofreggie.git
=======
>>>>>>> branch 'master' of https://github.com/codereggie/childofreggie.git
	  <div class="col-xs-12 col-sm-6 col-md-6">
<<<<<<< HEAD
<<<<<<< HEAD
	  	<h1 style="margin-top:0px; color:#f2f2f2">POSTUP</h1>
=======
	  	<h1 style="margin-top:0px;">
        POSTUP
      </h1>
>>>>>>> branch 'master' of https://github.com/codereggie/childofreggie.git
=======
	  	<h1 style="margin-top:0px;">
        POSTUP
      </h1>
>>>>>>> branch 'master' of https://github.com/codereggie/childofreggie.git
	  </div>

    <!-- Upload Poster Button -->
	  <div class="col-xs-12 col-sm-6 col-md-6" style="margin-top:10px;">
	  	<button id="upload_button" type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal" style="margin-left:20px; padding-left:12px; padding-right:12px;">
	  		<span class="glyphicon glyphicon-plus">
	  		</span>
	  	</button>
	  </div>
<<<<<<< HEAD
<<<<<<< HEAD
	</div>
  
  
  	<form action="/posters.jsp" method="get" enctype="multipart/form-data">
    <input id="pac-input" name="address" class="controls" type="text" placeholder="Search Box">
    
    <div id="map_container" style="background-color:#242223; width:60%; height:400px; margin-left:auto; margin-right:auto; border-radius:10px">
    	<div id="spacer" style="height:10px;width:100%;"></div>
    	<div id="map-canvas" style="width:calc(100% - 20px);height:calc(100% - 20px);"></div>
=======
=======
>>>>>>> branch 'master' of https://github.com/codereggie/childofreggie.git

    <!-- MODAL: Upload Poster Form -->
	  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">

		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		        <h4 class="modal-title" id="myModalLabel">Upload an Event Poster</h4>
		      </div>

		      <div class="modal-body">
		        <form class="form-horizontal" role="form" action="<%= blobstoreService.createUploadUrl("/upload") %>" method="post" enctype="multipart/form-data">
  		        <script src="extend/js/jasny-bootstrap.min.js"></script>
      		      <div class="fileinput fileinput-new" data-provides="fileinput" style="display:block; width:100%;">
        				  <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width:100%; max-height:900px;">    
                  </div>
        				  <div>
        				    <span class="btn btn-primary btn-file">
                      <span class="fileinput-new">
                        Select image
                      </span>
                      <span class="fileinput-exists">
                        Change
                      </span>
                      <input type="file" name="myFile">
                    </span>
        				    <a href="#" class="btn btn-danger fileinput-exists" data-dismiss="fileinput">Remove</a>
        			    </div>
        		  </div>

              <div class="form-group">
                <label for="inputEventTitle" class="col-sm-3 control-label">
                  Event Title
                </label>
                <div class="col-sm-9">
                  <input type="text" class="form-control" id="inputEventtitle" placeholder="Event Title" name="title">
                </div>
              </div>
              
              <div class="form-group">
                <label for="inputAddress" class="col-sm-3 control-label">
                  Address
                </label>
                <div class="col-sm-9">
                  <input type="text" class="form-control" id="inputAddress" placeholder="Address" name="address">
                </div>
              </div>

              <div class="form-group">
                <script src="datepicker/js/bootstrap-datepicker.js">
                </script>
                <script type="text/javascript" src="scripts/js/date-picker.js">
                </script>
              	<label for="inputEventTitle" class="col-sm-3 control-label">
                  Date
                </label>
              	<div class="dropdown col-sm-9">
              		<input type="text" class="datepicker" placeholder="Click me!" style="border-width:1px;" name="date">
              	</div>
              </div>

              <div class="form-group">
                <label for="inputAdditionalInfo" class="col-sm-3 control-label">
                  Additional Info
                </label>
                <div class="col-sm-9">
                  <textarea class="form-control" rows="5" name="additionalInfo">                 
                  </textarea>
                </div>
              </div>

              <div class="form-group">
                <label for="inputTags" class="col-sm-3 control-label">
                  Tags
                </label>
                <div class="col-sm-9">
                  <input type="text" class="form-control" id="inputTags" placeholder="music, food, art, etc" name="tags">
                </div>
              </div>

              <div class="form-group">
                <label for="inputVenues" class="col-sm-3 control-label">
                  Places
                </label>
                <div class="col-sm-9">
                  <input type="text" class="form-control" id="inputVenues" placeholder="Where are you hanging this in real life?" name="venues">
                </div>
              </div>
              
              <div class="modal-footer">
              		<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
		      		<button type="submit" class="btn btn-success">Submit</button>
		      </div>
            </form>		        
		      </div>
		    </div><!-- /.modal-content -->
		  </div><!-- /.modal-dialog -->
	  </div><!-- /.modal -->
>>>>>>> branch 'master' of https://github.com/codereggie/childofreggie.git
    </div>

    
    <div class="form-group">
    	<div class="col-sm-offset-9 col-sm-9;" style="padding-top:5px">
        	<button type="submit" class="btn btn-primary">Go</button>
        </div>
    </div>
    </form>
  </body>
</html>
