<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Profile</title>
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
.style4 {
	font-size: 26px;
	font-weight: bold;
}
.style12 {
	color: #FF00FF;
	font-size: 14px;
}
.style14 {font-family: Arial, Helvetica, sans-serif}
.style19 {font-size: 16px}
.style20 {font-size: 26px}
.style21 {color: #00CC00}
.style23 {font-size: 14px; color: #FFFFFF; }
.style24 {color: #FF9900}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="text">
        <h1><a href="#" class="style20">TopicSketch: Real-time Bursty Topic Detection from Twitter</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><strong>Home</strong></a></li>
          <li class="active"><strong><a href="UserLogin.jsp"><strong>User</strong></a></strong></li>
          <li><a href="TSLogin.jsp">Tweet Server </a></li>
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
          <h2 class="style2">User <span class="style21"><%=(String)application.getAttribute("uname")%></span>'s Profile</h2>
          <p class="infopost">&nbsp;</p>
          <div class="article">
            <p>&nbsp;</p>
            <table width="547" border="2" align="center"  cellpadding="0" cellspacing="0"  >
              <%@ include file="connect.jsp" %>
              <%@ page import="org.bouncycastle.util.encoders.Base64"%>
              <%
						
						String user=(String )application.getAttribute("uname");
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where name='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								//s6=rs.getString(10);
								
								//if(s6.equals("waiting")){
							
									
								//	s1 = new String(Base64.encode(s1.getBytes()));
								//	s2 = new String(Base64.encode(s2.getBytes()));
								//	s3 = new String(Base64.encode(s3.getBytes()));
									//s4 = new String(Base64.encode(s4.getBytes()));
								//	s5 = new String(Base64.encode(s5.getBytes()));
									
								
							//}
								
								
								
								
					%>
              <tr>
                <td width="226" rowspan="6" ><div style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
                    <input  name="image" type="image" src="uProfilePic.jsp?id=<%=i%>" style="width:200px; height:200px;" />
                </a></div></td>
              </tr>
              <tr>
                <td  width="129" valign="middle" height="62" style="color: #2c83b0;"><div align="left" class="style4 style14 style19 style24" style="margin-left:20px;">E-Mail</div></td>
                <td  width="182" valign="middle" height="62"><div align="left" class="style23" style="margin-left:20px;">
                    <%out.println(s2);%>
                </div></td>
              </tr>
              <tr>
                <td  width="129" valign="middle" height="52" style="color: #2c83b0;"><div align="left" class="style4 style14 style19 style24" style="margin-left:20px;">Mobile</div></td>
                <td  width="182" valign="middle" height="52"><div align="left" class="style23" style="margin-left:20px;">
                    <%out.println(s3);%>
                </div></td>
              </tr>
              <tr>
                <td  width="129" align="left" valign="middle" height="52" style="color: #2c83b0;"><div align="left" class="style4 style14 style19 style24" style="margin-left:20px;">Address</div></td>
                <td  width="182" align="left" valign="middle" height="52"><div align="left" class="style23" style="margin-left:20px;">
                    <%out.println(s4);%>
                </div></td>
              </tr>
              <tr>
                <td  width="129" align="left" valign="middle" height="56" style="color: #2c83b0;"><div align="left " class="style4 style14 style19 style24" style="margin-left:20px;">DOB</div></td>
                <td  width="182" align="left" valign="middle" height="56"><div align="left" class="style23" style="margin-left:20px;">
                    <%out.println(s5);%>
                </div></td>
              </tr>
              <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            </table>
            </p>
            <p>&nbsp;</p>
            <p align="right"><a href="UserMain.jsp" class="style12">Back</a> </p>
          </div>
          <div class="clr"></div>
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
            <li><a href="ViewMyProfile.jsp">Home </a></li>
            <li><a href="index.html">Log Out </a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">Concepts</h2>
          <div class="clr"></div>
          <p>Dimension Reduction</p>
          <p>Efficient Sketch Maintenance</p>
          <p>Efficiency Evaluation</p>
          <p> Effectiveness Evaluation</p>
          <p>Comparison with Twitter trending topic</p>
          <p>Comparison with Twevent</p>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image</span> Gallery</h2>
        <a href="#"><img src="images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
      <div class="col c2">
        <h2 align="justify">Solution Overview</h2>
        <p align="justify">          The three primary research challenges here are</p>
        <p align="justify"> (I) How to<br />
          identify the bursty topics, i.e., what are the keywords of the 
          topics,</p>
        <p align="justify"> (II) How to detect a bursty topic as early as possible, 
          and </p>
        <p align="justify">III) How to perform the task efficiently in large-scale<br />
          real-time setting as Twitter.</p>
      </div>
      <div class="col c3">
        <h2>Project Details </h2>
        <p>Problem Formulation</p>
        <p>Sketch-Based Topic Model</p>
        <p>RealTime Detection Techniques        </p>
        <p>Project Evaluation</p>
        <p>&nbsp;</p>
      </div>
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
