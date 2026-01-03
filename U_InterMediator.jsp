<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.*"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>


<%
	
  	try{  
	    	 String keyword=request.getParameter("t3");
		   		
				  String user=(String)application.getAttribute("uname");
			if(keyword.equals(""))
			{
			
				response.sendRedirect("SearchPatients.jsp");
			
			}
			else
			{
					
							 SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
                             SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

                             Date now = new Date();

                         	 String strDate = sdfDate.format(now);
                             String strTime = sdfTime.format(now);
                             String dt = strDate + "   " + strTime;   
							 
						    Statement st3 = connection.createStatement();
						    String query3 ="insert into search (username,keyword,dt)values('"+user+"','"+keyword+"','"+dt+"')";
						    int k=st3.executeUpdate (query3); 
						    if(k>0)
							{
								response.sendRedirect("SearchFound.jsp?t3="+keyword+"");
							}
			}
  	}
  	catch (Exception e){
    	e.printStackTrace();
  	}
%>

</body>
</html>