<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
   String empid=request.getParameter("empid");
   String empname=request.getParameter("empname");
   String department=request.getParameter("department");
   String designation=request.getParameter("designation");
   int salary=Integer.parseInt(request.getParameter("salary"));
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/empinfo","root","");
   PreparedStatement ps=con.prepareStatement("update empdet set empname=?,department=?,designation=?,salary=? where empid=?");
   ps.setString(1,empname);
   ps.setString(2,department);
   ps.setString(3,designation);
   ps.setInt(4,salary);
   ps.setString(5,empid);
   if(ps.executeUpdate()>0)
   {
       out.print("<script>alert ('record Updated');window.location.href='showall.jsp';</script>");
   }
   else
   {
     out.print("<script>alert('record is not Updated');window.location.href='showall.jsp';</script>");  
   }
%>