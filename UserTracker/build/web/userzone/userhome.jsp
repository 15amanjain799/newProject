<%-- 
    Document   : userhome
    Created on : 15 Jul, 2019, 11:21:39 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(session.getAttribute("userid")==null || session.getAttribute("userid")=="")
    {
        response.sendRedirect("../index.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcome To Userzone</h1>
    </body>
</html>
