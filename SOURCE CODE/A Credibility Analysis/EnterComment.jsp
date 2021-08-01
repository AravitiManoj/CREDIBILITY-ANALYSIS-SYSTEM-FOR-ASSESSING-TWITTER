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
-->
</style>
<head>
<title>Commenting on Tweet</title>
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
	color: #FFFFFF;
}
.style12 {font-size: 12px}
.style13 {font-weight: bold}
.style15 {font-size: 14px}
.style16 {font-size: 26px}
.style18 {font-size: 14px; color: #FFFF00; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="text">
        <h1 class="style16">A Credibility Analysis System for Assessing Information on Twitter</h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="style13"><a href="index.html">Home</a></li>
          <li class="active"><strong><a href="UserLogin.jsp" class="style15">User</a></strong></li>
          <li><a href="TSLogin.jsp">Tweet Server </a></li>
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
          <h2><span class="style2">Re Tweeting  on Tweet </span></h2>
          <p>&nbsp;</p>
          <p><span class="infopost"></span></p>
		  
		
		 <%
		 String tname1=request.getParameter("tname");
		 application.setAttribute("tname",tname1);
		
		 %>
		 
					 <form id="form1" name="form1" method="post" action="EnterCommentSuccess.jsp">
						<label></label>
						<p align="center">
						  <label></label>
					   </p>
						
						<table width="491" border="0" align="center" cellpadding="2" cellspacing="2">
                          <tr>
                            <td width="227"><span class="style18">Enter Your Re Tweet Details </span>
                              <label></label></td>
                            <td width="250"><textarea name="textarea" cols="30" rows="10"></textarea></td>
                          </tr>
                       </table>
						<p align="center">&nbsp;</p>
						<p align="center">
						  <input align="right" type="submit" name="Submit22" value="Submit" />
						</p>
						<p align="center">									</p>
		  </form>
	
			
		  <a href="TSearchDetails.jsp" class="style15">Back</a></div>
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
            <li class="style12">
              <div align="left"><a href="#">Home</a> </div>
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
</div></div></div>
</body>
</html>
