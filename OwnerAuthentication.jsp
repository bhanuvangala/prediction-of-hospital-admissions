<title>Owner Authentication Page</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%
	String name = request.getParameter("userid");
	String pass = request.getParameter("pass");


	try {
					
			
					String sql = "SELECT * FROM owner where username='"+name+"' and password='"+pass+"' ";
					Statement stmt = connection.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					if (rs.next()==true) 
					{
		
								String sql1="SELECT * FROM owner where username='"+name+"' and status='Authorized' ";
								Statement stmt1 = connection.createStatement();
								ResultSet rs1 =stmt1.executeQuery(sql1);
								if(rs1.next()==true)
								{
									int i = rs1.getInt(1);
									
									application.setAttribute("oid", i);
									application.setAttribute("oname", name);
									response.sendRedirect("DO_Main.jsp");
								}
								else
								{
										%>
									<br/><p>You are not Authorized by the Admin, Please wait!! </p><br/><br/><a href="DO_Login.jsp">Back</a>
									<%
								 }
					
					}
					else
					{
						response.sendRedirect("DO_Re-Login.jsp");
					}
				
				

	}
	 catch (Exception e)
	  {
		out.print(e);
		e.printStackTrace();
	}
%>

