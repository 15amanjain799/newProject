<%
  int n=Integer.parseInt(request.getParameter("n"));
  if(n>=21)
  {
     
      out.print("<h1><span style=color:green>You are eligible for marriage</span></h1>");
    
  }
  else
  {
      out.print("<h1><span style=color:red>Sorry</span></h1>");
  }
%>