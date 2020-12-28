<%
   String name= request.getParameter("name");
   String str=request.getParameter("dob");
   String dob=str.replace("/","0");
   int n=0;
   for(int i=0;i<dob.length();i++)
   {
     n=n+Integer.parseInt(dob.charAt(i)+"");
    
   }
   while(n>9)
   {
     n=n/10+n%10;
   }
   String future="";
   switch(n)
   {
       case 1:
           future="You can be a good software engineer";
           break;
       case 2:
           future="You are an Intelligent person";
           break;
       case 3:
           future="You are a deligent person";
           break;
       case 4:
           future="You are a great person";
           break;
       case 5:
           future="You are a good person";
           break;
       case 6:
           future="you can get marry soon";
           break;
       case 7:
           future="you can be a doctor";
           break;
       case 8:
           future="you can be Philospher";
           break;
       case 9:
           future="you can be a scientist";
            break;
       default:
           future="Are you came from another planet";
           break;
       }
   out.print("<h1>Your lucky number is="+n+"</h1>");
   out.print("<h1>Your future is="+future+"</h1>");
%>   