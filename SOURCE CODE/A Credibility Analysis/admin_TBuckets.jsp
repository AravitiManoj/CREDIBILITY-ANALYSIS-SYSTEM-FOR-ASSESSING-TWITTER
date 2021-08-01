<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.style33 {font-size: 26px}
-->
</style>
<head>
<title>All Tweets as Buckets based on Tweet Topic name</title>
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
.style16 {font-size: 25px;
	font-weight: bold;
}
.style21 {color: #0066CC; font-size: 18px; font-weight: bold; }
.style22 {font-size: 14px}
.style24 {font-size: 16px}
.style28 {font-size: 19px}
.style32 {color: #CCCC00}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="text">
        <h1><a href="#" class="style1 style33">A Credibility Analysis System for Assessing Information on Twitter</a></h1>
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
        <h2 class="style16">All Tweets as Topics and make comment </h2>
        <div class="clr"></div>
        <div class="post_content">
          <h2 align="center">&nbsp;</h2>
          <h2 align="center">
            <table width="246"  align="center">
              <tr>
                <td width="58" height="10" align="left" valign="bottom"><div align="center" class="style21 style28 style32">ID</div></td>
                <td width="176" align="left" valign="bottom"><div align="center" class="style21 style28 style32">Tweet Name </div></td>
              </tr>
              <%

      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9,s10,s11,s12,s13="";
	int i=0,j=0;
	
    try 
	{
        
				   String query="select * from ttopic"; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				   while ( rs.next() )
				   {
								i=rs.getInt(1);
								s1=rs.getString(2);
								
								
							
%>
              <tr>
                <td height="33"><div align="center" class="style22"><%=i%></div></td>
			    <td align="center" valign="middle"><div align="center" class="style22"><a href="admin_TBucketsDetails.jsp?tname=<%=s1%>"><%=s1%></a></div></td>
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
          </h2>
          <p align="center">&nbsp;</p>
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
