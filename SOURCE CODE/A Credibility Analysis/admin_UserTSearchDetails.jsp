<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.sql.*"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.style17 {color: #FF00FF}
a:link {
	color: #FF00FF;
}
.style28 {
	font-size: 14px;
	font-family: Arial, Helvetica, sans-serif;
	color: #FFFFFF;
}
.style31 {color: #99CC00}
-->
</style>
<head>
<title>Users Tweet Search History </title>
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
.style22 {font-weight: bold}
.style24 {font-size: 14px; font-weight: bold; }
.style27 {color: #FFFFFF}
.style29 {color: #f69722}
.style30 {
	font-size: 28px;
	color: #FFFFFF;
}
.style32 {font-size: 14px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="text">
        <h1 class="style30">A Credibility Analysis System for Assessing Information on Twitter</h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><strong><a href="index.html" class="style32">Home</a></strong></li>
          <li><strong><a href="UserLogin.jsp">User</a></strong></li>
          <li class="active"><strong><a href="TSLogin.jsp">Tweet Server </a></strong></li>
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
          <h2 class="style2">User<span class="style31"> <%=request.getParameter("user1")%></span>'s Tweet Search History </h2>
          <p class="infopost">&nbsp;</p>
		  
		   <table width="498" height="101" border="0" cellpadding="2" cellspacing="2">
              <tr>
                <td width="66" height="39"><div align="center" class="style24"><span class="style17" style="color:#f69722">ID</span> </div></td>
                <td width="220"><div align="center" class="style24"><span class="style29">Keyword</span></div></td>
                <td width="192"><div align="center" class="style24"><span class="style17" style="color:#f69722">Date</span> </div></td>
              </tr>
		 <%
			
				String user1=request.getParameter("user1");

			String dt="",keyword="";
			int i=0,ii=1;
		 try
				{
						
						String query1="select * from tsearch where user='"+user1+"'";		
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						while(rs1.next())
						{
							keyword=rs1.getString(3);
							dt=rs1.getString(4);
						
						%>
			 
			 <tr>
			   <td height="56"><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
			     <div align="center"><span class="style28"><%= ii%></span></div>
			           </div></td>
			   <td><div align="center" class="style27"><span class="style28"><%= keyword%></span></div></td>
			   <td><div align="center" class="style27"><%= dt%></div></td>
			   
			 
		<%
			
			ii+=1;
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
            <p><a href="admin_UserTSearch.jsp">Back</a></p>
        </div>
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
          <ul class="sb_menu">
            <li>
              <div align="left"><a href="admin_UserTSearchDetails.jsp?user1=<%=user1%>">Home</a> </div>
            </li>
            <li>
              <div align="left"><a href="index.html">Log Out </a></div>
            </li>
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
