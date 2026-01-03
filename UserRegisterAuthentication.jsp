<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Registration Status..</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style3 {
	color: #999900;
	font-size: 15px;
}
.style11 {
	font-size: 25px;
	color: #FFCC00;
}
.style18 {color: #FF00FF}
.style21 {color: #0000FF; font-weight: bold; }
.style46 {font-size: 16px; color: #33CC00; }
.style41 {font-size: 14px; color: #FF00FF; }
.style42 {font-size: 16px; color: #009900; }
.style44 {color: #0066FF}
.style47 {
	color: #FF0000;
	font-weight: bold;
	font-size: 13px;
}
.style48 {color: #FF00FF; font-size: 25px;}
-->
</style>
</head>
<body>
<!-- START PAGE SOURCE -->
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo style3">
        <p align="center" class="style11">Using Data Mining to Predict Hospital Admissions From the Emergency Department</p>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><strong>Home</strong></a></li>
          <li><a href="DO_Login.jsp"><strong>Data Holder </strong></a></li>
          <li><a href="AdminLogin.jsp"><strong>Helathcare Server </strong></a></li>
          <li class="active"><a href="UserLogin.jsp"><strong>Data Analizer </strong></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="hbg">&nbsp;</div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span class="style48">User Registration Status..</span></h2>
          <div class="clr"></div>
          <div>
            <label for="name">
            <%@ include file="connect.jsp" %>
            <%@ page import="java.io.*" %>
            <%@ page import="java.util.*" %>
            <%@ page import="com.oreilly.servlet.*" %>
            <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String paramname=null,uname=null,pass=null,email=null,mno=null,addr=null,dob=null,gender=null,pincode=null,location=null,image=null,cloud=null,bin = "";
				
					FileInputStream fs=null;
					
					File file1 = null;	
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("userid"))
							{
								uname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pass"))
							{
								pass=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobile"))
							{
								mno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("dob"))
							{
								dob=multi.getParameter(paramname);
							} 
							if(paramname.equalsIgnoreCase("gender"))
							{
								gender=multi.getParameter(paramname);
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
								while ((i = fis.read()) != -1) 
								{
									if (i != -1)
									 {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
							
						                }
									}	
									
								}
								
							}		
						}
						
						
		
						FileInputStream fs1 = null;
			 			String query1="select * from user  where username='"+uname+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
            </p>
            </label>
            <p>&nbsp;</p>
            <p class="style24 style47">User Name Already Exist..</p>
            <p class="style18 style24">&nbsp;</p>
            <p align="left"><a href="UserRegister.jsp" class="style21">Back</a></p>
            <p>
              <%
				
					   }
					   else
					   {
					   
					  String status = "Waiting";
PreparedStatement ps=connection.prepareStatement("insert into user(username,password,email,mobile,address,dob,gender,status,image) values(?,?,?,?,?,?,?,?,?)");
						ps.setString(1,uname);
						ps.setString(2,pass);
						ps.setString(3,email);	
						ps.setString(4,mno);
						ps.setString(5,addr);
						ps.setString(6,dob);
						ps.setString(7,gender);
						ps.setString(8,status);
				
						ps.setBinaryStream(9, (InputStream)fs, (int)(file1.length()));	
				       
						
						if(f == 0)
							ps.setObject(9,null);
						else if(f == 12)
						{
							fs1 = (FileInputStream)list.get(0);
							ps.setBinaryStream(9,fs1,fs1.available());
						}	
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
            </p>
            <p>&nbsp;</p>
            <p class="style42 style44">Registration Successfull..</p>
            <p class="style46">&nbsp;</p>
            <p><a href="UserLogin.jsp" class="style21">Back</a><a href="index.html" class="style41"></a></p>
            <%
			
					}}}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
            </p>
            <p align="left" class="style18">&nbsp;</p>
          </div>
          <p align="right">&nbsp;</p>
        </div>
        <div class="article"></div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <input name="button_search" src="images/search_btn.gif" class="button_search" type="image" />
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search" type="text" />
            </span>
          </form>
        </div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li>
              <p><a href="#">Home</a></p>
              <p><a href="UserLogin.jsp">User Login</a></p>
            </li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<!-- END PAGE SOURCE -->
<div align=center></div>
</body>
</html>
