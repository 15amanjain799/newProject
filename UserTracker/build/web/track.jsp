<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String userid=request.getParameter("userid");
    String password=request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/testdb","root","");
    PreparedStatement ps=con.prepareStatement("select usertype from login where userid=? and password=?");
    ps.setString(1,userid);
    ps.setString(2,password);
    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
       // out.print("<h1>Valid User</h1>");
        String usertype=rs.getString("usertype");
        if(usertype.equals("user"))
        {
           // out.print("<h1>Welcome to Userzone</h1>");
            session.setAttribute("userid",userid);
            response.sendRedirect("userzone/userhome.jsp");
    
        }
        else if(usertype.equals("admin"))
        {
          // out.print("<h1>Welcome to Adminzone</h1>"); 
            session.setAttribute("adminid",userid);
            response.sendRedirect("adminzone/adminhome.jsp");
        }
    }
    else
    {
        out.print("<h1>Invalid User</h1>");
    }
%>