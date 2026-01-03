	<%@ include file="connect.jsp" %>
 	<%
  		
   	try {
		   String value=request.getParameter("value");
	 
	  	  if(value.equals("user"))
		  {
			
			String id=request.getParameter("id");
			String str = "Authorized";
       		Statement st1 = connection.createStatement();
       		String query1 ="update user set status='"+str+"' where id="+id+" ";
	   		st1.executeUpdate (query1);
			connection.close();
			response.sendRedirect("A_AuthorizeUsers.jsp");  
		 }
		else if(value.equals("owner"))
		  {
			
			String id=request.getParameter("id");
			String str = "Authorized";
       		Statement st1 = connection.createStatement();
       		String query1 ="update owner set status='"+str+"' where id="+id+" ";
	   		st1.executeUpdate (query1);
			connection.close();
			response.sendRedirect("A_AuthorizeOwners.jsp");  
		 }
		 else{}
			
	   		
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
