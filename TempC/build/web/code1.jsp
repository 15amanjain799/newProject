<%
    float temp=Integer.parseInt(request.getParameter("temp"));
    String op=request.getParameter("op");
    float tempr=0;
    if(op.equals("ctof"))
        tempr=(temp*9/5)+32;
    else if(op.equals("ftoc"))
        tempr= (temp-32)*5/9;
    out.print("<h1>Temprature is="+tempr+"</h1>");
    
%>