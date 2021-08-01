<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.sql.*"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
a:link {
	color: #FF00FF;
}
.style28 {
	font-size: 14px;
	font-family: Arial, Helvetica, sans-serif;
	color: #FFFFFF;
}
.style29 {color: #66CCFF}
.style31 {
	font-size: 28px;
	color: #FFFFFF;
}
.style32 {font-size: 26px}
-->
</style>
<head>
<title>Tweet Details </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style2 {
	font-size: 26px;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
}
.style11 {color: #FFFFFF; font-weight: bold; font-size: 24px; }
.style15 {font-size: 18px; font-weight: bold;}
.style22 {font-weight: bold}
.style27 {color: #FFFFFF}
.style30 {color: #6699FF}
.style33 {font-size: 14px; font-weight: bold; color: #FFFF00; }
.style34 {font-weight: bold; color: #FFFFFF; }
.style35 {font-size: 14px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="text">
        <h1 class="style31 style32">A Credibility Analysis System for Assessing Information on Twitter</h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home</span></a></li>
          <li class="active"><a href="UserLogin.jsp"><span>User</span></a></li>
          <li><a href="TSLogin.jsp"><span>Tweet Server </span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="307" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="307" alt="" /> </a> <img src="images/slide3.jpg" width="935" height="307" alt="" />  </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style2"><span class="style11"> Tweet Details </span></h2>
          <p class="infopost">&nbsp;</p>
		  
		  
		 <%
		 
		 int i=Integer.parseInt(request.getParameter("imgid"));
		 String tname="",dt="",desc="",tuser="",comments="",user1="";
		 int rank=0;
		 try
				{
					String query="select * from ttopic where id='"+i+"'";		
					Statement st=connection.createStatement();
					ResultSet rs=st.executeQuery(query);
					if(rs.next()==true)
					{
						tuser=rs.getString(7);
						desc=rs.getString(3);
						rank=rs.getInt(8);
						tname=rs.getString(2);
						dt=rs.getString(6);
					
					
		 %>
        
           
            <table width="600" border="2" align="center" cellpadding="1" cellspacing="1" >
              <tr >
                <td width="158" rowspan="5" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
                    <div align="center"><a class="#" id="img1" href="#" >
                      <input  name="image" type="image" style="width:120px; height:120px;" src="TSimages.jsp?imgid=<%=i%>" align="middle" />
                    </a> </div>
                </div></td>
                <td width="227" height="36" align="left" ><div align="center" class="style33">Tweet Name </div></td>
                <td><div align="center" class="style28"><%= tname%></div></td>
              </tr>
              <tr>
                <td width="227" height="30" align="left" ><div align="center" class="style33">Created By  </div></td>
                <td><div align="center" class="style28"><%= tuser%></div></td>
              </tr>
              <tr>
                <td width="227" height="33" align="left" ><div align="center" class="style33">Date </div></td>
                <td><div align="center" class="style27"><%= dt%></div></td>
              </tr>
			 <tr>
			  <td height="37" align="left"><div align="center" class="style33">Description </div></td>
			  <td><div align="center" class="style27"><%= desc%></div></td>
			 </tr>
  
  <tr>
    <td width="227" height="29" align="left"><div align="center" class="style33">Rank</div></td>
    <td><div align="center" class="style27"><%= rank%></div></td>
  </tr>
  <tr> </tr>
  
          
		<%
		}
		%>
		  <tr>
    <td  width="158" height="50" align="center" valign="middle" style="color: #2c83b0;"><div align="left " class="style8 style15 style11 style29" style="margin-left:20px;">
      <div align="center" class="style30">Tweet By</div>
    </div></td>
    <td  width="227" height="50" align="center" valign="middle" style="color: #2c83b0;" columnspan="2"><div align="left " class="style8 style15 style11 style29" style="margin-left:20px;">
      <div align="center" class="style30">Tweet  Details</div>
    </div></td>
    <td  width="195" height="50" align="center" valign="middle" style="color: #2c83b0;" columnspan="2"><div align="left " class="style8 style15 style11 style29" style="margin-left:20px;">
      <div align="center" class="style30">Date</div>
    </div></td>
  </tr>
   <%
   	String user=(String)application.getAttribute("uname");
	
           String str1="select * from tcomment where tname='"+tname+"'"; 
           Statement st1=connection.createStatement();
           ResultSet rs1=st1.executeQuery(str1);
	while ( rs1.next() )
	   {
	    				//tuser=rs1.getString(7);
						user1=rs1.getString(5);
						comments=rs1.getString(4);
						//tname=rs.getString(2);
						dt=rs1.getString(6);
		 
		 		Statement stmt2=connection.createStatement();
				String strQuery2 = "select rby,rto from frequest where ((rby ='"+user+"' and rto='"+user1+"') ||(rby ='"+user1+"' and rto='"+user+"'))and status ='Accepted' ";
				ResultSet rs2 = stmt2.executeQuery(strQuery2);
				if(rs2.next()==true)
				{
				
		 %>
           <tr>

			  <td height="43"><div align="center" class="style34"><span class="style9 style10"><%=user1%></span></div></td>
				<td><div align="center" class="style34"><span class="style9 style10"><%=comments%></span></div></td>
				<td><div align="center" class="style34"><span class="style9 style10"><%=dt%></span></div></td>
 		 </tr>
           
					<%
						}
  
  
       	
       	
				}		
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
            <p>&nbsp;</p>
            <form id="form1" name="form1" method="post" action="EnterComment.jsp?tname=<%=tname%>">
              <label></label>
              <p align="center">
                <input align="right" type="submit" name="Submit22" value="Re-Tweet" />
              </p>
          </form>
            <a href="MyFriends_Tweets.jsp" class="style35">Back</a></div>
      </div>
      <div align="left"><div align="right"><div align="center"><div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 align="left" class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <div align="left">
            <ul class="sb_menu">
              <li>                <a href="#">Home</a> </li>
              <li><a href="index.html">Log Out </a></li>
            </ul>
          </div>
          <ul class="sb_menu">
          </ul>
        </div>
        <div class="gadget">
          <h2 align="left" class="star">&nbsp;</h2>
          </div>
      </div>
      <div class="clr"></div>
    </div></div></div></div>
  </div>
  <div align="left"><div align="right"><div align="center"><div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div></div></div></div>
<div align="left"><div align="right"><div align="center"><div align=center></div>
</div></div></div></body>
</html>
