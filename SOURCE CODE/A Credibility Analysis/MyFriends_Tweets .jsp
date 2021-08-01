<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.style33 {color: #00FF00}
.style34 {font-size: 26px}
.style35 {color: #FFFFFF}
-->
</style>
<head>
<title>User's all Tweets with Ranks </title>
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
.style22 {font-size: 14px}
.style24 {font-size: 16px}
.style32 {color: #CCCC00}
.style36 {font-size: 18px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="text">
        <h1><a href="#" class="style34">A Credibility Analysis System for Assessing Information on Twitter</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><strong><a href="index.html"><strong>Home</strong></a></strong></li>
          <li class="active"><a href="UserLogin.jsp"><strong>User</strong></a></li>
          <li><a href="TSLogin.jsp"><strong>Tweet Server </strong></a></li>
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
        <h2 class="style16"><span class="style35">All My Friends </span><span class="style35"> Tweets with Ranks </span></h2>
        <div class="clr"></div>
        <div class="post_content">
          <h2 align="center">
            <table width="641" border="0" align="center">
              <tr>
                <td width="27" align="left" valign="bottom"><div align="center" class="style21 style32 style36">Id</div></td>
                <td width="122" height="31" align="left" valign="bottom"><div align="center" class="style21 style32 style36">
                  <div align="center">Tweet Image </div>
                </div></td>
                <td width="146" align="left" valign="bottom"><div align="center" class="style21 style32 style36">Tweet Name </div></td>
                <td width="46" align="left" valign="bottom"><div align="center" class="style21 style32 style36">Rank</div></td>
			    <td width="157" align="left" valign="bottom"><div align="center" class="style21 style32 style36">Created By</div></td>
			    <td width="117" align="left" valign="bottom"><div align="center" class="style21 style32 style36">Make Tweet</div></td>
              </tr>
              <%

      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9,s10,s11,s12,s13="";
	int i=0,j=0;
	String user=(String)application.getAttribute("uname");
    try 
	{
	
	String status="Accepted";
	
	           String query1="select * from frequest where rby='"+user+"' and status='"+status+"' "; 
				   Statement st1=connection.createStatement();
				   ResultSet rs1=st1.executeQuery(query1);
				   
				   while (rs1.next()==true)     
				   {
	                  
					  s3=rs1.getString(3);
	
				   String query="select * from ttopic where user='"+s3+"' "; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				   while ( rs.next() )
				   {
								i=rs.getInt(1);
								s1=rs.getString(2);
								//s2=rs.getString(3);
								//s3=rs.getString(6);
								s4=rs.getString(8);
													
							
%>
							  <tr>
								<td><div align="center" class="style22 style35"><%=i%></div></td>
								<td height="128"><div align="center" class="style22 style35">
									
								  <div align="center">
								    <input  name="image" type="image" src="TSimages.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit" />
								    </input>
							      </div>
								</div></td>
								<td align="center" valign="middle"><div align="center" class="style22 style35"><%=s1%></div></td>
								<td align="center" valign="middle"><div align="center" class="style22 style35"><%=s4%></div></td>
								<td align="center" valign="middle"><div align="center" class="style22 style35"><%=s3%></div></td>
								<td align="center" valign="middle"><div align="center" class="style22 style35"><a href="ReTweet.jsp?imgid=<%=i%>">Yes</a></div></td>
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
          </h2>
        </div>
      </div>
      <a href="UserMain.jsp" class="style24">Back</a></div>
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
