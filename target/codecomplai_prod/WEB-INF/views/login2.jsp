<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en"><head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>COMPLAI</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="" rel="icon">
  <link href="" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,400;0,500;0,900;1,100;1,300;1,400;1,700;1,900&amp;display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
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
  #header {
    transition: all 0.5s;
    z-index: 997;
    padding: 25px 0;
    background: #ffffff;
    height: 85px;
}
.mobile-nav-toggle {
    position: fixed;
    top: 30px;
    right: 15px;
    z-index: 9998;
    border: 0;
    background: none;
    font-size: 24px;
    transition: all 0.4s;
    outline: none !important;
    line-height: 1;
    cursor: pointer;
    text-align: right;
}
</style>

</head>

<body><button type="button" class="mobile-nav-toggle d-lg-none"><i class="icofont-navigation-menu"></i></button>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container-fluid d-flex align-items-center">
      <div class="logo mr-auto">
        <!-- <h1 class="text-light"><a href="#"><span>complai</span></a></h1> -->
        <!-- Uncomment below if you prefer to use an image logo -->
        <a href="home"><img src="assets/images/complai-color-logo.svg" alt="logo" class="img-fluid logo-height-55"></a>
      </div>
      
      		<!-- commenting the search bar in login page -->
		
          <!--
          
          <div class="search-newsletter d-none d-lg-block">
              <div class="container">
                <div class="row justify-content-center">
                    <form method="get" action="search">
                      <div class="main-search-icon-wrap">
                        <svg width="16" height="17" viewBox="0 0 16 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                          <path d="M15.8045 15.7908L11.2545 10.9565C12.1359 9.79983 12.6665 8.33004 12.6665 6.72923C12.6665 3.01902 9.82522 0.00012207 6.33325 0.00012207C2.84128 0.00012207 0 3.01899 0 6.7292C0 10.4394 2.84132 13.4583 6.33328 13.4583C7.83992 13.4583 9.22325 12.8945 10.3119 11.9581L14.8619 16.7924C14.9919 16.9305 15.1625 17 15.3332 17C15.5039 17 15.6745 16.9305 15.8045 16.7924C16.0652 16.5155 16.0652 16.0678 15.8045 15.7908ZM6.33328 12.0416C3.57597 12.0416 1.33333 9.65885 1.33333 6.7292C1.33333 3.79955 3.57597 1.41675 6.33328 1.41675C9.0906 1.41675 11.3332 3.79955 11.3332 6.7292C11.3332 9.65885 9.09057 12.0416 6.33328 12.0416Z" fill="black"></path>
                        </svg>
                      </div>
                      <input id="search" name="search" type="text" placeholder="search your codes here">
                    </form>
                </div>
              </div>
            </div> 
            
            -->
      <nav class="nav-menu d-none d-lg-block float-right">
        <ul>
          <li class="active"><a href="home">Home</a></li>
                    <li><a href="login">Login</a></li>
          <li><a href="signup" class="get-started-btn scrollto">Sign Up</a></li>
                  </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div class="hero-container">
      <!-- <h1>COMPLAI LOGO</h1> -->
      <img src="assets/images/complai-color-logo.svg" class="img-fluid logo-height-75">
      <!-- <h2>We are team of talanted designers making websites with Bootstrap</h2> -->
      <!--Search Engine-->

    </div>

    <div class="container">
	<div class="row">
	<div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
					<div class="card">
							<div class="card-body">
								<div class="m-sm-4">
		  <c:set var="loginStatus" value="${loginStatus}" scope="request"/>
          <c:if test = "${not empty loginStatus}">
          <p style="color:red">Invalid username or password. Please try again...</p>
          </c:if>
          <c:if test = "${not empty signupStatus}">
          <p style="color:green"><c:out value="${signupStatus}"/></p>
          </c:if>
		
									<form method="post" action="/${siteurl}/user_login">
                    <input type="hidden" name="_token" value="a8OS8A1IMADyZfMyrKuxiy0AUUQsKPQuUDFRtXga">
										<div class="form-group">
											<label>Username/Email</label>
											<input class="form-control form-control-lg" type="text" name="username" placeholder="Email or Username" required>
										</div>
										<div class="form-group">
											<label>Password</label>
											<input class="form-control form-control-lg" type="password" name="password" placeholder="Password" required>
										</div>
										<div class="text-center mt-3">
											<!-- <a href="dashboard-default.html" class="btn btn-lg get-started-btn">Login</a> -->
											<button type="submit" class="btn btn-lg get-started-btn">Login</button>
										</div>
									</form>
								</div>
							</div>
						</div>

					</div>
				</div>


  </div>

  </section><!-- End Hero -->

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
            <ul>
              <li><a href="home">Home</a></li>
              <li> <a href="#">Link one</a></li>
              <li> <a href="#">Link two</a></li>
              <li> <a href="#">Privacy</a></li>
              <li> <a href="#">Contact us</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>QUICK LINKS</h4>
            <ul>
              <li><a href="#">Home</a></li>
              <li> <a href="#">Link one</a></li>
              <li> <a href="#">Link two</a></li>
              <li> <a href="#">Privacy</a></li>
              <li> <a href="#">Contact us</a></li>
            </ul>
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
    <p class="footer-copy">© Copyright 2020 <span class="footer-blod"> COMPLAI</span>. All Rights Reserved.&nbsp;&nbsp;&nbsp;&nbsp; Power by Sage Informatics Pvt Ltd.</p>
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

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script><nav class="mobile-nav d-lg-none">
        <ul>
          <li class="active"><a href="http://demo.codecomplai.com">Home</a></li>
                    <li><a href="http://demo.codecomplai.com/login">Login</a></li>
          <li><a href="http://demo.codecomplai.com/signup" class="get-started-btn scrollto">Sign Up</a></li>
                  </ul>
      </nav><div class="mobile-nav-overly"></div>




</body></html>