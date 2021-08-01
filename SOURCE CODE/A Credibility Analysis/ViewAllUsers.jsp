<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.style25 {color: #CCCC33}
.style26 {font-size: 26px}
-->
</style>
<head>
<title>View All Users</title>
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
.style21 {color: #0066CC; font-size: 18px; font-weight: bold; }
.style22 {font-size: 14px}
.style24 {font-size: 16px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="text">
        <h1><a href="#" class="style26"></a>A Credibility Analysis System for Assessing Information on Twitter</h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><strong><a href="index.html">Home</a></strong></li>
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
        <h2 class="style16">All End Users </h2>
        <div class="clr"></div>
        <div class="post_content">
          <h2 align="center">
            <table width="842" border="1" align="center">
              <tr>
                <td width="143" height="32" align="left" valign="bottom"><div align="center" class="style21">User Image </div></td>
                <td width="155" align="left" valign="bottom"><div align="center" class="style21">User Name </div></td>
                <td width="126" align="left" valign="bottom"><div align="center" class="style21">Mobile</div></td>
                <td width="148" align="left" valign="bottom"><div align="center" class="style21">E-Mail</div></td>
                <td width="92" align="left" valign="bottom"><div align="center" class="style21">Address</div></td>
                <td width="115" align="left" valign="bottom"><div align="center" class="style21">Status</div></td>
              </tr>
              <%

      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9,s10,s11,s12,s13="";
	int i=0,j=0;

    try 
	{
        
				   String query="select * from user "; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				   while ( rs.next() )
				   {
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(5);
								s3=rs.getString(4);
								s4=rs.getString(6);
								
								s5=rs.getString(9);
		
		
		
%>
              <tr>
                <td><div align="center" class="style22">
                    <input  name="image" type="image" src="images1.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit" />
                    </input>
                </div></td>
                <td align="center" valign="middle"><div align="center" class="style22 style25"><%=s1%></div></td>
                <td align="center" valign="middle"><div align="center" class="style22"><%=s2%></div></td>
                <td align="center" valign="middle"><div align="center" class="style22"><%=s3%></div></td>
                <td align="center" valign="middle"><div align="center" class="style22"><%=s4%></div></td>
                <%
						if(s5.equalsIgnoreCase("waiting"))
						{
						
						%>
          				 <td align="center" valign="middle"><div align="center" class="style22"><a href="admin_Status.jsp?id=<%=i%>">waiting</a></div></td>
            
            <%
						}
						else
						{
						%>
             <td width="17" align="center" valign="middle"><div align="center" class="style22"><%=s5%></div></td>
			 
			 <%
			 }
			 %>
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
