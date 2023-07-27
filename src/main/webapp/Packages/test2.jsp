<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.IOException" %>
      
	<%@ page import="java.sql.Connection, java.sql.Statement, java.sql.ResultSet" %>
    <%@ page import="tel_tour.DB_conn_manager" %> 
   
<%--     
 <%
String no_trav=request.getParameter("no_trav");
System.out.println("no_trav--->"+no_trav);
%>   
     --%>
   
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

<div id = "tableContainer"> </div>

<script >

	$(document).ready(function(){
		
		$.ajax({
			url : "nextpage.jsp",
			method: "GET",
			dataType: "html",
			success: function(data){
				$("#tableContainer").html(data);
			},
			error: function(){
				alert("error occurred in retrieving table data.");
			}
		});
		
		
	});

</script>

</body>
</html>