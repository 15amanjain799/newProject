<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String cuid=request.getParameter("cuid");
String cuname=request.getParameter("cuname");
String cuaddress=request.getParameter("cuaddress");
int cucon=Integer.parseInt(request.getParameter("cucon"));
String cuemail=request.getParameter("cuemail");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/custoinfo","root","");
PreparedStatement ps=con.prepareStatement("update custo set cuname=?,cuaddress=?,cucon=?,cuemail=? where cuid=?");
ps.setString(1,cuname);
ps.setString(2,cuaddress);
ps.setInt(3,cucon);
ps.setString(4,cuemail);
ps.setString(5,cuid);
if(ps.executeUpdate()>0)
{
    out.print("<script>alert('record update');window.location.href='showall1.jsp';</script>");
}
else
{
  out.print("<script>alert('record is not update');window.location.href='showall1.jsp';</script>");  
}
%>