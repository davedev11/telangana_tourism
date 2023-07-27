<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.Connection, java.sql.Statement, java.sql.ResultSet" %>
   <%@ page import="tel_tour.DB_conn_manager" %> 
  
<%@ page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.IOException" %>

<!-- jsp code in body near form-->

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Telangana Tourism</title>
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- font awesome cdn -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!-- fonts -->
        <link rel = "stylesheet" href = "font/fonts.css">
        <!-- normalize css -->
        <link rel = "stylesheet" href = "css/normalize.css">
        <!-- custom css -->
        <link rel = "stylesheet" href = "css/utility.css">
        <link rel = "stylesheet" href = "css/style.css">
        <link rel = "stylesheet" href = "css/responsive.css">
        
    
    </head>
    <body>
        <!-- navbar  -->
        <nav class = "navbar">
            <div class = "container flex">
                <a href = "index.html" class = "site-brand">
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
                            <a href = "index.html" class = "nav-link">Home</a>
                        </li>
                        <li class = "nav-item">
                            <a href = "packages.html" class = "nav-link">Packages</a>
                        </li>
                        <!-- <li class = "nav-item">
                            <a href = "#" class = "nav-link">Hotels</a>
                        </li> -->
                        <li class = "nav-item">
                            <a href = "about.html" class = "nav-link">About</a>
                        </li>
                        <li class = "nav-item">
                            <a href = "login.html" class = "nav-link">Admin</a>
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
                    <h1 style="color: rgb(248, 138, 12);">Welcome Admin!</h1>
                   
                   </div>
            </div>
        </header>
        <!-- header -->

        <!-- login section -->
        <section id = "contact" class = "py-4">
            <div class = "container">
                <div class = "title-wrap">
                    <span class = "sm-title">Login to get details</span>
                   
                </div>

                <div class = "contact-row">
                    <div class = "contact-left">
                    
               
<%
if(request.getParameter("submit")!=null){
	Connection conn = null;
    PreparedStatement pst = null; 
    ResultSet rst = null;
        
    String username = request.getParameter("username");
	String pwd = request.getParameter("pwd");
	
    try{
	Class.forName("org.postgresql.Driver");
	conn = DB_conn_manager.getConnection(); 
	
	String sql = "SELECT * from adminlogin WHERE username = ? ";
	
	pst = conn.prepareStatement(sql);
		pst.setString(1,username); 
		
		rst = pst.executeQuery();
		//System.out.println("2--");
		
	if (rst.next()){
		System.out.println("user found-- " + username );
		
			String dbpwd = rst.getString("pwd");
			
			if(dbpwd.equals(pwd)){
				System.out.println("username--"+username+"---logged in pwd--"+pwd);
				response.sendRedirect("admin/Dashboard.jsp");
			}
			
			else{
				//System.out.println("7--");
				%>
        <p style="color: red;"> password not matched.Try Again</p>
<%
				
				System.out.println("password not matched.Try Again ");
			}
			
		}
	else{
		%>
        <p style="color: red;">user not exist .Try Again</p>
<%
		System.out.println("user not exist--");
		
		}
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // Close resources
        try {
            if (rst != null) {
                rst.close();
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
 
%>
      
                        <form method="post" class = "contact-form" action="logincheck.jsp">
                           
                                <div><label>User Name</label>
                                <input type = "text" name="username" class = "form-control" placeholder="Enter username" required>
                                </div><br>
                                <div><label>Password</label>
                                <input type="password" name="pwd" class="form-control" placeholder="Your password" required> 
                                </div><br>
                                <button type="submit"  name = "submit" class="btn">Login</button>
                          
                        </form>
                            
             </div>
                   
                </div>
            </div>
        </section>
        <!-- end of login section -->
      <%--   
          <%
         Integer hitsCount = (Integer)application.getAttribute("hitCounter");
         if( hitsCount ==null || hitsCount == 0 ) {
            /* First visit */
           // out.println("Welcome to my website!");
            hitsCount = 1;
         } else {
            /* return visit */
            //out.println("Welcome back to my website!");
            hitsCount += 1;
         }
         application.setAttribute("hitCounter", hitsCount);
      %>
      
         <p>Total number of visits: <%= hitsCount%></p>
     
 --%>

        <!-- footer -->
        <footer class = "py-4">
            <div class = "container footer-row">
                <div class = "footer-item">
                    <a href = "index.html" class = "site-brand">
                        Telangana<span>Tourism</span>
                    </a>
                    <p class = "text"><ul>
                        <li>3-5-891, Tourism House Himayatnagar, Hyderabad - 500 029, Telangana, India.</li>
                        <br />
                        <li> ☏ 1800-425-46464</li><br />
                        <li><a href = "#">✉ testmail.gov@gmail.in</a></li>
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
                         <li><a href = "index.html#featured">Warangal</a></li>
                        <li><a href =  "index.html#featured">Ramoji Film City</a></li>
                        <li><a href =  "index.html#featured">Hyderabad</a></li>
                        <li><a href =  "index.html#featured">Ananthagiri Hills</a></li>
                        <li><a href =  "index.html#featured">Ramoji Film City</a></li>
                        <li><a href =  "index.html#featured">Bhadrachalam</a></li>
                        
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
        <script src = "js/script.js"></script>
       
    </body>
</html>
