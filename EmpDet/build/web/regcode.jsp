<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>
<%
 String empid=request.getParameter("empid");
 String empname=request.getParameter("empname");
 String department=request.getParameter("department");
 String designation=request.getParameter("designation");
 int salary=Integer.parseInt(request.getParameter("salary"));
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/empinfo","root","");
 PreparedStatement ps=con.prepareStatement("insert into empdet values(?,?,?,?,?)");
 ps.setString(1,empid);
 ps.setString(2,empname);
 ps.setString(3,department);
 ps.setString(4,designation);
 ps.setInt(5,salary);
 ps.executeUpdate();
 out.print("<h1>Registration is Done..<h1>");
%>