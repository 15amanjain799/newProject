<%-- 
    Document   : show
    Created on : 12 Jul, 2019, 8:49:13 AM
    Author     : user
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Edit Employee Information</h1>
        <hr/>
        <%
         String empid=request.getParameter("empid");
         Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/empinfo","root","");
          PreparedStatement ps=con.prepareStatement("select * from empdet where empid=?");
          ps.setString(1,empid);
          ResultSet rs=ps.executeQuery();
          if(rs.next())
          {
              %>
              <form action="update.jsp" method="post">
              Employee Name :
              <input type="text" name="empname" value="<%=rs.getString("empname")%>"/>
              <br/><br/>
              Enter Department:
              <input type="text" name="department" value="<%=rs.getString("department")%>"/>
              <br/><br/>
              Enter Designation:
              <input type="text" name="designation" value="<%=rs.getString("designation")%>"/>
              <br/><br/>
              Enter Salary:
              <input type="number" name="salary" value="<%=rs.getInt("salary")%>"/>
              <input type="hidden" name="empid" value="<%=rs.getString("empid")%>"/>
              <br/><br/>
              <input type="submit" value="Update"/>
              </form>
              
        
        <% } 
        
         else
          {
            response.sendRedirect("showall.jsp");  
          }
        %>
    </body>
</html>
