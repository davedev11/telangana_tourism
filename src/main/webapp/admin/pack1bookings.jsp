<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.IOException" %>
      
	<%@ page import="java.sql.Connection, java.sql.Statement, java.sql.ResultSet" %>
    <%@ page import="tel_tour.DB_conn_manager" %> 
   
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Telangana Tourism</title>
        <link rel="icon" type="image/png" sizes="32x32" href="../images/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="../images/favicon-16x16.png">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- font awesome cdn -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!-- fonts -->
        <link rel = "stylesheet" href = "../font/fonts.css">
        <!-- normalize css -->
        <link rel = "stylesheet" href = "../css/normalize.css">
        <!-- custom css -->
        <link rel = "stylesheet" href = "../css/utility.css">
        <link rel = "stylesheet" href = "../css/style.css">
        <link rel = "stylesheet" href = "../css/responsive.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.3/jquery-ui.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>

<body>

				 <!-- navbar  -->
				        <nav class = "navbar">
				            <div class = "container flex">
				                <a href = "../index.jsp" class = "site-brand">
				                    Telangana <span>Tourism</span>
				                </a>
				
				                <button type = "button" id = "navbar-show-btn" class = "flex">
				                    <i class = "fas fa-bars"></i>
				                </button>
				                <div id = "navbar-collapse">
				                    <button type = "button" id = "navbar-close-btn" class = "flex">
				                        <i class = "fas fa-times"></i>
				                    </button>
				                    <ul class = "navbar-nav">
				                        <li class = "nav-item">
				                            <a href = "../index.jsp" class = "nav-link">Home</a>
				                        </li>
				                        <li class = "nav-item">
				                            <a href = "../packages.jsp" class = "nav-link">Packages</a>
				                        </li>
				                        <!-- <li class = "nav-item">
				                            <a href = "#" class = "nav-link">Hotels</a>
				                        </li> -->
				                        <li class = "nav-item">
				                            <a href = "../about.jsp" class = "nav-link">About</a>
				                        </li>
				                        <li class = "nav-item">
				                            <a href = "#" class = "nav-link">Profile</a>
				                        </li>
				                    </ul>
				                </div>
				            </div>
				        </nav>
				        <!-- end of navbar  -->
				
				        <!-- header -->
				        <header class = "flex header-sm">
				            <div class = "container">
				                <div class = "header-title">  
				                </div>
				            </div>
				        </header>
				        <!-- header -->
				
				        <!-- about section -->
				        <section id = "about" class = "py-4">
				            <div class = "container">
				                <div class = "title-wrap">
				                    
				                    <h2 class = "lg-title">Analyse bookings made so far</h2>
				                </div>
				                <div class="container" >
									<div class = "dashboard-box">
				                    	<div class = "dash-left">
						                    <ul style="line-height: 1.5rem;">
												<!-- <li style="list-style-type: disc;"><a href="Todaybookings.jsp"> Bookings made today </a></li>-->							
												<li style="list-style-type: disc;  "><a href="pack1bookings.jsp" style="color: rgb(0, 24, 244);"> Bookings for package 1 </a></li>
												<li style="list-style-type: disc;"><a href="pack2bookings.jsp" style="color: rgb(0, 24, 244);"> Bookings for package 2 </a></li>
												<li style="list-style-type: disc;"><a href="pack3bookings.jsp" style="color: rgb(0, 24, 244);"> Bookings for package 3 </a></li>
												<li style="list-style-type: disc;"><a href="pack4bookings.jsp" style="color: rgb(0, 24, 244);"> Bookings for package 4 </a></li>
												
											</ul>
										</div>
						<div class = "dash-right">
<h3 class = "lg-title">Package 1:</h3>
<div id = "table1Container"> </div>

<script >

	$(document).ready(function(){
		
		$.ajax({
			url : "tablepk1.jsp",
			method: "GET",
			dataType: "html",
			success: function(data){
				$("#table1Container").html(data);
			},
			error: function(){
				alert("error occurred in retrieving table data.");
			}
		});
		
		
	});

		</script>
								</div>
							 </div>
		                </div>
		            </div>
		        </section>
		        <!-- end of about section -->
		

        <!-- footer -->
        <footer class = "py-4">
            <div class = "container footer-row">
                <div class = "footer-item">
                    <a href = "../index.jsp" class = "site-brand">
                        Telangana<span>Tourism</span>
                    </a>
                    <p class = "text"><ul>
                        <li>3-5-891, Tourism House Himayatnagar, Hyderabad - 500 029, Telangana, India.</li>
                        <br />
                        <li> ☏ 1800-425-46464</li><br />
                        <li><a href = "#">✉ testmail.gov@gmail.in</a></li>
                    </ul></p>
                </div>

                <div class = "footer-item">
                    <h2>Follow us: </h2>
                    <ul class = "social-links">
                        <li>
                            <a href = "https://www.facebook.com/"  target="_blank">
                                <i class = "fab fa-facebook-f"></i>
                            </a>
                        </li>
                        <li>
                            <a href = "https://www.instagram.com/"  target="_blank">
                                <i class = "fab fa-instagram"></i>
                            </a>
                        </li>
                        <li>
                            <a href = "https://twitter.com/"  target="_blank">
                                <i class = "fab fa-twitter"></i>
                            </a>
                        </li>
                        <li>
                            <a href = "https://in.pinterest.com/"  target="_blank">
                                <i class = "fab fa-pinterest"></i>
                            </a>
                        </li>
                       
                    </ul>
                </div>

                <div class = "footer-item">
                    <h2>Popular Places:</h2>
                    <ul>
                        <li><a href = "../index.jsp#featured">Warangal</a></li>
                        <li><a href =  "../index.jsp#featured">Ramoji Film City</a></li>
                        <li><a href =  "../index.jsp#featured">Hyderabad</a></li>
                        <li><a href =  "../index.jsp#featured">Ananthagiri Hills</a></li>
                        <li><a href =  "../index.jsp#featured">Ramoji Film City</a></li>
                        <li><a href =  "../index.jsp#featured">Bhadrachalam</a></li>
                        
                    </ul>
                </div>

                <div class = "subscribe-form footer-item">
                    <h2>Subscribe for Newsletter!</h2>
                    <form class = "flex">
                        <input type = "email" placeholder="Enter Email" class = "form-control">
                        <input type = "submit" class = "btn" value = "Subscribe">
                    </form>
                </div>
            </div>
        </footer>
        <!-- end of footer -->
		
		        <!-- js -->
		        <script src = "../js/script.js"></script>
        
</body>
</html>