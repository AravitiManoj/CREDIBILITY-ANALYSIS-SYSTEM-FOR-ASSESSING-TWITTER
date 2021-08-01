<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.security.MessageDigest,java.security.NoSuchAlgorithmException"%>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.style7 {color: #FF6600}
.style38 {font-size: 18px}
.style39 {font-size: 26px}
.style40 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
<head>
<title>All Comments on Tweets Based on Tweet Title Hash.</title>
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
.style16 {font-size: 25px;
	font-weight: bold;
}
.style24 {font-size: 16px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="text">
        <h1><a href="#" class="style39">A Credibility Analysis System for Assessing Information on Twitter</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><strong><a href="index.html"><strong>Home</strong></a></strong></li>
          <li><a href="UserLogin.jsp"><strong>User</strong></a></li>
          <li class="active"><a href="TSLogin.jsp"><strong>Tweet Server </strong></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="307" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="307" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="307" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="article">
        <h2 class="style16">All Comments on Tweets Based on Tweet Title Hash.</h2>
        <div class="clr"></div>
        <div class="post_content">
          <h2 align="center">Note ::  <span class="style40">Select Topic and Corresponding Hash Sing Correctly </span></h2>
		  <form action="admin_TComHashDetails.jsp" method="post">
          <table width="506" border="0"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; display:inline; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
            <%
			try{	
			    String tname="",hash="";
				
				ArrayList a1=new ArrayList();
				ArrayList a2=new ArrayList();
				String str = " select * from ttopic ";
				Statement st = connection.createStatement();
				ResultSet rs = st.executeQuery(str);
				while(rs.next())
				{
					tname = rs.getString(2);
					//Hash Code Based on Tweet Title.
							MessageDigest md=MessageDigest.getInstance("SHA1");
							md.reset();
							byte[] buffer=tname.getBytes("UTF-8");
							md.update(buffer);
							byte[] digest=md.digest();
							
							String hexStr=" ";
							for(int i=0;i<digest.length;i++)
							{
								hexStr+=Integer.toString((digest[i]&0xff)+0x100,16).substring(1);
							}
								 hash=hexStr;
				

				
							String str1 = "Select * from tcomment where hash='"+hash+"' ";
							Statement st1 = connection.createStatement();
							ResultSet rs1 = st1.executeQuery(str1);
							if(rs1.next())
							{
								a1.add(tname);
								a2.add(hash);
							}
				}
				%>
            <tr>
              <td  width="294" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style7 style38" style="margin-left:20px;"><strong> Select The Topic </strong></div></td>
              <td  width="211" valign="middle" height="45" style="color:#000000;"><div align="left" style="margin-left:20px;">
                  <select id="s1" name="title">
                    <option>--Select--</option>
                    <% for(int i=0;i<a1.size();i++)
        	  {
        	  %>
                    <option><%= a1.get(i)%></option>
                    <%}%>
                  </select>
              </div></td>
              <td width="1"></td>
              <div > </div>
			   <td height="45" valign="middle" style="color: #2c83b0;">&nbsp;</td>
			   <td width="1"></td>
              <div > </div>
            </tr>
            <tr>
              <td height="45" colspan="2" id="learn_more" align="center"  style="color:#FFFFFF;"><p>&nbsp;
  </p>
                <p>
  <input name="submit" type="submit" style="width:100px; height:25px; background-color:#000000; color:#FFFFFF;" value="View"/>
  &nbsp;&nbsp;</p></td>
            </tr>
          </table>
		  </form>
		   <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          <h2 align="center">&nbsp;</h2>
          <p align="center">&nbsp;</p>
        </div>
      </div>
      <a href="TSMain.jsp" class="style24">Back</a></div>
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
