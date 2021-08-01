<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.style20 {font-size: 26px}
.style24 {color: #FFCC00}
-->
</style>
<head>
<title>All Friend Requests </title>
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
.style2 {
	font-size: 26px;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
}
.style7 {color: #0000FF;
	font-weight: bold;
}
.style17 {color: #6699FF; font-size: 14px; }
.style19 {font-size: 16; font-weight: bold; }
.style21 {
	color: #00FF00;
	font-weight: bold;
}
.style23 {color: #FFFFFF}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="text">
        <h1><a href="#" class="style1 style20 style20">A Credibility Analysis System for Assessing Information on Twitter</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><strong><a href="index.html"><strong>Home </strong></a></strong></li>
          <li class="active"><strong><a href="UserLogin.jsp"><strong>User</strong></a></strong></li>
          <li><a href="TSLogin.jsp"><strong>Tweet Server </strong></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="307" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="307" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="307" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style2"><span class="style7"><span class="style23">Friend Requests To</span> <span class="style23">::</span><span class="style21"> <%=application.getAttribute("uname") %></span></span></h2>
          <p class="infopost">&nbsp;</p>
          <table width="624" height="258" border="2"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; margin:10px 0px 0px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
            <tr>
              <td  width="160" height="38" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style19 style24">Profile Photo </div></td>
              <td  width="114" height="38" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style19 style24">Username</div></td>
              <td  width="96" height="38" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style19 style24">Address</div></td>
              <td  width="74" height="38" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style19 style24">Status</div></td>
              <td  width="90" height="38" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style19 style24">Date &amp; Time </div></td>
            </tr>
            <%
					  	String uname = (String)application.getAttribute("uname");
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,dt;
						int i=0;
						try 
						{
						   	String query="select * from user ";//where name!='"+uname+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								
								
								String status="";
								String query1="select * from frequest where (rby='"+uname+"' && rto='"+s1+"') or (rby='"+s1+"' && rto='"+uname+"')"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
								if(rs1.next())
								{
									int j = rs1.getInt(1);
									status = rs1.getString(4);
									dt = rs1.getString(5);
						
					%>
            <tr>
              <td  width="160" height="147" align="center" valign="middle" style="color:#000000;">&nbsp;&nbsp;
                <div align="right">
                  <p align="center">
                    <input  name="image" type="image" src="images.jsp?imgid=<%=i%>" width="150" height="150" alt="Submit" />
                  </p>
              </div></td>
              <td  width="114" height="147" align="center" valign="middle"><span class="style23">&nbsp;&nbsp;
                </span>
                <div align="center" class="style23">
                  <%out.println(s1);%>
              </div>              </td>
              <td height="147" align="center"  valign="middle"><span class="style23">&nbsp;&nbsp;
                </span>
                <p class="style23">
                  <%out.println(s4);%>
                </p>              </td>
              
              <%
						if(status.equalsIgnoreCase("Waiting"))
						{
						
						%>
              <td  width="74" valign="middle" height="147" style="color:#000000;"align="center"><a href="updatefrequest.jsp?rid=<%=j%>" class="style23">waiting               
              </a> </td>
              <%
						}
						else if(status.equalsIgnoreCase("Accepted"))
						{
						%>
              <td  width="90" valign="middle" height="147" style="color:#000000;"align="center"><span class="style23">
                <%out.println(status);%>
              </span></td>
              <%
						}
						%>
			 <td  width="72" height="147" align="center" valign="middle"><span class="style23">&nbsp;&nbsp;
                </span>
			   <div align="center" class="style23">
                  <%out.println(dt);%>
              </div>              </td>
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
            <tr>
              <td  valign="baseline" height="20">&nbsp;</td>
              <td  valign="baseline" height="20">&nbsp;</td>
              <td  valign="baseline" height="20">&nbsp;</td>
              <td  valign="baseline" height="20">&nbsp;</td>
              <td  valign="baseline" height="20">&nbsp;</td>
            </tr>
          </table>
          <p>&nbsp;</p>
          <a href="UserMain.jsp" class="style17">Back</a></div>
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
            <li><a href="user_AllFRequests.jsp">Home </a></li>
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
