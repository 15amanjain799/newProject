<%-- 
    Document   : showall1
    Created on : 11 Jul, 2019, 4:59:49 PM
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
        <h1>Customer's Information</h1>
        <hr/>
        <table border='1'>
            <tr>
                <th>Customer Id</th>
                <th>Customer Name</th>
                <th>Customer  Address</th>
                <th>Customer Contact Number</th>
                <th>Customer Email</th>
                <%
                    Class .forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/custoinfo","root","");
                    PreparedStatement ps=con.prepareStatement("select * from custo");
                    ResultSet rs=ps.executeQuery();
                    while(rs.next())
                    {    
                %>
                <tr>
                <td><%=rs.getString("cuid")%></td>
                <td><%=rs.getString("cuname")%></td>
                <td><%=rs.getString("cuaddress")%></td>
                <td><%=rs.getString("cucon")%></td>
                <td><%=rs.getString("cuemail")%></td>
                <td><a href="delete1.jsp?cuid=<%=rs.getString("cuid")%>">Delete</a></td>
                <td><a href="show1.jsp?cuid=<%=rs.getString("cuid")%>">Update</a></td>
                </tr> 
            <% } %>
        </table>
    </body>
</html>
