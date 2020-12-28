<%-- 
    Document   : index
    Created on : 15 Jul, 2019, 9:53:11 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="track.jsp" method="post">
            <h1>User Tracker</h1>
            <hr/>
            Enter User Id:
            <input type="text" name="userid"required/>
            <br/><br/>
            Enter User Password:
            <input type="password" name="password"required/>
            <br/><br/>
            <input type="submit" value="login"/>
        </form>
    </body>
</html>
