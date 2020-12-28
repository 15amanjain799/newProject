<%
 String userid=request.getParameter("userid");
 String password=request.getParameter("password");
 String validate="";
 if(userid.equals("admin")&& password.equals("admin@123"))
 {
     validate="valid User";
 }
 else
 {
     validate="invalid user";
 }
%>
<h1><%=validate%></h1>