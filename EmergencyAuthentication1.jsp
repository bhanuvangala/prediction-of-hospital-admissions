
<%@ include file="connect.jsp" %>

<%
   
    try
	{
	
			String username=request.getParameter("userid");      
         	String Password=request.getParameter("pass");
			
			application.setAttribute("admin",username);
			
			String sql="SELECT * FROM Emergency1 where name='"+username+"' and pass='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
				response.sendRedirect("E_Emergency_Main.jsp");
			}
			else
			{
					response.sendRedirect("E_Emergey_Sector_Login.jsp");
				
			}
	
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>