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
  
  <style>
  
   .switch-toggle .this{
        float: left;
        background:  gray;
     }
     .switch-toggle input {
       position: absolute;
       opacity: 0;
     }
     .switch-toggle input + label {
       padding: 7px;
       float:left;
       color: #fff;
       cursor: pointer;
     }

     .switch-toggle  input:checked  +  .red {
        background:  red;
     }

     .switch-toggle  input:checked  +  .green {
        background:  green;
     }
  
  </style>

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
            <h4 class="pull-left" style="margin-top:20px;"><span>Heights and </span> Areas</h4>
            </div> 
      </div>
	   <div class="col-xl-1">
         <a href="javascript:buildingdata()" class="btn btn-sm btn-warning">PREVIOUS </a>
      </div>
      <div class="col-xl-3  ">
          <a href="javascript:projectdetails()" class="btn btn-sm btn-secondary pull-right">SAVE AND VIEW REQUIREMENTS </a>
      </div>
      <div class="col-xl-2 p-0">
         <a href="javascript:egress()" class="btn btn-sm btn-warning">NEXT MODULE </a>
      </div>
    </div>
    <c:out value="${projectbuilddata}"/>
	<!-- include General building information -->
	
	<%@include file="generalbuildinginfo.jsp" %>
                                        
	<!--  Include dynamicbuildingdata jsp  -->
      
		<%@include file="dynamicbuildingdata.jsp" %>
      
	<!-- End dynamicbuildingdata  -->
			
			<div >
		  
            <ul class="">
	
              <li>
			  		
                <div class="custom-control custom-checkbox my-1 mr-sm-2">
				
				<div class="col-xl-6 pull-left">
				
                 <p>What is the average height of the highest roof surface above grade plane (ft.)?</p>
				 </div>
				 <div class="col-xl-6 pull-right">
				 <div class="form-group">
				 	<c:if test="${avgHeight != null}" >
						<input id="avgHeight" type="text" name="drawingtype" value="${avgHeight}" class="form-control"/>
					</c:if>
					<c:if test="${avgHeight == null}" >
						<input id="avgHeight" type="text" name="drawingtype" class="form-control"/>
					</c:if>
				 </div>
				 </div>
				 <div class="col-xl-4 pull-right"></div>
                </div>
              </li>
			  
			  <li>
                <div class="custom-control custom-checkbox my-1 mr-sm-2">
				<div class="col-xl-6 pull-left">
                 <p>Does your plan incorporate the sprinklered height increase or the area increase from Tables 504.3, 504.4, and 506.2?</p>
				 </div>
				 <div class="col-xl-6 pull-right">
				 <div class="form-group">
				 <c:if test="${heightOrArea != null}" >
					<select id="heightOrArea" name="drawingtype" class="form-control">
				        <option value="Height" <c:if test="${heightOrArea == 'Height'}">selected</c:if>>Height Increase</option>        
				        <option value="Area" <c:if test="${heightOrArea == 'Area'}">selected</c:if>>Area Increase</option>
					</select>
				</c:if>
				<c:if test="${heightOrArea == null}" >
					<select id="heightOrArea" name="drawingtype" class="form-control">
				        <option value="Height" selected>Height Increase</option>        
				        <option value="Area">Area Increase</option>
					</select>
				</c:if>
				</div>
				 </div>
				 <div class="col-xl-4 pull-right"></div>
                </div>
              </li>
       
	   
	   <div class="col-xl-12 " style="padding:20px;">
		<p class="pull-left" style="color:#ccc;">Note: Some questions within this group are not relevant because of your answers to other questions and are not shown.</p>
            <button class="btn btn-sm btn-warning pull-right"  data-toggle="modal" data-target="#Feedback" style="margin-top:20px;">Give a Feedback</button>
            </div>
            </ul>
		</div>
    	</div>
      </div>
    </div>
	<div class="row">
      <div class="col-xl-12">

                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Building Perimeter and Site Information </h4><br><br>
                                <p>Use the form below to add information for each exterior perimeter wall of your building. This information is used to compute allowable area, fire resistance rating requirements, and other code requirements.</p>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>WALL SEGMENT</th>
                                                <th>LENGTH</th>
                                                <th>	WALL FACES</th>
                                                <th>WALL DISTANCE TO...</th>
                                                <th></th>
                                                <th>PARTY WALL?</th>
                                                
                                               
                                            </tr>
                                        </thead>
                                        <tbody>
                                         <c:if test="${wallsegmentdata != null}" > 
                                        	<c:forEach var="wsdata" items="${wallsegmentdata}">
	                                            <tr id="wallsegment">
	                                                <td><input type="text" placeholder="Wall 1" value="${wsdata.wallSegment}"/></td>
	                                                <td><input type="text" placeholder="ft" value="${wsdata.length}"/></td>
													 <td><select name="drawingtype" class=" form-select form-select-lg">
													 <option value="road_alley_public_way" <c:if test="${wsdata.wallFace == 'road_alley_public_way' }">selected</c:if>>Road / Alley / Public Way</option>
							                        <option value="lot_line" <c:if test="${wsdata.wallFace == 'lot_line' }">selected</c:if>>Lot Line</option>
							                        <option value="other_building_on_lot" <c:if test="${wsdata.wallFace == 'other_building_on_lot' }">selected</c:if>>Other Building on Lot</option>
							                        <option value="other_wall_segment" <c:if test="${wsdata.wallFace == 'other_wall_segment' }">selected</c:if>>Other Wall Segment</option>
												</select></td>
												<td><input type="text" placeholder="ft" value="${wsdata.wallDistFrom}"/></td>
												<td><input type="text" placeholder="ft" value="${wsdata.wallDistTo}"/></td>
												<td><input type="checkbox" <c:if test="${wsdata.partyWall == 1 }">checked</c:if>value="${wsdata.partyWall}"/></td>
												<td><img src="assets/images/close_out.svg" alt="android-complai" onclick="javascript:removewallsegment(this)"/></td>
	                                           </tr>
	                                           </c:forEach>
                                        	</c:if>
                                        	<c:if test="${wallsegmentdata == null}" > 
	                                            <tr id="wallsegment">
	                                                <td><input type="text" placeholder="Wall 1"/></td>
	                                                <td><input type="text" placeholder="ft"/></td>
													 <td><select name="drawingtype" class=" form-select form-select-lg">
													 <option value="road_alley_public_way" selected>Road / Alley / Public Way</option>
							                        <option value="lot_line">Lot Line</option>
							                        <option value="other_building_on_lot">Other Building on Lot</option>
							                        <option value="other_wall_segment">Other Wall Segment</option>
												</select></td>
												<td><input type="text" placeholder="ft"/></td>
												<td><input type="text" placeholder="ft"/></td>
												<td><input type="checkbox" /></td>
												<td><img src="assets/images/close_out.svg" alt="android-complai" onclick="javascript:removewallsegment(this)"/></td>
	                                           </tr>
                                        	</c:if>
                                        </tbody>
                                    </table>
							
			</div>
</div>				
		
 <button style="margin-top:5px; color:#ffbe0b !important;" id="addwallsegment" class="btn btn-sm  add-more button-yellow uppercase" type="button">+ Add Wall Segment </button>	
 
			
			
			<div class="col-xl-12 " style="padding:20px;">

            <button class="btn btn-sm btn-warning pull-right"  data-toggle="modal" data-target="#Feedback" style="margin-top:20px;">Give a Feedback</button>
            </div>
                        </div>
						
      </div>
      
    </div>
	
	
	<div class="row">
      <div class="col-xl-12">

        <div class="card">
          <div class="card-header">
            <h3 class="card-title">
             Building Uses

            </h3>
            
          </div>
          <!-- /.card-header -->
          <div class="card-body">
		  <div >
		  
            <ul class="">
	   <li>
                <div class="custom-control custom-checkbox my-1 mr-sm-2">
				<div class="col-xl-6 pull-left">
                 <p>Is the building used for any of the following purposes?</p>
				 <p>Movie theater</p>
				 </div>
				 <div class="col-xl-6 pull-right">
			      <div id="movietheater" class="btn-group btn-toggle pull-right">
			      	<label><input type = "radio" name = "movietheater" id = "yes" value="1">YES</label>
    				<label><input type = "radio" name = "movietheater" id = "no" value="0">&nbsp;NO</label> 
			      </div>
				 </div>
				 
                </div>
				<div class="col-xl-12 pull-right">
				<p class="pull-left" style="color:#ccc;">Note: Some questions within this group are not relevant because of your answers to other questions and are not shown.</p>
            <button class="btn btn-sm btn-warning pull-right"  data-toggle="modal" data-target="#Feedback" style="margin-top:20px;">Give a Feedback</button>
            </div>
              </li>
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
            <h3 class="card-title">
             Building Features

            </h3>
            
          </div>
          <!-- /.card-header -->
          <div class="card-body">
		  <div >
		  
            <ul class="">
	   <li>
                <div class="custom-control custom-checkbox my-1 mr-sm-2">
				<div class="col-xl-6 pull-left">
                 <p>Does the building have any stage and platform floor areas, such as runways, ramps and side stages used for entertainment or presentations?</p>
				
				 </div>
				 <div class="col-xl-6 pull-right">
				 
			      <div id="entertainment" class="btn-group btn-toggle pull-right"> 
			  		<label><input type = "radio" name = "entertainment" id = "yes" value="1">YES</label>
    				<label><input type = "radio" name = "entertainment" id = "no" value="0">&nbsp;NO</label> 
			     </div>
				 </div>
				 
                </div>
				<div class="col-xl-12 pull-right">
				<p class="pull-left" style="color:#ccc;">Note: Some questions within this group are not relevant because of your answers to other questions and are not shown.</p>
            <button class="btn btn-sm btn-warning pull-right"  data-toggle="modal" data-target="#Feedback" style="margin-top:20px;">Give a Feedback</button>
            </div>
              </li>
       
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
            <h3 class="card-title">
             Construction

            </h3>
            
          </div>
          <!-- /.card-header -->
          <div class="card-body">
		  <div >
		  
            <ul class="">
	   <li>
                <div class="custom-control custom-checkbox my-1 mr-sm-2">
				<div class="col-xl-6 pull-left">
                 <p>Is the building a tent, membrane or fabric structure?</p>
				
				 </div>
				 <div class="col-xl-6 pull-right">
				 
			      <div id="conStructure" class="btn-group btn-toggle pull-right"> 
			        <label><input type = "radio" name = "conStructure" class="btn btn-sm btn-success active" id = "yes" value="1">YES</label>
    				<label><input type = "radio" name = "conStructure" id = "no" value="0">&nbsp;NO</label> 
			      </div>
				 </div>
				 
                </div>
                 
				<div class="col-xl-12 pull-right">
				<p class="pull-left" style="color:#ccc;">Note: Some questions within this group are not relevant because of your answers to other questions and are not shown.</p>
            <button class="btn btn-sm btn-warning pull-right"  data-toggle="modal" data-target="#Feedback" style="margin-top:20px;">Give a Feedback</button>
            </div>
              </li>
       
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