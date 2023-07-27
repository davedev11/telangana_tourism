<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.IOException" %>
      
 <%--     /*Login page code*/ 

	 <%@ page import="java.sql.Connection, java.sql.Statement, java.sql.ResultSet" %>
   <%@ page import="tel_tour.DB_conn_manager" %> 
     
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
		System.out.println("2--");
		
	if (rst.next()){
		System.out.println("3--");
		System.out.println("rs user--"+rst.getString("username"));
		
			String dbpwd = rst.getString("pwd");
			System.out.println("5--");
			if(dbpwd.equals(pwd)){
				System.out.println("6--");
				 //System.out.println("username--"+username+"---logged in pwd--"+pwd);
				 out.println("Welcome " + username );
			}
			else{
				System.out.println("7--");
				out.println("password not matched ");
			}
			System.out.println("8--");
		}
	else{
		System.out.println("9--");
		out.println("user not exist. ");
		}
	System.out.println("10--");
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
 
%> --%> 


	 <%@ page import="java.sql.Connection, java.sql.Statement, java.sql.ResultSet" %>
   <%@ page import="tel_tour.DB_conn_manager" %> 
   
     <%
    	
    	if(request.getMethod().equalsIgnoreCase("POST")){
    		    		
    		int trav = Integer.parseInt(request.getParameter("trav"));
    		String name = request.getParameter("name");
    		String date = request.getParameter("date");
    		Connection conn = null;
    	    PreparedStatement pst = null; 
    	    ResultSet rs = null;
    	    try{
    		Class.forName("org.postgresql.Driver");
    		conn = DB_conn_manager.getConnection(); 
    		
    	/* 	int trav = Integer.parseInt(request.getParameter("trav"));
     		String name=request.getParameter("name");
    	 */	
    		//request.setAttribute("Name",name);
    		
    		String insert_sql = "INSERT INTO testing(trav,date,name) VALUES ('"+trav+"', '"+date+"', '"+name+"')";
            pst = conn.prepareStatement(insert_sql);
           /*  pst.setInt(1, trav);
            pst.setDate(2, java.sql.Date.valueOf(date));
            pst.setString(3, name); */
    		
    		
			 System.out.println("Sql--"+insert_sql+"---connection--"+conn);
		// pst = conn.prepareStatement (insert_sql);
		pst.executeUpdate();
		
	System.out.println("Sql--");
	response.getWriter().write("Data submitted successfully!");
			
    	    }catch (Exception e) {
                response.getWriter().write("Error occurred while submitting data.");
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
    	
    %>
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.3/jquery-ui.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>	
	<form method="post" id = "travForm" >
                
          <div>
              <label >No. of travellers </label>
              <input type="number" name="trav" id="trav" value="1" min="1">
          </div>
         
         <div><label for="name">Name</label>
             <input type = "text" id="name" name="name" placeholder="Your name" maxlength="20" required> 
             </div><br>
             <div>
                 <label for="date">Date:</label>
        <input type="date" id="date" name="date" required>
          </div>
             <button type="submit" name="proceed" onclick="getDetails()">Proceed to book</button>
       
          </form>
          
<script>
function getDetails(){
	
	 /* alert("1"); */
	// document.getElementById("reportpage").innerHTML="Loading...."; 
	 //alert("2");
	 var trav=document.getElementById("trav").value;
	 
	 var name = document.getElementById("name").value;
     var date = document.getElementById("date").value;
	 //alert("no_trav-->"+no_trav +" name-->"+name);
	 var url_var = "page1.jsp";
	 
	 var formData = {
			  "trav": trav,
             "name": name ,
             "date": date
         };
	 
	 $.ajax({
		 url  : url_val,
		 method : "post",
		 data :formData,
		 
		 cache : false,
		 success : function(response){
			 alert("Data submitted successfully");
		 },
		 error: function(){
			 alert("Error occurred in submitting");
		 }
		 
	 });
	
	}

</script>     
     
 <!--
<div id="reportpage"></div> 
 <script>
function validate1(){
document.getElementById("reportpage").innerHTML="Loading....";
var month=document.getElementById("month1").value;
var year=document.getElementById("year1").value;
var url_val = "Allot_District.jsp";
$('html, body').animate({
scrollTop: $("#reportpage").offset().top
}, 1000);
$.ajax({
type : "post",
data : "&month="+month+"&year="+year,
url : url_val,
cache : false,
success : function(html) {
$("#reportpage").html(html);
}
});
return false;
}
</script> -->

 
       
        <!-- <form method="post"  action="test1.jsp">
           
                <div><label>User Name</label>
                <input type = "text" name="username"  placeholder="Enter username" required>
                </div><br>
                <div><label>Password</label>
                <input type="password" name="pwd" placeholder="Your password" required> 
                </div><br>
                <button type="submit"  name = "submit">Login</button>
          
        </form> -->
        
        
        
</body>
</html>




 


<!-- ajax  code : 
//these 2 in head
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.3/jquery-ui.js"></script>


<script>
function validate1(){
document.getElementById("reportpage").innerHTML="Loading....";
var month=document.getElementById("month1").value;
var year=document.getElementById("year1").value;
var url_val = "Allot_District.jsp";
$('html, body').animate({
scrollTop: $("#reportpage").offset().top
}, 1000);
$.ajax({
type : "post",
data : "&month="+month+"&year="+year,
url : url_val,
cache : false,
success : function(html) {
$("#reportpage").html(html);
}
});
return false;
}
</script>

<div id="reportpage"></div> -->