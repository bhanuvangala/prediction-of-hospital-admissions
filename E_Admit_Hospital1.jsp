<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admit_Hospital</title>
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
.style43 {color: #FFCC00}
.style44 {
	color: #FF0000;
	font-weight: bold;
}
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
          <li ><a href="DO_Login.jsp"><strong>Data Holder </strong></a></li>
          <li class="active"><a href="AdminLogin.jsp"><strong>Emergency Sector </strong></a></li>
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
          <h2><span class="style33"><span class="style1"><span class="style26">Admited Patients Successfully..</span></span><span class="style26"></span></span></h2>
          <div class="clr"></div>
          <p>
		    
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
          <%

				   
					
					
					
					
					try {
					
					
						
					
					
					SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
	SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

	Date now = new Date();

	String strDate = sdfDate.format(now);
	String strTime = sdfTime.format(now);
	String dt = strDate + "   " + strTime;
						
						
						int pid=Integer.parseInt(request.getParameter("pid"));
		               String pname=request.getParameter("pname");
		               String hname=request.getParameter("hname");
						
						
						
						
						
							String query="select * from patients where id="+pid+" and patientname='"+pname+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							if(rs.next()==true)
							{
						
						    int i=rs.getInt(1);
							String	s111=rs.getString(2);   //data holder
							String	s1=rs.getString(3); // pname
							String	s2=rs.getString(4);  // Bg
							String	s3=rs.getString(5);  // Disease
							String	s4=rs.getString(6);  //age
							String	s5=rs.getString(7);  // dob
							String	s6=rs.getString(8);  // gender
							String	s10=rs.getString(9); //mobile
							String	s11=rs.getString(10); //email
							String	s12=rs.getString(11); //city
							String  s13=rs.getString(12);  // address
							String  s14=rs.getString(13);  // pincode
							String s15=rs.getString(17);   //dt
							String s16=rs.getString(18);  // Hb
							String s17=rs.getString(19);  // Bp
						
						

						 PreparedStatement ps=connection.prepareStatement("insert into emergency_patients(id,owner,patientname,bloodgroup,disease,age,dob,gender,mobile,email,city,address,pincode,date,Hb,Bp,hname) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ");
						ps.setInt(1,i);
						ps.setString(2,s111);
						ps.setString(3,s1);
						ps.setString(4,s2);	
						ps.setString(5,s3);
						ps.setString(6,s4);
						ps.setString(7,s5);
						ps.setString(8,s6);
						ps.setString(9,s10);
						ps.setString(10,s11);
						ps.setString(11,s12);	
						ps.setString(12,s13);
						ps.setString(13,s14);
						ps.setString(14,dt);
						ps.setString(15,s16);
						ps.setString(16,s17);
												ps.setString(17,hname);
						
						int x=ps.executeUpdate();
						
						if(x>0 )
						{
								%>
								<br/>
								<p align="center" class="style46">Patient Admited Successfully..</p>
								<br/>
								 <p align="center"><a href="E_Emergency_Main.jsp" class="style11 style33 style28"><strong>Back</strong></a></p>	
								<%		
						}
						else
						{		%>
								<br/>
								<p align="center" class="style47">Patient Details Upload Not Successful..!!</p>
								<br/>
		  <p align="center"><a href="E_Emergency_Main.jsp" class="style11 style33 style28"><strong>Back</strong></a></p>	
								<%	
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
          </form>
        </div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="E_Emergency_Main.jsp">Home</a></li>
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
