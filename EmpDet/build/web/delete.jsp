<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String empid=request.getParameter("empid");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/empinfo","root","");
    PreparedStatement ps=con.prepareStatement("delete from empdet where empid=?");
    ps.setString(1,empid);
    if(ps.executeUpdate()>0)
    {
     out.print("<script>alert('Record deleted');window.location.href='showall.jsp';</script>");   
    }
    else
    {
     out.print("<script>alert('Record is not deleted');window.location.href='showall.jsp';</script>");      
    }
%> 