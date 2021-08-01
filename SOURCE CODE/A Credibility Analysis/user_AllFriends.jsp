<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
<!--
.style21 {
	color: #FF00FF;
	font-size: 14px;
}
.style22 {
	color: #006600;
	font-weight: bold;
	font-size: 24px;
}
.style28 {font-size: 16px}
.style29 {font-size: 26px}
-->
</style>
<head>
<title>User Friends.</title>
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
.style20 {font-size: 18px}
.style27 {font-size: 18px; color: #0066CC; font-weight: bold; }
.style31 {color: #FF9900}
.style33 {font-size: 14px; color: #FFFFFF; }
.style35 {font-size: 24px; font-weight: bold; color: #00FF00; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="text">
        <h1><a href="#" class="style29">A Credibility Analysis System for Assessing Information on Twitter</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><strong>Home</strong></a></li>
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
        <h2 class="style16">User <span class="style20 style22"><span class="style35"><%=((String)application.getAttribute("uname"))%></span></span>  Friends. </h2>
        <div class="clr"></div>
        <div class="post_content">
          <h2 align="center">
            <table width="962" border="1" align="center">
              <tr>
                <td width="160" height="32" valign="bottom"><div align="center" class="style27 style31 style28">User Image </div></td>
                <td width="147" valign="bottom"><div align="center" class="style27 style31 style28">User Name </div></td>
                <td width="157" valign="bottom"><div align="center" class="style27 style31 style28">Mobile</div></td>
                <td width="144" valign="bottom"><div align="center" class="style27 style31 style28">E-Mail</div></td>
                <td width="157" valign="bottom"><div align="center" class="style27 style31 style28">Address</div></td>
                <td width="157" valign="bottom"><div align="center" class="style27 style31 style28">DOB</div></td>
              </tr>
              <%

					
						String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9,s10,s11,s12,s13="",uuu="";
						int i=0,j=0;

					  	String uname = (String)application.getAttribute("uname");
						
						try 
						{
						   		String query="select * from user where name!='"+uname+"'"; 
								Statement st=connection.createStatement();
								ResultSet rs=st.executeQuery(query);
								while ( rs.next() )
								{
									
									s1=rs.getString(2);
											
								
									String status="";
									String query1="select * from frequest where (rby='"+uname+"' && rto='"+s1+"') || (rby='"+s1+"' && rto='"+uname+"') and  status='Accepted' "; 
									Statement st1=connection.createStatement();
									ResultSet rs1=st1.executeQuery(query1);
									if(rs1.next())
									{
												if(rs1.getString(2).equalsIgnoreCase(uname))
												{
													uuu = rs1.getString(3);
													
																String query2="select * from user where name='"+uuu+"'"; 
																Statement st2=connection.createStatement();
																ResultSet rs2=st2.executeQuery(query2);
																if( rs2.next() )
																{
																			i=rs2.getInt(1);
																			//s1=rs2.getString(2);
																			s2=rs2.getString(4);
																			s3=rs2.getString(5);
																			s4=rs2.getString(6);
																			s5=rs2.getString(7);
																			//s6=rs2.getString(8);	
																			
																		
																	%><tr>
																		<td><div align="center">
																		<input  name="image" type="image" src="images1.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit" />
																		</input>
																		</div></td>
																		<td align="center" valign="middle"><div align="center" class="style33"><%=uuu%></div></td>
																		<td align="center" valign="middle"><div align="center" class="style33"><%=s3%></div></td>
																		<td align="center" valign="middle"><div align="center" class="style33"><%=s2%></div></td>
																		<td align="center" valign="middle"><div align="center" class="style33"><%=s4%></div></td>
																		<td align="center" valign="middle"><div align="center" class="style33"><%=s5%></div></td>
																	 </tr><%
																}	
													
												}
												else if(rs1.getString(3).equalsIgnoreCase(uname))
												{
													uuu = rs1.getString(2);
																String query3="select * from user where name='"+uuu+"'"; 
																Statement st3=connection.createStatement();
																ResultSet rs3=st3.executeQuery(query3);
																if( rs3.next() )
																{
																			i=rs3.getInt(1);
																			//s1=rs2.getString(2);
																			s2=rs3.getString(4);
																			s3=rs3.getString(5);
																			s4=rs3.getString(6);
																			s5=rs3.getString(7);
																			//s6=rs2.getString(8);	
																}%>
												
						
											  <tr>
												<td><div align="center">
													<input  name="image" type="image" src="images1.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit" />
													</input>
												</div></td>
												<td align="center" valign="middle"><div align="center" class="style33"><%=uuu%></div></td>
												<td align="center" valign="middle"><div align="center" class="style33"><%=s3%></div></td>
												<td align="center" valign="middle"><div align="center" class="style33"><%=s2%></div></td>
												<td align="center" valign="middle"><div align="center" class="style33"><%=s4%></div></td>
												<td align="center" valign="middle"><div align="center" class="style33"><%=s5%></div></td>
											 </tr>
											  <%
											}else{}
	 
								   }
								   else
								   {
								  
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
      <a href="UserMain.jsp" class="style21 style28">Back</a></div>
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
