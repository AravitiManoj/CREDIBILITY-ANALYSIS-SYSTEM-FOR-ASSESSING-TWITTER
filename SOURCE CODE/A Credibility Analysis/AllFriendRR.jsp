<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.style30 {font-size: 16px}
.style40 {font-size: 26px}
-->
</style>
<head>
<title>All Friend Requests and Responses.</title>
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
.style16 {font-size: 24px;
	font-weight: bold;
}
.style22 {font-size: 14px}
.style33 {font-size: 18px; color: #6666FF; }
.style34 {font-size: 18px; color: #00FF00; }
.style36 {font-size: 18px; color: #FF3300; }
.style38 {font-size: 18px; color: #666666; }
.style39 {color: #666666}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="text">
        <h1><a href="#" class="style40"></a>A Credibility Analysis System for Assessing Information on Twitter</h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><strong><a href="index.html" class="style22">Home</a></strong></li>
          <li><strong><a href="UserLogin.jsp" class="style22">User</a></strong></li>
          <li class="active style22"><a href="TSLogin.jsp"><strong>Tweet Server </strong></a></li>
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
        <h2 class="style16"><span class="style26">All Friend Requests and Responses. </span></h2>
        <div class="post_content">
          <h2 align="center">
            <table width="941" border="1" align="center">
  <tr>
  <td width="52" height="34" align="center" valign="middle"><div align="center" class="style33"><span class="style3 style39">Id </span></div></td>
  <td width="148" align="center" valign="middle"><div align="center" class="style36"><span class="style3">Request From </span></div></td>
    <td width="199" align="center" valign="middle"><div align="center" class="style36"><span class="style3">Requested User Name </span></div></td>
    <td width="148" align="center" valign="middle"><div align="center" class="style34"><span class="style3">Request To </span></div></td>
    <td width="155" align="center" valign="middle"><div align="center" class="style34"><span class="style3"> Request To Name </span></div></td>
    <td width="83" align="center" valign="middle"><div align="center" class="style38"><span class="style3">Status</span></div></td>
    <td width="110" align="center" valign="middle"><div align="center" class="style38"><span class="style3">Date & Time</span></div></td>
  </tr>
<%
 
      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0,k=0;

     try 
	{
           
					   String query="select * from  frequest"; 
					   Statement st=connection.createStatement();
					   ResultSet rs=st.executeQuery(query);
					   while( rs.next() )
					   {
						
								i=rs.getInt(1);
								s2=rs.getString(2);
								s3=rs.getString(3);
								s4=rs.getString(4);
								s5=rs.getString(5);
				
								String query1="select * from user where name='"+s2+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
							 	while( rs1.next() )
							 	{
									j=rs1.getInt(1);  
							
									String query2="select * from user where name='"+s3+"'"; 
									Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(query2);
									while( rs2.next() )
								 	{
										k=rs2.getInt(1);  
								
		
%>


  <tr>
  	<td height="111"><div align="center" class="style30"><%=i%></div></td>
    <td><div align="center" class="style30"><input  name="image" type="image" src="images.jsp?imgid=<%=j%>" width="100" height="100" alt="Submit"></div></td>
    <td><div align="center" class="style30"><%=s2 %></div></td>
     <td><div align="center" class="style30"><input  name="image" type="image" src="images.jsp?imgid=<%=k%>" width="100" height="100" alt="Submit"></div></td>
    <td><div align="center" class="style30"><%=s3 %></div></td>
    <td><div align="center" class="style30"><%= s4%></div></td>
    <td><div align="center" class="style30"><%= s5%></div></td>
  </tr>

<%
		  }
	  }
		
	   }
	 

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</table>
          </h2>
        </div>
      </div>
      <a href="TSMain.jsp" class="style22">Back</a></div>
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
