<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="connect.jsp" %>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.style16 {
	color: #66CCFF;
	font-weight: bold;
}
.style17 {font-size: 14px}
-->
</style>
<head>
<title>Search Friends</title>
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
.style1 {font-size: 30px}
.style18 {font-size: 14}
.style19 {padding:0; margin:0; width:100%; line-height:0; clear: both;}
.style20 {font-family: Arial, Helvetica, sans-serif; font-weight: bold;}
.style23 {font-size: 14px; font-weight: bold; }
.style25 {
	color: #FFFF00;
	font-weight: bold;
	font-size: 16px;
}
.style28 {
	color: #6699FF;
	font-weight: bold;
}
.style29 {
	color: #FFFFFF;
	font-size: 16px;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="text">
        <h1><a href="#" class="style1">TA Credibility Analysis System for Assessing Information on Twitter</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="style17"><span class="style23"><a href="index.html">Home</a></span></li>
          <li class="active style18"><a href="UserLogin.jsp"><strong>User</strong></a></li>
          <li class="style18"><a href="TSLogin.jsp"><strong>Tweet Server </strong></a></li>
        </ul>
      </div>
      <div class="clr style18"></div>
      <div class="slider style18">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="307" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="307" alt="" /> </a> <img src="images/slide3.jpg" width="935" height="307" alt="" />  </div>
        <div class="style19"></div>
      </div>
      <div class="clr style18"></div>
    </div>
  </div>
  <div class="content style18">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style20">Search Friends </h2>
          <p class="infopost">&nbsp;</p>
          <form action="FriendSearch.jsp" method="post" name="form1" id="form1">
            <p>&nbsp;</p>
            <table width="359" border="0">
              <tr>
                <td class="style25">Enter the User Name </td>
                <td><label>
                  <input type="text" name="t1" />
                </label></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><label>
                  <input type="submit" name="Submit" value="Search" />
                </label></td>
              </tr>
            </table>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p><a href="UserMain.jsp" class="style16">Back</a></p>
          </form>
        </div>
        <div class="article">
          <h2><strong>Searched Friends </strong></h2>
          <p class="infopost">&nbsp;</p>
          <div class="content"><span class="style10">
            <%

      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0;

      	try 
	{
        %>
            </span>
              <table width="308" border="2" align="center"  cellpadding="0" cellspacing="0">
                <tr>
                  <td width="162" height="30"><div align="center" class="style25">Profile Photo</div></td>
                  <td width="142"><div align="center" class="style25">User Name </div></td>
                </tr>
                <%	
      	
      	String uname=(String)application.getAttribute("uname");
      	String us=request.getParameter("t1");
      	
      	SimpleDateFormat sdfDate = new SimpleDateFormat(
				"dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat(
				"HH:mm:ss");

		Date now = new Date();

		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;

      	
      	if(us.equalsIgnoreCase(null))
      	{
      		
      	}
      	else
      	{
      		
      		String query1="insert into fsearch values('"+uname+"','"+us+"','"+dt+"')"; 
            Statement st1=connection.createStatement();
           st1.executeUpdate(query1);
      		
      	
           String query="select * from user where name!='"+uname+"' and name LIKE '%"+us+"%' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		//j=rs.getInt(9);
	
%>
                <tr>
                  <td height="112"><div align="center">
                      <input  name="image" type="image" src="images.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit" />
                  </div></td>
                  <td><div align="center" class="style29"><%=s2 %></div></td>
                </tr>
                <tr>
                  <td><div align="center"></div></td>
                  <td><div align="center"><a href="FSearchDetails.jsp?uid=<%=i%>"> View Details &nbsp;</a></div></td>
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
              <p align="justify">&nbsp;</p>
          </div>
          <a href="UserMain.jsp" class="style28">Back</a></div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="style19"></div>
        <div class="gadget">
          <h2 class="star">Sidebar Menu</h2>
          <div class="style19"></div>
          <ul class="sb_menu">
            <li><a href="FriendSearch.jsp">Home</a> </li>
            <li><a href="index.html">Log Out </a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="style19"></div>
    </div>
  </div>
  <div class="fbg style18">
    <div class="fbg_resize">
      <div class="style19"></div>
    </div>
  </div>
  <div class="footer style18">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center class="style18"></div>
</body>
</html>
