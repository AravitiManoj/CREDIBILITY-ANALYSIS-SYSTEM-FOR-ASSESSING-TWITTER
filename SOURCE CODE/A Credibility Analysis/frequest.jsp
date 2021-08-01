<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0;

      	try 
	{
      		
		String uname=(String)application.getAttribute("uname");
      	String us=request.getParameter("uid");
      	
      	SimpleDateFormat sdfDate = new SimpleDateFormat(
				"dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat(
				"HH:mm:ss");

		Date now = new Date();

		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;

      	
		String query="select * from frequest where rby='"+uname+"' and rto='"+us+"' "; 
        Statement st=connection.createStatement();
        ResultSet rs=st.executeQuery(query);
	 if( rs.next()==true )
	   {
		 out.println("User Request Already Sent ......");
		  %><p><a href="FriendSearch.jsp">Back</a></p>

		 
		  <%
		 
	   }
	 else
	 {
      		
      		String query1="insert into frequest (rby,rto,status,dt) values('"+uname+"','"+us+"','Waiting','"+dt+"')"; 
            Statement st1=connection.createStatement();
           st1.executeUpdate(query1);
      		
           out.println("User Request Sent Successfully......");
			  %><p><a href="FriendSearch.jsp">Back</a></p>

			 
			  <%
			
          
	 }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
        %>
</body>
</html>