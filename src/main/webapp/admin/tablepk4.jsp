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
   	
   		String sql = "SELECT trav,date,name,mail,mob FROM travfour order by date asc; ";
   		//trav,date,name,mail,mob
   		pst = conn.prepareStatement(sql);
        rs = pst.executeQuery();
		
	  StringBuilder tableHtml = new StringBuilder("<table style='border-collapse: collapse; width: 80%;'>");
      tableHtml.append("<tr><th style='border: 1px solid black; text-align: center; padding: 8px;'>No.trav</th><th style='border: 1px solid black; text-align: center; padding: 8px;'>Date</th><th style='border: 1px solid black; text-align: center; padding: 8px;'>Name</th><th style='border: 1px solid black; text-align: center; padding: 8px;'>Mail</th><th style='border: 1px solid black; text-align: center; padding: 8px;'>Mob</th></tr>");
      while (rs.next()) {
    	  	int trav = rs.getInt("trav");
            Date date = rs.getDate("date");
            String name = rs.getString("name");
            String mail = rs.getString("mail");
            String mob = rs.getString("mob");
	  		

          // Append each row to the table
          tableHtml.append("<tr>");
          tableHtml.append("<td style='border: 1.5px solid black; text-align: center; padding: 8px;'>").append(trav).append("</td>");
          tableHtml.append("<td style='border: 1.5px solid black; text-align: center; padding: 8px;'>").append(date).append("</td>"); 
          tableHtml.append("<td style='border: 1.5px solid black; text-align: center; padding: 8px;'>").append(name).append("</td>");
          tableHtml.append("<td style='border: 1.5px solid black; text-align: center; padding: 8px;'>").append(mail).append("</td>");
          tableHtml.append("<td style='border: 1.5px solid black; text-align: center; padding: 8px;'>").append(mob).append("</td>");
          tableHtml.append("</tr>");
      }
      tableHtml.append("</table>");

      // Send the generated HTML table back as the response
      response.getWriter().write(tableHtml.toString());
  } catch (Exception e) {
      //response.getWriter().write("Error occurred while retrieving table data.");
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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>