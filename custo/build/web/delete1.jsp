<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String cuid=request.getParameter("cuid");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/custoinfo","root","");
    PreparedStatement ps=con.prepareStatement("delete from custo where cuid=?");
    ps.setString(1,cuid);
    if(ps.executeUpdate()>0)
    {
        out.print("<script>alert('Record deleted');window.location.href='showall1.jsp';</script>");
    }
    else
    {
      out.print("<script>alert('Record is not deleted');window.location.href='showall1.jsp';</script>");  
    }
%>