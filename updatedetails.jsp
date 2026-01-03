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
	String mobile=  request.getParameter("mobile");
	String blood =  request.getParameter("blood");
	String email=  request.getParameter("email");
	String disease =  request.getParameter("disease");
	String city=  request.getParameter("city");
	String age =  request.getParameter("age");
	String address =  request.getParameter("address");
	String dob=  request.getParameter("dob");
	String code =  request.getParameter("code");
	String gender =  request.getParameter("gender");
	String textarea =  request.getParameter("textarea");

	int id=Integer.parseInt(request.getParameter("id"));
	/*
	out.print(id+"<br>");
		out.print(patient+"<br>");
			out.print(mobile+"<br>");
				out.print(blood+"<br>");
					out.print(email+"<br>");
						out.print(disease+"<br>");
							out.print(dob+"<br>");
	*/
  	try
	{            
    					String keys = "ef50a0ef2c3e3a5f";
						byte[] keyValue = keys.getBytes();
						Key key = new SecretKeySpec(keyValue,"AES");
						Cipher c = Cipher.getInstance("AES");
						c.init(Cipher.ENCRYPT_MODE,key);
						String keyy = String.valueOf(keyValue);
						
					
						//Digital Sign Generation
						
						String namefile="filename.txt";
						PrintStream p=new PrintStream(new FileOutputStream(namefile+"/"));
						p.print(new String(textarea));
						
						
						MessageDigest md=MessageDigest.getInstance("SHA1");
						FileInputStream fis11=new FileInputStream(namefile+"/");				
						DigestInputStream dis1=new DigestInputStream(fis11,md);
						BufferedInputStream bis1=new BufferedInputStream(dis1);				
						while(true)
						{
						
						int b1=bis1.read();
						if(b1==-1)
						
						break;
						}
						
						
						BigInteger bi1=new BigInteger(md.digest());
						String spl1=bi1.toString();
						String h1=bi1.toString(16);
						
						
					String patient1 = new String(Base64.encode(patient.getBytes()));
					String email1 = new String(Base64.encode(email.getBytes()));
					String mobile1 = new String(Base64.encode(mobile.getBytes()));
					String blood1 = new String(Base64.encode(blood.getBytes()));
					String disease1 = new String(Base64.encode(disease.getBytes()));
					String city1 = new String(Base64.encode(city.getBytes()));
					String age1 = new String(Base64.encode(age.getBytes()));
					String address1 = new String(Base64.encode(address.getBytes()));
					String dob1 = new String(Base64.encode(dob.getBytes()));
					String code1 = new String(Base64.encode(code.getBytes()));
					String gender1 = new String(Base64.encode(gender.getBytes()));
					String textarea1 = new String(Base64.encode(textarea.getBytes()));
					String h11 = new String(Base64.encode(h1.getBytes()));
						
					int s=0,a=0;
					Statement st1=connection.createStatement();
					String sql1 = "update patients SET patientname='"+patient+"', email='"+email+"', mobile='"+mobile+"', bloodgroup='"+blood+"', disease='"+disease+"', city='"+city+"', age='"+age+"', address='"+address+"', dob='"+dob+"', pincode='"+code+"', gender='"+gender+"', contents='"+textarea+"', digital_sign='"+h1+"' where id="+id+" ";
					int k=st1.executeUpdate(sql1);
					
					
					
							
				
				  if(k>0 )
				  {
				  				  %>
  <br/>
</div>
<p align="center" class="style46">Patient Details Updated Successfully..</p>
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
									<p align="center" class="style46">Patient Details Update Not Successful..</p>
								  <p align="center" class="style17"><br/>
							      <a href="DO_EditPatients.jsp">Back</a></p>
									<div align="center">
									  <%
								
				  }
  	}
	
  	catch (Exception e)
	{
    	out.print(e);
  	}
%>
									  
                                    </div>
</body>
</html>