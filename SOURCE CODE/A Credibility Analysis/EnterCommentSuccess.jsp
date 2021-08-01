<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.security.MessageDigest,java.security.NoSuchAlgorithmException"%>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

<%
try{

	String uname=(String)application.getAttribute("uname");
	String tname1=(String)application.getAttribute("tname");
	String comment=request.getParameter("textarea");
	
	
	
							SimpleDateFormat sdfDate2 = new SimpleDateFormat("dd/MM/yyyy");
							//SimpleDateFormat sdfTime2 = new SimpleDateFormat("HH:mm:ss");
					
							Date now = new Date();
					
							String strDate2 = sdfDate2.format(now);
							//String strTime2 = sdfTime2.format(now);
							//String dt2 = strDate2 + "   " + strTime2;
							
							MessageDigest md=MessageDigest.getInstance("SHA1");
							md.reset();
							byte[] buffer=tname1.getBytes("UTF-8");
							md.update(buffer);
							byte[] digest=md.digest();
							
							String hexStr=" ";
							for(int i=0;i<digest.length;i++)
							{
								hexStr+=Integer.toString((digest[i]&0xff)+0x100,16).substring(1);
							}
							String hash=hexStr;
								
						
					
							
						String dt="";
						int i=0,rank=0;            
							String query5="	SELECT dt FROM tcomment where (user='"+uname+"' and tname='"+tname1+"') and dt='"+strDate2+"'";		
							Statement st5=connection.createStatement();
							ResultSet rs5=st5.executeQuery(query5);
							if(rs5.next()==true)
							{
								
									PreparedStatement ps=connection.prepareStatement("insert into tcomment(tname,hash,comments,user,dt) values(?,?,?,?,?)");
									ps.setString(1,tname1);
									ps.setString(2,hash);
									ps.setString(3,comment);
									ps.setString(4,uname);	
									ps.setString(5,strDate2);
									
									ps.executeUpdate();
									
									out.print("Tweeted Successfully");
									%><br/><br/><a href="UserMain.jsp">Back</a>
<%	
									
							}
							else
							{
									PreparedStatement ps=connection.prepareStatement("insert into tcomment(tname,hash,comments,user,dt) values(?,?,?,?,?)");
									ps.setString(1,tname1);
									ps.setString(2,hash);
									ps.setString(3,comment);
									ps.setString(4,uname);	
									ps.setString(5,strDate2);
									
									ps.executeUpdate();
									
											
									String query6="	SELECT rank FROM ttopic where tname='"+tname1+"' ";		
									Statement st6=connection.createStatement();
									ResultSet rs6=st6.executeQuery(query6);
									if(rs6.next()==true)
									{
										
										rank=rs6.getInt(1);
										
										
									
										out.print("Tweeted Successfully");
										%><br/><br/><a href="UserMain.jsp">Back</a>
<%	
									}
							}
						
						} 
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
%>