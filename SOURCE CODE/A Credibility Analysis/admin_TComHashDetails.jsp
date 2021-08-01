<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.style22 {font-size: 14px}
.style38 {color: #66FF00}
.style42 {font-size: 26px}
.style43 {color: #FFFFFF}
.style44 {font-size: 18px}
-->
</style>
<head>
<title>All Comments on Tweet</title>
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
.style21 {color: #0066CC; font-size: 18px; font-weight: bold; }
.style24 {font-size: 16px}
.style28 {font-size: 19px}
.style39 {color: #66FF33}
.style41 {color: #FFCC66}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="text">
        <h1><a href="#" class="style42">A Credibility Analysis System for Assessing Information on Twitter</a></h1>
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
        <h4 class="style16 style43 style44">Re Tweet Details By  Hashing Based Dimension Reduction Technique</h4>
        <div class="clr"></div>
        <div class="post_content">
          <div align="left"></div>
         
      
            <p>
              <%
				try
				{
				String str1 ="",title="",hash="",name="",rank="";
				
				title = request.getParameter("title");
				hash =request.getParameter("Hsign");
				
				String str = "Select tname from ttopic where hash='"+hash+"' ";
				Statement st = connection.createStatement();
				ResultSet rs = st.executeQuery(str);
				if(rs.next()==true)
				{
					title = rs.getString(1);
				
            	}
				
				%>
            </p>
          <p class="style22"><strong>Title  :<span class="style38">  <%=title%> </span></strong></p>
          <p class="style22">&nbsp;</p>
          <table width="491" border="1" align="center">
            <tr>
              <td width="73" height="27" align="left" valign="bottom"><div align="center" class="style21 style28 style41">S.No</div></td>
              <td width="198" align="left" valign="bottom"><div align="center" class="style21 style28 style41">
                <div align="center">Comments</div>
              </div></td>
              <td width="198" align="left" valign="bottom"><div align="center" class="style21 style28 style41">
                  <div align="center">Commented By </div>
              </div></td>
			  
			   <td width="198" align="left" valign="bottom"><div align="center" class="style21 style28 style41">
                  <div align="center">Commented Date</div>
              </div></td>
			  
            </tr>
            <%

      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9,s10,s11,s12,s13="";
	int i=1,j=0;
	//String tname=request.getParameter("tname");
   
				   String query1="select * from tcomment where tname='"+title+"'"; 
				   Statement st1=connection.createStatement();
				   ResultSet rs1=st1.executeQuery(query1);
				   while ( rs1.next() )
				   {
								
								s1=rs1.getString(4);
								s2=rs1.getString(5);
								s3=rs1.getString(6);
					
%>
            <tr>
              <td height="48"><div align="center" class="style22 style43"><%=i%></div></td>
              <td align="center" valign="middle"><div align="center" class="style22 style43">
                <div align="center"><%=s1%></div>
              </div></td>
              <td align="center" valign="middle"><div align="center" class="style22 style43">
                  <div align="center"><%=s2%></div>
              </div></td>
			  <td align="center" valign="middle"><div align="center" class="style22 style43">
                  <div align="center"><%=s3%></div>
              </div></td>
            </tr>
            <%
  		i+=1;

	 
	  	 }
           connection.close();
         }
         
         catch(Exception e)
         {
           out.println(e.getMessage());
         }
%>
          </table>
          <p align="center">&nbsp;</p>
          <p align="center">&nbsp;</p>
        </div>
      </div>
      <a href="admin_TComBasedOnTitleHash.jsp" class="style24">Back</a></div>
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
