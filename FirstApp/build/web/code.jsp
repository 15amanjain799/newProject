<%
//Scriptlet,inside scriptlet you can use java code
int n1=Integer.parseInt(request.getParameter("n1"));
int n2=Integer.parseInt(request.getParameter("n2"));
String op=request.getParameter("op");
int res=0;
if(op.equals("add"))
    res=n1+n2;
else if(op.equals("sub"))
    res=n1-n2;
else if(op.equals("mult"))
    res =n1*n2;
else if(op.equals("div"))
    res=n1/n2;
out.print("<h1>Result="+res+"</h1>");

%>