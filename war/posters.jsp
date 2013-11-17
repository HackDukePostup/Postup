<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
  <head>
    <title>Bootstrap 101 Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="stylesheets/main.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  
  <% BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService(); %>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="dist/js/bootstrap.min.js"></script>
    
    <div class="row">
	  <div class="col-xs-12 col-sm-6 col-md-6">
	  	<h1 style="margin-top:0px;">POSTUP</h1>
	  </div>
	  <div class="col-xs-12 col-sm-6 col-md-6" style="margin-top:10px;">
	  	<button id="upload_button" type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal" style="margin-left:20px;padding-left:10px;padding-right:10px;">
	  		<span class="glyphicon glyphicon-plus">
	  		</span>
	  	</button>
	  </div>
	  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		        <h4 class="modal-title" id="myModalLabel">Upload an Event Poster</h4>
		      </div>
		      <div class="modal-body">
        <form class="form-horizontal" role="form" action="<%= blobstoreService.createUploadUrl("/upload") %>" method="post" enctype="multipart/form-data">
          <div class="form-group">
            <label for="upload" class="col-sm-3 control-label">Poster Upload</label>
            <div class="col-sm-9" style="margin-top:10px;">
              <input type="file" id="uploadField" name="myFile">
            </div>
          </div>
          <div class="form-group">
            <label for="inputEventTitle" class="col-sm-3 control-label">Event Title</label>
            <div class="col-sm-9">
              <input type="text" class="form-control" id="inputEventtitle" placeholder="Event Title" name="title">
            </div>
          </div>
          <div class="form-group">
            <label for="inputAddress" class="col-sm-3 control-label">Address</label>
            <div class="col-sm-9">
              <input type="text" class="form-control" id="inputAddress" placeholder="Address" name="address">
            </div>
          </div>
          <div class="form-group">
            <label for="inputEventTitle" class="col-sm-3 control-label">Date</label>
            <div class="dropdown col-sm-9">
              <select name="month">
                <option>Month</option>
                <option value="Jan">January</option>
                <option value="Feb">February</option>
                <option value="Mar">March</option>
                <option value="Apr">April</option>
                <option value="May">May</option>
                <option value="Jun">June</option>
                <option value="Jul">July</option>
                <option value="Aug">August</option>
                <option value="Sept">September</option>
                <option value="Oct">October</option>
                <option value="Nov">November</option>
                <option value="Dec">December</option>
              </select>
              <select name="day">
                <option>Day</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
              </select>
              <select name="year">
                <option value="2013">2013</option>
                <option value="2014">2014</option>
                <option value="2015">2015</option>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label for="inputAdditionalInfo" class="col-sm-3 control-label">Additional Info</label>
            <div class="col-sm-9">
              <textarea name="additionalInfo" cols="60" rows="5" name="additionalInfo"></textarea>
            </div>
          </div>
          <div class="form-group">
            <label for="inputTags" class="col-sm-3 control-label">Tags(comma seperated)</label>
            <div class="col-sm-9">
              <input type="text" class="form-control" id="inputTags" placeholder="Tags" name="tags">
            </div>
          </div>
          <div class="form-group">
            <label for="inputVenues" class="col-sm-3 control-label">Venues(comma seperated)</label>
            <div class="col-sm-9">
              <input type="text" class="form-control" id="inputVenues" placeholder="Venues" name="venues">
            </div>
          </div>

          <div class="form-group">
            <div class="col-sm-offset-3 col-sm-9">
              <button type="submit" class="btn btn-primary">Submit</button>
            </div>
          </div>
      </form>		        
		      </div>

		    </div><!-- /.modal-content -->
		  </div><!-- /.modal-dialog -->
	  </div><!-- /.modal -->
    </div>
  </body>
</html>
