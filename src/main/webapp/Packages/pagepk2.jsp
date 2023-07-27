<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.Connection, java.sql.Statement, java.sql.ResultSet" %>
   <%@ page import="tel_tour.DB_conn_manager" %> 
    
<%@ page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.IOException" %>
    
    <%
    
    if(request.getParameter("proceed")!=null){
		if(request.getMethod().equalsIgnoreCase("POST")){
			
			int trav = Integer.parseInt(request.getParameter("trav"));
    		String date = request.getParameter("date");
    		String name=request.getParameter("name");
    		String mail=request.getParameter("mail");
    		String mob = request.getParameter("mob");
    		
    		Connection conn = null;
    	    PreparedStatement pst = null; 
    	    ResultSet rs = null;
    	    
    	    try{
    		Class.forName("org.postgresql.Driver");
    		conn = DB_conn_manager.getConnection(); 
    		
    		String insert_sql = "INSERT INTO travtwo(package,trav,date,name,mail,mob) values('pack2' , '"+trav+"','"+date+"','"+name+"','"+mail+"', '"+mob+"')";
    		 
    		pst = conn.prepareStatement (insert_sql);
			
    		 System.out.println("Sql--"+insert_sql+"---connection--"+conn);
		
			pst.executeUpdate();
		
			System.out.println("Sql--");
			//response.getWriter().write("Data submitted successfully!");
			%>
    		<script> alert("Booking Succesful.We will soon contact you."); </script>
    		<%
    	    }catch (Exception e) {
		        e.printStackTrace();
		    } finally {
		        // Close resources
		        try {
		            if (rs != null) {
		                rs.close();
		            }
		            if (pst != null) {
		                pst.close();
		            }
		            if (conn != null) {
		                conn.close();
		            }
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
		    }

		}
	}
    	
    %>
    
    
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
                            <a href = "../logincheck.jsp" class = "nav-link">Admin</a>
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
                    <h1>package2</h1>
                    <p> round trip to Wonderla-Hyderabad</p>
                </div>
            </div>
        </header>
        <!-- header -->

        <!-- about section -->
        <section id = "about" class = "py-4">
            <div class = "container">
                <div class = "cont-box">
                    <div class="box1">
                        <p> this is package 1 .
                             </p>
                        <h2>Nagarjuna sagar Tour - Telangana Tourism</h2>
 <br>HYDERABAD - NAGARJUNASAGAR - HYDERABAD
 <br>Every Saturday & Sunday
 <br>Tour by Non AC Coach
 <br>
 <br>Tour Itinerary
 <br>7:30 AM Departure from Paryatak Bhavan
 <br>8:00 AM Departure from CRO Basheer Bagh to Nagarjunasaar
 <br>11:30 AM Arrival to Nagarjunasagar
 <br>11:40 AM to 12:30 PM Visit Buddavanam Project
 <br>1:00 PM to 2:00 PM Lunch Break
 <br>2:00 PM to 4:00 PM Boating, Museum and Nagarjunakonda
 <br>4:00 PM Dam view
 <br>5:00 PM Departure from Nagarjunasagar
 <br>9:00 PM Arrival to Hyderabad
 <br>
 <br>
 <br>NOTE: The above time is estimated only, Actual Schedule of Departure / Arrival may vary due to traffic and other conditions
                      
                        <br>
                        <br>
                        <b>Tariff :  Rs.800/- per head(above 6yrs)</b><br><br>
                        <i>Exclusions: Boating, Entry, Food, Etc.</i>
                        <br><br>
                        <img src="../images/Wonderla-Hyderabad.jpg" class="iiimaaageee">
                        <br>
                        
                    </div>
                    <div class="box2">
                    
                        <section id="form-section"  >
                            <div>
                                 <form method="post" class = "contact-form" id = "travForm2" >
                                    <div>
                                        <label >No. of travelers </label>
                                        <input type="number" name="trav" id='trav' class = "form-control" value="1" min="1">
                                    </div>
                                    <div>
						                 <label >Date of travel </label>
						                 <input type="date" name="date" id="date" class = "form-control" min="" max="" required>
						             </div>                                 
                                    <div><label for="name">Name</label>
                                        <input type = "text" id="name" name="name" class = "form-control" placeholder="Your name" maxlength="20" required> 
                                     </div><br>
                                     <div><label>Email</label>
                                        <input type = "email" name="mail" id="mail" class = "form-control" placeholder="Your email" required>
                                   	 </div><br>
                                     <div><label>Phone</label>
                                        <input type="tel" name="mob" id="mob"  class="form-control" placeholder="Mobile number" required> 
                                     </div><br>
                                     <button type="submit"  class="btn" name="proceed" onclick="getDetails()">Proceed to book</button>
                                    <br>
                                   </form>
                                </div>
                        
                            </section>
                    </div>
                </div>
                
            </div>
        </section>
        <!-- end of form section -->
<script>
            // Get today's date
            var today = new Date().toISOString().split("T")[0];
            
            // Set the minimum date for the input
            document.getElementById("date").min = today;

            var maxDate = new Date();
        maxDate.setDate(maxDate.getDate() + 245);
        document.getElementById("date").max = maxDate.toISOString().split("T")[0];
        </script> 

 <script>
 function getDetails(){
	
	 /* alert("1"); */
	// document.getElementById("reportpage").innerHTML="Loading...."; 
	 
	 var trav=document.getElementById("trav").value;
	 var name = document.getElementById("name").value;
     var date = document.getElementById("date").value;
     var mail = document.getElementById("mail").value;
     var mob = document.getElementById("mob").value;
	
	 var url_val ="pagepk2.jsp";
	
	 var form2Data = {
			 "trav": trav,
             "date": date,
             "name": name, 
             "mail": mail, 
             "mob ": mob
	 };
	 //alert("3");
	 
	 $.ajax({
		 url : url_val,
	 method : "post",
	 data : form2Data,
	 //alert("4");
	 
	 cache : false,
	 success: function (response) {
       //alert("Data submitted successfully");
     },
     error: function () {
        // window.confirm("Error occurred in submitting");
     }
 });
	
	 
	}
 
 </script>
        <!-- end of form section -->

         

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
        <script>
            
        </script>
    </body>
</html>