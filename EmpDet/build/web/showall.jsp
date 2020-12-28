<%-- 
    Document   : showall
    Created on : 11 Jul, 2019, 7:45:08 AM
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
        <h1>Employee's Information</h1>
        <hr/>
        <table border='1'>
            <tr>
                <th>Employee Id</th>
                <th>Employee Name</th>
                <th>Department</th>
                <th>Designation</th>
                <th>Salary</th>
                <th>Delete</th>
                <th>Update</th>
            </tr>
            <%
             Class .forName("com.mysql.jdbc.Driver"); 
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/empinfo","root","");
             PreparedStatement ps=con.prepareStatement("select * from empdet");
             ResultSet rs=ps.executeQuery();
             while(rs.next())
             {
            %>
            <tr>
                <td><%=rs.getString("empid") %></td>
                <td><%=rs.getString("empname")%></td>
                <td><%=rs.getString("department")%></td>
                <td><%=rs.getString("designation")%></td>
                <td><%=rs.getInt("salary")%></td>
                <td><a href="delete.jsp?empid=<%=rs.getString("empid")%>">Delete</a></td>
                <td><a href="show.jsp?empid=<%=rs.getString("empid")%>">Update</a></td>
            </tr>
            
           <% } %> 
        </table>   
    </body>
</html>
