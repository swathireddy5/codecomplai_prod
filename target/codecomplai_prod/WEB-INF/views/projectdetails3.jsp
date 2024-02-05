<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
  <title>COMPLAI - Aside - List</title>
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/vis/4.16.1/vis.css" type="text/css"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vis/4.16.1/vis-network.min.js"> </script>


<style>
body {font-family: Arial;}

/* Style the tab */
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
}

</style>

<style>
#preview{
	margin-top: 1px;
	border:1px solid black;
	width:100%;
	height:700px;
	background-repeat: no-repeat;
	margin-left: auto;
	margin-right: auto;
}
#samples{
	text-align: center;
}
#samples img {	
	margin: 10px;
	display: block;
	 border: 2px solid #6A6462;
}
#samples img:hover {
	 cursor: zoom-in;
	 border: 0;
	 -moz-box-shadow:2px 2px 7px 2px rgba(130,130,130,1),-1px -1px 7px 2px rgba(130,130,130,1);
	-webkit-box-shadow: 2px 2px 7px 2px rgba(130,130,130,.7),-1px -1px 7px 2px rgba(130,130,130,1);
	box-shadow: 2px 2px 7px 2px rgba(130,130,130,.7),-2px -2px 7px 2px rgba(130,130,130,1);
}
@media screen and (max-width: 767px){
	#samples img {
		display: inline-block;
	}
}

</style>

</head>

<body data-aos-easing="ease" data-aos-duration="1000" data-aos-delay="0"><button type="button" class="mobile-nav-toggle d-lg-none"><i class="icofont-navigation-menu"></i></button>
 
<!-- ======= Header ======= -->
	<!--  Include header jsp  -->
      
		<%@include file="header.jsp" %>
      
	<!-- End header  -->
	
  <main id="main">

      <div class="page-wrapper chiller-theme toggled">
         <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
        <i class="fa fa-bars"></i>
      </a>
      	<%@include file="sidenav.jsp" %>
      <!-- sidebar-wrapper  -->
      <main class="page-content">
    
<!--<style>
div {
  text-align: justify;
  text-justify: inter-word;
}
</style> -->
        <div class="container-fluid" style="padding-left:90px">
                <!-- main list codes -->
        	<%@include file="mainlist.jsp" %>
      	<!-- end main list -->

<div class="row" style="margin-left:45px">

  <div class="col-xl-12">

 <div class="feat bg-gray ">
    <div class="container" style="max-width:1600px">
	
	<div class="row">
		<c:if test="${uploadstatus!= null}" >
	  		<h4><c:out value="The image(s) have been uploaded successfully"></c:out></h4>
		</c:if>

	<div class="col-xl-6">
          <div class="section-head">
          <c:if test="${projectView != null}" > 
          	<h4 class="pull-right" style="margin-top:20px;"><span>Project</span> <c:out value="${projectView.projectName}"/> </h4>
          </c:if>
          <c:if test="${projectView == null}" >
          	<h4 class="pull-right" style="margin-top:20px;"><span>Project</span> <c:out value="${projectName}"/> </h4>
          </c:if>
        </div> 
      </div>
	
      <div class="col-xl-3">
		
          <h3 class="font-20"><small>JURISDICTION</small>  
          <c:if test="${projectView != null}" > 
          	<c:out value="${projectView.jurisdiction}"/>
          </c:if>
          <c:if test="${projectView == null}" >
          	<c:out value="${Jurisdiction}"/>
          </c:if>
		</h3>
      </div>
      <div class="col-xl-3 p-0">
        <h3 class="font-20"><small>CODE YEAR
		</small>
		<c:if test="${projectView != null}" > 
          	<c:out value="${projectView.codeYear}"/>
          </c:if>
          <c:if test="${projectView == null}" >
          	<c:out value="${codeYear}"/>
          </c:if>
		</h3>
      </div>
	</div>
	</div>

</div>
           
               

 

<!--  Modal code - start -->
<div class="modal fade" id="comment" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Add Comment</h4>
        </div>
        <div class="modal-body">
         <form>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Comment</label>
    <textarea type="text" class="form-control" id="exampleInputPassword1" placeholder="comment"></textarea>
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
<!--  Modal code - start -->
  
  
<div class="col-xl-6">

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<script>
    $(document)
            .ready(
                    function() {
                        //add more file components if Add is clicked
                        $('#addFile')
                                .click(
                                        function() {
                                            var fileIndex = $('#fileTable tr')
                                                    .children().length - 1;
                                            $('#fileTable')
                                                    .append(
                                                            '<tr><td>'
                                                                    + '   <input type="file" name="files['+ fileIndex +']" />'
                                                                    + '</td></tr>');
                                        });
 
                    });
</script>
</div>

</div>
</div>

<div class="row" style="margin-left:45px">
	<div class="col-xl-12">
		<!-- Tab links -->
		<div class="tab">
		  <button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">Project Details</button>
		  <!--<button class="tablinks" onclick="openCity(event, 'Paris')">Paris</button> -->
		  <!--<button class="tablinks" onclick="showProcessedDXF(${userId},${projectId});openCity(event, 'Tokyo')">Processed DXF's</button>-->
		  <button class="tablinks" onclick="openCity(event, 'Tokyo')">Processed DXF's</button>
		  <!--<button class="tablinks" onclick="showProcessedDXF(${userId},${projectId});openCity(event, 'Tokyo');">Processed DXF's</button>-->
		</div>

		<!-- Tab content -->
		<div id="London" class="tabcontent">
		  <h3>Details</h3>
		  <div class="card" style="min-width:300px">
          <!-- /.card-header -->
          <div class="card-body">
		  <div class="paragraph-custom-scroll">
          
			
			 <div id="accordion" class="accordion">
			 
			         <div class="card mb-0">
            <div class="card-header collapsed" data-toggle="collapse" href="#collapse1">
			
                <a class="card-title">
				
                   Upload DXF Drawings
                </a>
            </div>
            <div id="collapse1" class="card-body collapse" data-parent="#accordion" >
                <form method="post" action="/codecompilance/uploadDrawing" enctype="multipart/form-data">
														
										<div class="form-group">
																						 
												<p>Select files to upload. Press Add button to add more file
													inputs.</p>
									 
												<table id="fileTable">
													<tr>
														<td><input id="fileId" name="files[0]" type="file" /></td>
													</tr>
												</table>
												<br />
										
												<input id="addFile" type="button" value="Add File" />
											
										</div>
										<div class="text-center mt-3">
											<button type="submit" class="btn btn-lg btn-primary" onclick="return uploadDXF();">Upload</button>
											<!-- <button type="submit" class="btn btn-lg btn-primary">Sign up</button> -->
										</div>
    			</form>
  </div>

            </div>

			 <!--
        <div class="card mb-0">
            <div class="card-header collapsed" data-toggle="collapse" href="#collapse2">
			
                <a class="card-title">
				
                    Bookmarks & Notes
                </a>
            </div>
            <div id="collapse2" class="card-body collapse" data-parent="#accordion" >
                <p>Bookmarked by pfchew  |  03.18.21
                </p>
				<div class="form-group">
  
    <textarea class="form-control" id="exampleFormControlTextarea1" placeholder="Add Comment" rows="3"></textarea>
	<button class="btn btn-warning btn-sm pull-right" style="margin-top:10px;">Post</button>
  </div>
</form>
            </div>
          
        </div> -->
		
	 <div class="card mb-0">
            <div class="card-header collapsed" data-toggle="collapse" href="#collapse3">
			
                <a class="card-title">
				
                     Custom Codebooks
                </a>
		</div>
            <div id="collapse3" class="card-body collapse" data-parent="#accordion" >
      <div class="">
            <div v-for="tab in tabs"    class="tab-item">
            <h6 >2018 California State Building Code</h6>
            <p class="tab-item__subheading">adopts the IBC 2018 with amendments</p>
			<p></p>
			<p></p>
          </div>
			
			 
	</div>
            </div>
          
        </div>	
		
			 <div class="card mb-0">
            <div class="card-header collapsed" data-toggle="collapse" href="#collapse4">
			
                <a class="card-title">
				
                    Collaborators
                </a>
            </div>
            <div id="collapse4" class="card-body collapse" data-parent="#accordion" >
      <div class="">
           <div  >
        <div class="card mb-0">
            <div class="card-header" >
                <a class="">
                    Email
                </a>
            </div>
			
			<div class="card-header" >
                <a class="">
                   test@gmail.com
                </a>
            </div>
			
            
            
        </div>
		<div class="col-xl-4">
            <button class="btn btn-md btn-warning pull-left"  data-toggle="modal" data-target="#AddCollabrator" style="margin-top:20px;">Add Collaborator</button>
            </div>
    </div>
			
			 
	</div>
            </div>
          
        </div>	
		
		
    </div>
	</div>
          </div>
          <!-- /.card-body -->
          <div class="card-footer clearfix">
          
          </div>
        </div>
		</div>

		<div id="Paris" class="tabcontent">
		  <h3>Paris</h3>
		  <p>Paris is the capital of France.</p>
		</div>

		<!-- <div id="Tokyo" class="tabcontent">
			<div class="row">
				 <div class="col-xl-6">
					<h3>Input DXF's</h3>
				  </div>
				  <div class="col-xl-6">
					<h3>Output png's</h3>
				  </div>
				 
				 <div class="col-xl-6">
				 <img src="assets/images/png1x.svg"  style="width:100%; height:100%" alt="Search">
				 </div>
				 <div class="col-xl-6">
				 <img src="assets/images/1x.svg" style="width:100%; height:100%" alt="Search">
				 </div>
			 </div>
		</div> -->
		
		
		<div id="Tokyo" class="tabcontent">
			<!-- <div class="row">
				 <div class="col-xl-6">
				 
					<h3>Input</h3>
				  </div>
				  <div class="col-xl-6">
					<h3>Output</h3>
				  </div>
				 
				 <div class="col-xl-6">
	              <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
					  <ol class="carousel-indicators">
					    <c:forEach items="${dxfimagesList}" var="imgsrc">
					    		<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active">
								<img src="${imgsrc}"/>
							</li>
						</c:forEach>
					  </ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<c:forEach items="${pngimagesList}" var="imgsrc">
		               			<li>
		               				<img src="${imgsrc}"/>
		               			</li>
		               		</c:forEach>
						</div>
					</div>
				  </div>
				  
				 </div>
				 <div class="col-xl-6">
				 
				 <div id="carouselExampleIndicators1" class="carousel slide" data-ride="carousel">
					  <ol class="carousel-indicators">
					    <c:forEach items="${dxfimagesList}" var="imgsrc">
					    		<li data-target="#carouselExampleIndicators1" data-slide-to="0" class="active">
								<img src="${imgsrc}"/>
							</li>
						</c:forEach>
					  </ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<c:forEach items="${dxfimagesList}" var="imgsrc">
		               			<li>
		               				<img src="${imgsrc}"/>
		               			</li>
		               		</c:forEach>
						</div>
					</div>
				  </div>
				  
				</div>
			 </div>  -->
				
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12" id="samples">
<div style="overflow-y: scroll; height:850px;">
			Inputs

			<c:set var="count" value="1" scope="page" />
			<!-- <img id="zoom1" src="processed_files/26_77/pngs/3x.svg" width="100px" height="250px" onmousemove="zoomIn(event)" onmouseout="zoomOut()"> -->
			<c:forEach items="${dxfimagesList}" var="imgsrc">
				<img id="zoom${count}" src="/${imgsrc}" width="100px" height="250px" onmousemove="zoomIn(event)" onmouseout="zoomOut()">
				<c:set var="count" value="${count + 1}" scope="page"/>
			</c:forEach>
				
				Outputs

				<c:forEach items="${pngimagesList}" var="imgsrc">
				<c:set var="count" value="${count + 1}" scope="page"/>
					<img id="zoom${count}" src="/${imgsrc}" width="100px" height="250px" onmousemove="zoomIn(event)" onmouseout="zoomOut()">
					
		        </c:forEach>
						
						<!--<img src="${imgsrc}"/>-->
				<!-- <img id="zoom2" src="processed_files/26_77/labled_pngs/3x.svg" width="100px" height="250px" onmousemove="zoomIn(event)" onmouseout="zoomOut()"> -->
			</div>
			</div>
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
			Zoom: <select id="zoomimage" >
			<option value="25"> 25%</option>
			<option value="50"> 50% </option>
			<option value="75"> 75% </option>	
			<option value="100"> 100% </option>
			</select>
				<div id="preview"></div>
			</div>
		</div>					 
	</div>
	</div>
</div>
<script>

function uploadDXF(){
	var type=document.getElementById("fileId").value;
	var fileType = type.split('.')[1];
    if(fileType != "dxf"){
    	alert("Please upload only dxf files");
        return false;
    }
    return true;
}

function showProcessedDXF(userId, projectId){
	URL = "/codecompilance/showProcessedDXF?userId="+userId+"&projectId="+projectId;
	
	$.ajax({
		type: "POST",
		 async: false,  
		url : URL,
		dataType : 'json',
		contentType : 'application/json; charset=utf-8',
		data: userId,
		success : function(response){
			if(response != null && response !=""){
				console.log("Success...");
				console.log(response.outputPage);
				//$(".container .row .col-xl-12").replaceWith(response.outputPage);
				//$(".container .row .col-xl-12").html(response.outputPage);
				window.location.href = response.outputPage;
			}
	},
	 error: function(jqXHR, textStatus, errorThrown) {
		 //console.log("error ==== "+jqXHR.status + ' ' + jqXHR.responseText);
		 console.log("error ==== "+jqXHR.status + ' ' + errorThrown);
        }
    
});
	
}

function openCity(evt, cityName) {
	
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>

</div>

</main>
<!-- page-content" -->
</div>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 col-md-6 footer-contact">
            <img src="assets/images/complai-white-logo.svg" class="img-fluid logo-height-50">
            <p>
              Some example text some example text. John Doe is an architect and engineer. John Doe is an architect and engineer
            </p>
            <h4 class="pt-3 font-20">Download Mobile App</h4>
            <img src="assets/images/android_complai.png" class="app-img" alt="android-complai">
            <img src="assets/images/ios_complai.png" class="app-img" alt="ios-complai">

          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>CODE COMPLAI</h4>
         
          </div>

         

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>CONTACT US</h4>
            <p>
              CODE COMPLAI <br>
              A108 Adam Street <br>
              New York, NY 535022<br>
              United States <br><br>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> info@example.com<br>
            </p>
            <h4 class="mb-0 pb-0">FOLLOW US</h4>
            <div class="social-links">
              <a href="#" class="twitter"><svg style="width:22px;position: relative;top: 2px;" id="regular" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 506.68 415.97"><defs><style>.cls-1{fill:#fff;}</style></defs><title>twitter</title><path class="cls-1" d="M10.09,418a297.11,297.11,0,0,0,159.53,46c83.41,0,159.85-32,215.25-90.22,53-55.68,82.18-130.49,80.73-206.42,20.1-17.19,43.73-50,43.73-82a16,16,0,0,0-24.1-13.8c-18.88,11.09-36.1,14-53.81,9-36.16-35.24-90-42.66-135.33-18.21-39.64,21.33-61.68,60.37-59.7,103a265.1,265.1,0,0,1-172-93.93,16,16,0,0,0-26.16,2.13C17.49,109.16,17.71,150.4,35.78,183.7a16.66,16.66,0,0,0-13.91,16.58A112.85,112.85,0,0,0,61.18,285.5a16,16,0,0,0-4.09,16.58,114.82,114.82,0,0,0,65,69.63C89.26,387.39,53,392.62,20.63,388.65,3.9,386.39-4.35,408.87,10.09,418ZM174,377.19c12-9.19,5.62-28.35-9.4-28.67a83.44,83.44,0,0,1-65.54-34.09,113,113,0,0,0,21.85-3.5c16.23-4.39,15.46-27.82-1-31.12a82.13,82.13,0,0,1-62.23-55.9,110.22,110.22,0,0,0,24.41,3.25c16.19.08,22.31-20.67,9.11-29.36C61.4,178.2,48.7,143.57,57.11,111a297.49,297.49,0,0,0,197.06,88c10.68.66,18.7-9.39,16.36-19.57-10.14-43.92,14.4-74.71,40.74-88.89,26.07-14.08,67.93-18.48,100,15.19,9.53,10,41.7,10.43,58.06,6.61-7.33,13.82-18.62,26.94-29.18,34.33a16,16,0,0,0-6.8,13.88c3.43,70.08-22.68,139.76-71.64,191.15C312.41,403.46,244.2,432,169.64,432a268.75,268.75,0,0,1-86.21-14.12A216,216,0,0,0,174,377.19Z" transform="translate(-2.65 -48.03)"></path></svg></a>
              <a href="#" class="linkedin"><svg style="width:22px" id="regular" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 511.83 512"><defs><style>.cls-1{fill:#fff;}</style></defs><title>linkedin</title><path class="cls-1" d="M396.59,512,496,512a16,16,0,0,0,16-16c-7.47-167.62,39.3-344.49-135.21-344.49-33.56,0-60.29,11.45-79.55,26.6,0-31.17-33.69-13.93-111.45-18.56a16,16,0,0,0-16,16c6.44,302.21-14.38,336.45,16,336.45h99.42c28.86,0,10.49-40.71,16-174.68,0-55.34,16-66.17,43.64-66.17,30.6,0,35.74,21.24,35.74,68.86C386.07,471.55,367.83,512,396.59,512ZM344.85,239.13c-95.8,0-75.64,105.34-75.64,240.85H201.79V191.53h63.45v27.69c0,15.36,23.4,22.91,31.55,7.47,10.5-19.93,37.76-43.2,80-43.2,75.24,0,103.21,37,103.21,136.45V480H412.59c0-152.41,16.12-240.87-67.74-240.87Z" transform="translate(-0.65)"></path><path class="cls-1" d="M23.94,159.55c-30.3,0-9.56,33.82-16,336.45a16,16,0,0,0,16,16h99.52c30.29,0,9.55-33.81,16-336.45C139.46,147.93,99.33,164.22,23.94,159.55ZM107.46,480H39.94V191.55h67.52Z" transform="translate(-0.65)"></path><path class="cls-1" d="M73.64,0c-97.62,0-97,147.82,0,147.82S171.37,0,73.64,0Zm0,115.82c-54.78,0-55.29-83.82,0-83.82S128.34,115.82,73.64,115.82Z" transform="translate(-0.65)"></path></svg></a>
            </div>
          </div>

        </div>
<div class="row">
  <div class="col-xl-12 text-center">
    <p class="footer-copy">Â© Copyright 2020 <span class="footer-blod"> COMPLAI</span>. All Rights Reserved.&nbsp;&nbsp;&nbsp;&nbsp; Power by Sage Informatics Pvt Ltd.</p>
  </div>
</div>

      </div>
    </div>
  </footer><!-- End Footer -->
  <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>

    <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script><nav class="mobile-nav d-lg-none">
        <ul>
          <li><a href="home">Home</a></li>
          <!-- <li><a href="getstates">Find your Location</a></li> -->
          <li><a href="login">Login</a></li>
           <li><a href="signup" class="get-started-btn scrollto">Sign Up</a></li>

        </ul>
      </nav><div class="mobile-nav-overly"></div>

<script>

jQuery(function ($) {

$(".sidebar-dropdown > a").click(function() {
$(".sidebar-submenu").slideUp(200);
if (
$(this)
  .parent()
  .hasClass("active")
) {
$(".sidebar-dropdown").removeClass("active");
$(this)
  .parent()
  .removeClass("active");
} else {
$(".sidebar-dropdown").removeClass("active");
$(this)
  .next(".sidebar-submenu")
  .slideDown(200);
$(this)
  .parent()
  .addClass("active");
}
});

$("#close-sidebar").click(function() {
$(".page-wrapper").removeClass("toggled");
});
$("#show-sidebar").click(function() {
$(".page-wrapper").addClass("toggled");
});

});

</script>


<script>
let slideIndex = 0;
showSlides();

function plusSlides(n) {
	  showSlides(slideIndex += n);
	}

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
 // slides[slideIndex-1].style.display = "block";
 // dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>

  <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script>

var xySize = "250% 250%";
var ySize = "250%";

$(function() {
    $("#zoomimage").change(function() {
		var pre = document.getElementById("preview");
		if($('option:selected', this).text()== '25%')
		{
			pre.style.backgroundSize="250% 250%";	
			xySize = "250% 250%";
		}
        else if($('option:selected', this).text()== '50%')
		{
			pre.style.backgroundSize="500% 500%";	
			xySize = "500% 500%";
		}
		else if($('option:selected', this).text()== '75%')
		{
			pre.style.backgroundSize="750% 750%";	
			xySize = "750% 750%";
		}
		else if($('option:selected', this).text()== '100%')
		{
			pre.style.backgroundSize="1000% 1000%";	
			xySize = "1000% 1000%";
		}
		
    });
});




function zoomIn(event) {
	var pre = document.getElementById("preview");
	var zimage = document.getElementById("zoomimage");
	var value = zimage.options[zimage.selectedIndex].text;
	
	var posX = event.offsetX;
	var posY = event.offsetY;

	var zoom001 = event.target;
	console.log(zoom001.id);
	
	var img = document.getElementById(zoom001.id);
	pre.style.backgroundImage = "url('" + img.getAttribute("src")+ "')";
	
	if(value == '25%')
		{
			pre.style.backgroundSize="250% 250%";	
			console.log("250% 250%");
			pre.style.backgroundPosition=(-posX*20)+"px "+(-posY*20)+"px";
		}
        else if(value == '50%')
		{
			pre.style.backgroundSize="500% 500%";	
			pre.style.backgroundPosition=(-posX*50)+"px "+(-posY*50)+"px";
		}
		else if(value == '75%')
		{
			pre.style.backgroundSize="750% 750%";	
			pre.style.backgroundPosition=(-posX*80)+"px "+(-posY*80)+"px";
		}
		else if(value == '100%')
		{
			pre.style.backgroundSize="1000% 1000%";	
			pre.style.backgroundPosition=(-posX*110)+"px "+(-posY*110)+"px";
		}
		
	pre.style.visibility = "visible";
	

	
	//pre.style.backgroundSize = xySize;
}

function zoomOut() {
  var pre = document.getElementById("preview");
  pre.style.visibility = "visible";
}


</script>

</body></html>