<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%
try 
{
     String uname=(String)application.getAttribute("uname");
     String name=request.getParameter("name");
     String email=request.getParameter("email");
	 String dt1=request.getParameter("t3");	 
	 
	 
	SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
	SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

	Date now = new Date();

	String strDate = sdfDate.format(now);
	String strTime = sdfTime.format(now);
	String dt = strDate + "   " + strTime;
	
	 Statement st3 = connection.createStatement();
	 String status="Requested";
	 String query3 ="insert into permission (username,patientname,email,status,dt)values('"+uname+"','"+name+"','"+email+"','"+status+"','"+dt+"')";
	 int k=st3.executeUpdate (query3); 
	 if(k>0)
	 {
	 	response.sendRedirect("SearchFound.jsp?t3="+dt1+"");
	 
	 }
			
	  	
}
catch(Exception e)
{
	System.out.println(e);
}
%>