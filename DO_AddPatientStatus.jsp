<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Adding Patients Status..</title>
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
	color: #00CC00;
}
.style26 {color: #FF00FF}
.style1 {font-size: 25px}
.style33 {color: #0000FF}
.style28 {font-size: 13px}
.style43 {color: #FFCC00}
.style44 {color: #FF0000}
.style46 {
	color: #6633FF;
	font-weight: bold;
}
.style47 {color: #FF0000; font-weight: bold; }
-->
</style>
</head>
<body>
<!-- START PAGE SOURCE -->
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo style3">
        <p align="center" class="style11 style43">Using Data Mining to Predict Hospital Admissions From the Emergency Department</p>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><strong>Home</strong></a></li>
          <li class="active"><a href="DO_Login.jsp"><strong>Data Holder </strong></a></li>
          <li><a href="AdminLogin.jsp"><strong>Helathcare Server </strong></a></li>
          <li><a href="UserLogin.jsp"><strong>Data Analizer </strong></a></li>
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
          <h2><span class="style33"><span class="style1"><span class="style26">Adding Patients Status..</span></span><span class="style26"></span></span></h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <%@ include file="connect.jsp" %>
          <%@ page import="java.util.*"%>
          <%@ page import="java.text.*"%>
          <%@ page import="java.util.Date"%>
          <%@ page import="java.sql.*"%>
          <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
          <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
          <%@ page import="org.bouncycastle.util.encoders.Base64"%>
          <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
          <%
/*String dtopic="";//=request.getParameter("t1");
String ddesc="";//=request.getParameter("t2");
String ddate="";//=request.getParameter("t3");
String pic="";//request.getParameter("docimg");
String fname="";//=request.getParameter("docfile");
String doc="";//=request.getParameter("textarea");*/
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String Hb=null,Bp=null,paramname=null,name="",blood="",disease="",age="",dob="",gender="",mobile="",email="",city="",address="",code="",fname="",textarea="",image=null,bin = "";
				
					FileInputStream fs=null;
					
					File file1 = null;	
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("name"))
							{
								name=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("blood"))
							{
								blood=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("disease"))
							{
								disease=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("age"))
							{
								age=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("dob"))
							{
								dob=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("gender"))
							{
								gender=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobile"))
							{
								mobile=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("city"))
							{
								city=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								address=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("code"))
							{
								code=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("fname"))
							{
								fname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("textarea"))
							{
								textarea=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("Hb"))
							{
								Hb=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("Bp"))
							{
								Bp=multi.getParameter(paramname);
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
int i2=0;
	if(name.equals("")||blood.equals("")||disease.equals("")||age.equals("")||dob.equals("")||gender.equals("--Select--")|mobile.equals("")||email.equals("")||city.equals("")||address.equals("")||code.equals("")||fname.equals("")||textarea.equals(""))
{			
		  %>
          <br/>
          <p align="center" class="style32 style18 style44"><strong>Please Enter All Details..</strong></p>
          <br/>
          <p align="center"><a href="DO_AddPatientDetails.jsp" class="style11 style33 style28"><strong>Back</strong></a></p>
          <%
}
else
{
		
		String query1="select * from patients  where patientname='"+name+"' and email='"+email+"' "; 
			Statement st1=connection.createStatement();
			ResultSet rs1=st1.executeQuery(query1);
			if ( rs1.next()==true)
			   {
					
				%>
          <br/>
          <p align="center" class="style32 style18 style44"><strong>Patient Details Already Exists in this Name!!</strong></p>
          <br/>
          <p align="center"><a href="DO_AddPatientDetails.jsp" class="style11 style33 style28"><strong>Back</strong></a></p>
          <%
				}
				else
				{
				
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
						
						Date now = new Date();
						
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String date = strDate + "   " + strTime;
						
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
						
					/*	
						String keys = "ef50a0ef2c3e3a5f";
						byte[] keyValue = keys.getBytes();
						Key key = new SecretKeySpec(keyValue,"AES");
						Cipher c = Cipher.getInstance("AES");
						c.init(Cipher.ENCRYPT_MODE,key);
						String keyy = String.valueOf(keyValue);
						
						String encryptedContent = new String(Base64.encode(content.getBytes()));
								*/
						
						
						
						
						String owner=(String)application.getAttribute("oname");
						
PreparedStatement ps=connection.prepareStatement("insert into patients(owner,patientname,bloodgroup,disease,age,dob,gender,mobile,email,city,address,pincode,fname,contents,digital_sign,date,Hb,Bp) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,owner);
						ps.setString(2,name);
						ps.setString(3,blood);	
						ps.setString(4,disease);
						ps.setString(5,age);
						ps.setString(6,dob);
						ps.setString(7,gender);
						ps.setString(8,mobile);
						ps.setString(9,email);
						ps.setString(10,city);	
						ps.setString(11,address);
						ps.setString(12,code);
						ps.setString(13,fname);
						ps.setString(14,textarea);
						ps.setString(15,h1);
						ps.setString(16,date);
						ps.setString(17,Hb);
						ps.setString(18,Bp);
						
						int x=ps.executeUpdate();
					
						
						
						
						if(x>0 )
						{
								%>
								<br/>
								<p align="center" class="style46">Patient Details Uploaded Successfully..</p>
								<br/>
								 <p align="center"><a href="DO_AddPatientDetails.jsp" class="style11 style33 style28"><strong>Back</strong></a></p>	
								<%		
						}
						else
						{		%>
								<br/>
								<p align="center" class="style47">Patient Details Upload Not Successful..!!</p>
								<br/>
		  <p align="center"><a href="DO_AddPatientDetails.jsp" class="style11 style33 style28"><strong>Back</strong></a></p>	
								<%	
						}	
        	 }
		 }
} 
catch(Exception e)
{
out.print(e.getMessage());
}  
%>
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
            <li><a href="#">Home</a></li>
            <li><a href="index.html">Log Out</a></li>
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
