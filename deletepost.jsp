<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Post display page</title>
</head>
<body>
<div align="center">
  <%
	String patient =  request.getParameter("patient");
	String email=  request.getParameter("email");
  	try
	{            
    					String keys = "ef50a0ef2c3e3a5f";
						byte[] keyValue = keys.getBytes();
						Key key = new SecretKeySpec(keyValue,"AES");
						Cipher c = Cipher.getInstance("AES");
						c.init(Cipher.ENCRYPT_MODE,key);
						String keyy = String.valueOf(keyValue);
						
						
					String patient1 = new String(Base64.encode(patient.getBytes()));
					String email1 = new String(Base64.encode(email.getBytes()));
					
					
					Statement st12=connection.createStatement();
					String strQuery12 = "delete from patients where patientname='"+patient+"'  and email='"+email+"' ";
					int k=st12.executeUpdate(strQuery12);
     	//} 
					Statement st3=connection.createStatement();
					String strQuery3 = "delete from publish where patientname='"+patient1+"'  and email='"+email1+"' ";
					int s=st3.executeUpdate(strQuery3);
					
				/*	Statement st2=connection.createStatement();
					String strQuery2 = "delete from negcomments where p_name='"+patient+"'  and categorie='"+p_Categorie+"' ";
					st2.executeUpdate(strQuery2);
					
					Statement st4=connection.createStatement();
					String strQuery4 = "delete from poscomments where p_name='"+p_Name+"'  and categorie='"+p_Categorie+"' ";
					st4.executeUpdate(strQuery4);*/
					
					/*Statement st5=connection.createStatement();
					String strQuery5 = "delete from postsearch where p_name='"+p_Name+"'  and categorie='"+p_Categorie+"' ";
					st5.executeUpdate(strQuery5);*/
					
				/*	Statement st6=connection.createStatement();
					String strQuery6 = "delete from purchase where p_name='"+p_Name+"'  and categorie='"+p_Categorie+"' ";
					st6.executeUpdate(strQuery6);*/
					
				
				  if(k>0||s>0)
				  {
				  				  %>
  <br/>
</div>
<p align="center" class="style46">Patient Details Removed Successfully..</p>
								  <p align="center" class="style17"><br/>
							      <a href="DO_EditPatients.jsp">Back</a></p>
									<div align="center">
									  <%
								
				  }
				  else
				  {
				  				  %>
									  <br/>
</div>
									<p align="center" class="style46">Patient Details Remove Not Successful..</p>
								  <p align="center" class="style17"><br/>
							      <a href="DO_EditPatients.jsp">Back</a></p>
									<div align="center">
									  <%
								
				  }
  	}
	
  	catch (Exception e)
	{
    	e.printStackTrace();
  	}
%>
									  
                                    </div>
</body>
</html>