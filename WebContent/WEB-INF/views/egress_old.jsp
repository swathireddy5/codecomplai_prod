<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>COMPLAI</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="" rel="icon">
  <link href="" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,400;0,500;0,900;1,100;1,300;1,400;1,700;1,900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <link href="assets/css/asidestyle.css" rel="stylesheet">

</head>

<body>

	<!--  Include header jsp  -->
      
		<%@include file="header.jsp" %>
      
	<!-- End header  -->
	
  <main id="main">
  
    <div class="page-wrapper chiller-theme toggled">
      <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
        <i class="fa fa-bars"></i>
      </a>
      
       <!-- side nav jsp -->
      <%@include file="sidenav.jsp" %>
      <!-- end side nav -->
    
      <main class="page-content">
        <div class="container-fluid">
        
        <!-- main list codes -->
        	<%@include file="mainlist.jsp" %>
      	<!-- end main list -->

<div class="row">
  <div class="col-xl-12">
    
<div class="demo10">
            <div class="container">
		

     
<div class="clearfix"></div>
		<div class="">
            
	  <div class="row">
  <div class="col-xl-12">
    <div class="row pt-4 pb-3">
	<div class="col-xl-6 pull-left">
          <div class="section-head">
          
          <h4 class="pull-left" style="margin-top:20px;"><span>Egress </span></h4>
          	
        </div> 
      </div>
	   <div class="col-xl-1">
         <a href="javascript:heightandareas()" class="btn btn-sm btn-warning  ">PREVIOUS </a>
      </div>
      <div class="col-xl-3 ">
         <a href="javascript:projectdetails()" class="btn btn-sm btn-secondary pull-right ">SAVE AND VIEW REQUIREMENTS </a>
      </div>
      <div class="col-xl-2 p-0">
         <a href="javascript:fireratings()" class="btn btn-sm btn-warning  ">NEXT MODULE </a>
      </div>
   
    </div>

	<!-- include General building information -->
	
	<%@include file="generalbuildinginfo.jsp" %>
	
	 <!--  Include dynamicbuildingdata jsp  -->
      
		<%@include file="dynamicbuildingdata.jsp" %>
      
	<!-- End dynamicbuildingdata  -->	
	
	
	<div class="row">
      <div class="col-xl-12">

        <div class="card">
          <div class="card-header">
            <h3 class="card-title">Building Features</h3>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
		  <div >
		  
            <ul class="">
	   		<li>
                <div class="custom-control custom-checkbox my-1 mr-sm-2">
				<div class="col-xl-6 pull-left">
                 <p>Does the building feature projections beyond the external wall such as balconies, cornices, eaves, and exterior balconies?</p>			
				 </div>
				 <div class="col-xl-6 pull-right">
				 
			      <div id="extBalcony" class="btn-group btn-toggle pull-right"> 
			        <label><input type = "radio" name = "extBalcony" class="btn btn-sm btn-success active" id = "yes" value="1">YES</label>
    				<label><input type = "radio" name = "extBalcony" id = "no" value="0">&nbsp;NO</label> 
			      </div>
				 </div>
                </div>
              </li>
			  <li>
                <div class="custom-control custom-checkbox my-1 mr-sm-2">
				<div class="col-xl-6 pull-left">
                 <p>Does the building feature one or more egress balconies?</p>		
				 </div>
				 <div class="col-xl-6 pull-right">
				 
			      <div id="egressBalcony" class="btn-group btn-toggle pull-right"> 
			        <label><input type = "radio" name = "egressBalcony" class="btn btn-sm btn-success active" id = "yes" value="1">YES</label>
    				<label><input type = "radio" name = "egressBalcony" id = "no" value="0">&nbsp;NO</label> 
			      </div>
				 </div>
                </div>
              </li>
			  
			  <li>
                <div class="custom-control custom-checkbox my-1 mr-sm-2">
				<div class="col-xl-6 pull-left">
                 <p>Is the roof or portion thereof occupiable? </p>
			
				 </div>
				 <div class="col-xl-6 pull-right">
				 
			      <div id="roofPortionOccupiable" class="btn-group btn-toggle pull-right"> 
			        <label><input type = "radio" name = "roofPortionOccupiable" class="btn btn-sm btn-success active" id = "yes" value="1">YES</label>
    				<label><input type = "radio" name = "roofPortionOccupiable" id = "no" value="0">&nbsp;NO</label> 
			      </div>
				 </div>
				 
                </div>
				
              </li>
			  
			  <li>
                <div class="custom-control custom-checkbox my-1 mr-sm-2">
				<div class="col-xl-6 pull-left">
                 <p>Does the building have any stage and platform floor areas, such as runways, ramps and side stages used for entertainment or presentations?</p>
			
				 </div>
				 <div class="col-xl-6 pull-right">
				 
			      <div id="entertainment" class="btn-group btn-toggle pull-right"> 
			        <label><input type = "radio" name = "entertainment" class="btn btn-sm btn-success active" id = "yes" value="1">YES</label>
    				<label><input type = "radio" name = "entertainment" id = "no" value="0">&nbsp;NO</label> 
			      </div>
				 </div>
                </div>
				
              </li>
       	<div class="col-xl-12 pull-right">
				<p class="pull-left" style="color:#ccc;">Note: Some questions within this group are not relevant because of your answers to other questions and are not shown.</p>
            <button class="btn btn-sm btn-warning pull-right"  data-toggle="modal" data-target="#Feedback" style="margin-top:20px;">Give a Feedback</button>
            </div>
            </ul>
		</div>
          </div>
          <!-- /.card-body -->
          <div class="card-footer clearfix">
          </div>
        </div>
      </div>
    </div>
	
	<div class="row">
      <div class="col-xl-12">
        <div class="card">
          <div class="card-header">
            <h3 class="card-title">Fire Safety</h3>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
		  <div >
		  
            <ul class="">
	   		<li>
                <div class="custom-control custom-checkbox my-1 mr-sm-2">
				<div class="col-xl-6 pull-left">
                 <p>Is the building equipped with a fire alarm system?</p>
				 </div>
				 <div class="col-xl-6 pull-right">
			      <div id="fireAlarm" class="btn-group btn-toggle pull-right"> 
			        <label><input type = "radio" name = "fireAlarm" class="btn btn-sm btn-success active" id = "yes" value="1">YES</label>
    				<label><input type = "radio" name = "fireAlarm" id = "no" value="0">&nbsp;NO</label> 
			      </div>
				 </div>
                </div>
              </li>
       		<div class="col-xl-12 pull-right">
				<p class="pull-left" style="color:#ccc;">Note: Some questions within this group are not relevant because of your answers to other questions and are not shown.</p>
            <button class="btn btn-sm btn-warning pull-right"  data-toggle="modal" data-target="#Feedback" style="margin-top:20px;">Give a Feedback</button>
            </div>
            </ul>
		  </div>
          </div>
          <!-- /.card-body -->
          <div class="card-footer clearfix">
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</main>
      <!-- page-content" -->
    </div>

  </main><!-- End #main -->

	<!--  Include footer jsp  -->
      
		<%@include file="footer.jsp" %>
      
	<!-- End footer  --> 

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
  <script src="assets/js/buildingdata.js"></script>

</body>

</html>