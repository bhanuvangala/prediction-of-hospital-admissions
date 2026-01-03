<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
<%@ page import ="javax.crypto.Cipher" %>
<%@ page import ="org.bouncycastle.util.encoders.Base64" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<%@ page import="java.security.*,java.security.DigestInputStream,java.math.BigInteger"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
<!--
.style1 {
	font-size: 14px;
	color: #FF00FF;
	font-weight: bold;
}
.style3 {
	color: #000000;
	font-weight: bold;
}
-->
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>&nbsp;</p>
<div align="center">
  <span class="style1">
  <%

  try{      
        

		
			int ppid=Integer.parseInt(request.getParameter("ppid"));
			int opid=Integer.parseInt(request.getParameter("opid"));

			String ddigital="",dcontents="";
			String pdigital="",pcontents="";
						int i=0;
					
							String query="select digital_sign,contents from patients where id='"+opid+"'";
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								ddigital=rs.getString(1);
								dcontents=rs.getString(2);
							}
									
									
									String keyWord = "5765586965748666502846";
									keyWord = keyWord.substring(0, 16);
									byte[] keyValue = keyWord.getBytes();
									Key key = new SecretKeySpec(keyValue, "AES");
									Cipher c2 = Cipher.getInstance("AES");
									c2.init(Cipher.ENCRYPT_MODE, key);
			
									 pdigital = new String(Base64.encode(ddigital.getBytes()));
									 pcontents = new String(Base64.encode(dcontents.getBytes()));

		
							Statement st1=connection.createStatement();
							String strQuery1 = "update publish set digital_sign='"+pdigital+"',contents='"+pcontents+"' where id='"+ppid+"'";
							int a=st1.executeUpdate(strQuery1);
						
							if(a>0)
							{
							
							out.print("<br>Patient Details Resolved Successfully..");
							%>
  </span><br/>
  <br/>
</div>
<p align="center"><a href="DO_VerifyPatientsDetails.jsp" class="style3">Back</a></p>
							<div align="center">
							  <%
							}
						
						
					
  }
  catch (Exception e){
    e.printStackTrace();
  }
%>
							  
                            </div>
</body>
</html>