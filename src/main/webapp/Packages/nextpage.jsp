<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.IOException" %>     
	
	<%@ page import="java.sql.Connection, java.sql.Statement, java.sql.ResultSet" %>
    <%@ page import="tel_tour.DB_conn_manager" %> 
      
     <%
   		Connection conn = null;
     	PreparedStatement pst = null; 
   	    ResultSet rs = null;
   	    try{
   		Class.forName("org.postgresql.Driver");
   		conn = DB_conn_manager.getConnection(); 
   	
   		String sql = "SELECT * FROM testing ";
   		
   		pst = conn.prepareStatement(sql);
        rs = pst.executeQuery();
		
	  StringBuilder tableHtml = new StringBuilder("<table style='border-collapse: collapse; width: 25%;'>");
      tableHtml.append("<tr><th style='border: 1px solid black; text-align: center; padding: 8px;'>No.trav</th><th style='border: 1px solid black; text-align: center; padding: 8px;'>Name</th><th style='border: 1px solid black; text-align: center; padding: 8px;'>Date</th></tr>");
      while (rs.next()) {
    	  int trav = rs.getInt("trav"); // Get the 'age' as an integer
          String name = rs.getString("name");
          Date date = rs.getDate("date");

          // Append each row to the table
          tableHtml.append("<tr>");
          tableHtml.append("<td style='border: 1.5px solid black; text-align: center; padding: 8px;'>").append(trav).append("</td>");
          tableHtml.append("<td style='border: 1.5px solid black; text-align: center; padding: 8px;'>").append(name).append("</td>");   
          tableHtml.append("<td style='border: 1.5px solid black; text-align: center; padding: 8px;'>").append(date).append("</td>");         
          tableHtml.append("</tr>");
      }
      tableHtml.append("</table>");

      // Send the generated HTML table back as the response
      response.getWriter().write(tableHtml.toString());
  } catch (Exception e) {
      // Handle exceptions and send an error response (optional, but recommended)
      response.getWriter().write("Error occurred while retrieving table data.");
      e.printStackTrace();
  } finally {
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
      } catch (SQLException e) {
          e.printStackTrace();
      }
  }
%>
        
      
<!DOCTYPE html>
<html>
<head>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <%-- <%
String no_trav=request.getParameter("no_trav");
System.out.println("no_trav--->"+no_trav);

%> 

<script>
 function getDetails(){
	
	 /* alert("1"); */
	 document.getElementById("reportpage").innerHTML="Loading...."; 
	 var no_trav=document.getElementById("no_trav").value;
	 var myDate = document.getElementById("myDate").value;
	 var name = document.getElementById("name").value;
	 var email_add = document.getElementById("email_add").value;
	 var mob_no = document.getElementById("mob_no").value;
	 alert("no_trav-->"+no_trav + " Date->"+myDate +" name:"+name+" email "+email_add);
	 
	/*  alert("2"); */
	 
	  var url_val ="nextpage.jsp";
	 alert("3");
	 $('html, body').animate({
	 scrollTop: $("#reportpage").offset().top
	 }, 1000);
	 $.ajax({
	 type : "post",
	 data : "&no_trav="+no_trav+"&myDate="+myDate+"&name="+name+"&email_add="+email_add+"&mob_no="+mob_no,
	 alert("4");
	 url : url_val,
	 cache : false,
	 success : function(html) {
	 $("#reportpage").html(html);
	 }
	 });
	 return false; 
	 }

	 
 
 </script>
        

<script>
function validate1(){
document.getElementById("reportpage").innerHTML="Loading....";
var month=document.getElementById("month1").value;
var year=document.getElementById("year1").value;
var url_val = "PMGKAY_Allot_District.jsp";
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
</script> --%>

</body>
</html>


