<%-- 
    Document   : adminhome
    Created on : 15 Jul, 2019, 11:22:13 AM
    Author     : Aman Jain
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    if(session.getAttribute("adminid")==null || session.getAttribute("adminid")=="")
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
        <h1>Welcome To Adminzone</h1>
    </body>
</html>s
