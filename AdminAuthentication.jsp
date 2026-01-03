
<%@ include file="connect.jsp" %>

<%
   
    try
	{
	
			String username=request.getParameter("uname");      
         	String Password=request.getParameter("pass");
			String hname=request.getParameter("hname");
			
			application.setAttribute("admin",username);
			application.setAttribute("hname",hname);
			
			String sql="SELECT * FROM Hospital where username='"+username+"' and password='"+Password+"' and hname ='"+hname+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
				response.sendRedirect("AdminMain.jsp");
			}
			else
			{
					response.sendRedirect("AdminRe-Login.jsp");
				
			}
	
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>