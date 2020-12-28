<%-- 
    Document   : show1
    Created on : 13 Jul, 2019, 5:19:21 PM
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
        <h1>Edit Customer Information</h1>
        <hr/>
        <%
         String cuid=request.getParameter("cuid");
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/custoinfo","root","");
         PreparedStatement ps=con.prepareStatement("select * from custo where cuid=?");
         ps.setString(1,cuid);
         ResultSet rs=ps.executeQuery();
         if(rs.next())
         {
         %>
         <form action="update1.jsp" method="post">
         Enter Customer Name
         <input type="text" name="cuname" value="<%=rs.getString("cuname")%>"/>
         <br/><br/>
         Enter Customer Address
         <input type="text" name="cuaddress" value="<%=rs.getString("cuaddress")%>"/>
         <br/><br/>
         Enter Customer Contact number
         <input type="number" name="cucon" value="<%=rs.getInt("cucon")%>"/>
         <br/><br/>
         Enter Customer Email
         <input type="text" name="cuemail" value="<%=rs.getString("cuemail")%>">
         <input type="hidden" name="cuid" value="<%=rs.getString("cuid")%>"/>
         <br/><br/>
         <input type="submit" value="Update"/>
         </form>
         
         <% }
         else 
         {
         response.sendRedirect("showall1.jsp");    
         }
          
         %>      
    </body>
</html>
