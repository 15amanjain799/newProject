
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>
<%
 String cuid=request.getParameter("cuid");
 String cuname=request.getParameter("cuname");
 String cuaddress=request.getParameter("cuaddress");
 int cucon=Integer.parseInt(request.getParameter("cucon"));
 String cuemail=request.getParameter("cuemail");
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/custoinfo","root","");
 PreparedStatement ps=con.prepareStatement("insert into custo values(?,?,?,?,?)");
 ps.setString(1,cuid);
 ps.setString(2,cuname);
 ps.setString(3,cuaddress);
 ps.setInt(4,cucon);
 ps.setString(5,cuemail);
 ps.executeUpdate();
 out.print("<h1>Registration is Done..</h1>");     
%>