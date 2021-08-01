<title>Create Tweets </title>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.security.MessageDigest,java.security.NoSuchAlgorithmException"%>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>


<%
					String uname=(String)application.getAttribute("uname");
					
					ArrayList list = new ArrayList();
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery\\");
					String paramname=null;
					String file=null;
					String a=null,b=null,c=null,d=null,image=null;
					String ee[]=null;
					String checkBok=" ";
					int ff=0;
					String bin = "";
					String tname=null;	
					String tdesc=null;
					String mno=null;
					String addr=null;
					String dob=null;
				    String location=null;
					String sk="Rejected";
					String gender=null;
					String pincode=null;
					
				
					FileInputStream fs=null;
					File file1 = null;	
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("tweet"))
							{
								tname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("description"))
							{
								tdesc=multi.getParameter(paramname);
							}
														
							if(paramname.equalsIgnoreCase("pic"))
							{
								image=multi.getParameter(paramname);
							}
						
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) {
									if (i != -1) {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										// sb1.append(",");
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++){
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4){
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
											//System.out.print(bin);
										}
									}	
								}
							}		
						}
						FileInputStream fs1 = null;
						
						int lyke=0;
						
						
						
							//Hash Code Generation Based on Tweet Name.
						
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
							String hash=hexStr;
							
							
						
			 			String query1="select * from ttopic where hash='"+hash+"'"; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   
					   		
							out.print("Tweet Topic Already Exists");
							
							%>
							<br/><br/><p><a href="TweetCreate.jsp">Back</a>         <a href="UserMain.jsp">Home</a> </p>
				
							
							<%
					   }
					   else
					   {
					   
					   
      	
      	
							SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
					
							Date now = new Date();
					
							String strDate = sdfDate.format(now);
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
							
							
							
							
								
							
							
							
						PreparedStatement ps=connection.prepareStatement("insert into ttopic(tname,description,hash,imagess,dt,user,rank) values(?,?,?,?,?,?,?)");
						ps.setString(1,tname);
						ps.setString(2,tdesc);
						ps.setString(3,hash);	
						ps.setString(5,dt);
						ps.setString(6,uname);
						ps.setInt(7,0);
						
						ps.setBinaryStream(4, (InputStream)fs, (int)(file1.length()));	
				//		ps.setString(11,sk);		
						
						if(f == 0)
							ps.setObject(4,null);
						else if(f == 12)
						{
							fs1 = (FileInputStream)list.get(0);
							ps.setBinaryStream(4,fs1,fs1.available());
						}	
						
						int x=ps.executeUpdate();
						if(x>0){
							//request.setAttribute("msg","successfull");
							out.print("Tweet Created Successfully");
							
			%>
			<br/><br/><p><a href="TweetCreate.jsp">Back</a>         <a href="UserMain.jsp">Home</a> </p>

			
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
