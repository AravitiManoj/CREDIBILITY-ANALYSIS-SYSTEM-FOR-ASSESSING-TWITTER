<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<%@ include file="connect.jsp" %>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.style17 {color: #FF00FF}
a:link {
	color: #FF00FF;
}
.style21 {color: #FFCC00}
-->
</style>
<head>
<title>User Details</title>
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
.style18 {
	font-size: 16px;
	color: #F0F0F0;
}
.style20 {font-size: 26px}
.style22 {font-size: 18px}
.style23 {color: #FFFFFF}
.style24 {
	color: #66CCFF;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="text">
        <h1 class="style20">A Credibility Analysis System for Assessing Information on Twitter</h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><strong><a href="index.html">Home</a></strong></li>
          <li class="active"><a href="UserLogin.jsp"><strong>User</strong></a></li>
          <li><a href="TSLogin.jsp"><strong>Tweet Server </strong></a></li>
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
          <h2 class="style2"><span class="style11"> User Details </span></h2>
          <p class="infopost">&nbsp;</p>
          <form action="search.jsp" method="post" name="form1" id="form1">
            <p>
              <%

int us=Integer.parseInt(request.getParameter("uid"));
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0;

      	try 
	{
        
           String query="select * from user where id="+us+""; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	if ( rs.next()==true )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		//j=rs.getInt(9);
		//j=j+1;
		
		//String query1="update user set count="+j+" where id="+us+" "; 
       // Statement st1=connection.createStatement();
       //st1.executeUpdate(query1);
	   }
%>
            </p>
            <table width="342"  border="2" align="center"  cellpadding="0" cellspacing="0">
              <tr>
                <td align="center"><div align="center" class="style21"><span class="style22">User Image </span></div></td>
                <td><div align="center">
                  <input  name="image2" type="image" src="images.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit" />
                </div></td>
              </tr>
              <tr>
                <td height="40" align="center"><div align="center" class="style21"><span class="style22">User Name</span></div></td>
                <td><div align="center" class="style23"><%=s2%></div></td>
              </tr>
              <tr>
                <td height="40" align="center"><div align="center" class="style21"><span class="style22">E-Mail</span></div></td>
                <td><div align="center" class="style23"><%=s4%></div></td>
              </tr>
              <tr>
                <td height="40" align="center"><div align="center" class="style21"><span class="style22">Mobile</span></div></td>
                <td><div align="center" class="style23"><%=s5%></div></td>
              </tr>
              <tr>
                <td height="40" align="center"><div align="center" class="style21"><span class="style22">Address</span></div></td>
                <td><div align="center" class="style23"><%=s6%></div></td>
              </tr>
              <tr>
                <td height="40" align="center"><div align="center" class="style21"><span class="style22">DOB</span></div></td>
                <td><div align="center" class="style23"><%=s7%></div></td>
              </tr>
              <tr>
                <td height="40" align="center">&nbsp;</td>
                <td><div align="center"><span class="style17 style18"><a href="frequest.jsp?uid=<%=s2%>">Send Request</a></span></div></td>
              </tr>
            </table>
            <%

	 
	   
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
<p>&nbsp;</p>
            <p><a href="FriendSearch.jsp" class="style24">Back</a></p>
          </form>
        </div>
      </div>
      <div class="sidebar">
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
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="FriendSearch.jsp">Home</a> </li>
            <li><a href="index.html">Log Out </a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
