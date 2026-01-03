<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Find Patients Based on Ages.. </title>
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
.style33 {color: #0000FF}
.style28 {
	font-size: 14px;
	color: #0000FF;
}
.style43 {color: #FFCC00}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style71 {font-size: 11px}
.style72 {font-size: 12px}
.style47 {	color: #0000FF;
	font-weight: bold;
	font-size: 13px;
}
.style75 {
	color: #006600;
	font-weight: bold;
}
.style76 {color: #006600}
.style77 {color: #FFFF00}
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
          <li><a href="DO_Login.jsp"><strong>Data Holder </strong></a></li>
          <li class="active"><a href="AdminLogin.jsp"><strong>Healthcare Server </strong></a></li>
          <li class="sidebar"><a href="UserLogin.jsp"><strong>Data Analizer </strong></a></li>
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
          <h2><span class="style26">View  Patients Details Based on Ages.. </span></h2>
          <div class="clr"></div>
          <div>
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
try 
{
 				 %> 
   				<form action="A_PatientsAges.jsp" method="post" name="form1" id="form1">
              	 <p>&nbsp;</p>
                <table width="300" border="0" align="center">
                  <tr>
                    <td width="104" class="style26 style5"><span class="style47 style33">Enter  Ages </span></td>
                    <td width="102"><input type="text" name="age1" style="width:80px;height:25px;"/></td>
                    <td width="80"><input type="text" name="age2" style="width:80px;height:25px;"/></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>
                      <div align="right">
                        <input type="submit" name="Submit" value="Search" style="width:80px;height:30px;" />
                      </div></td><td>&nbsp;</td>
                  </tr>
                </table>
                <p>&nbsp;</p>
   				</form>
			 
	<%
 	SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
	SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

	Date now = new Date();

	String strDate = sdfDate.format(now);
	String strTime = sdfTime.format(now);
	String dt = strDate + "   " + strTime;
				
		int a1 = Integer.parseInt(request.getParameter("age1"));
		int a2 = Integer.parseInt(request.getParameter("age2"));
		
				int ii=1,j=0;
%>
            </p>
            <table width="878" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="31" height="34"  valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style89 style72 style77">PID</div></td>
              <td  width="115" height="34" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style89 style72 style77">Patient Name</div></td>
              <td  width="108" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style89 style72 style77">Blood Group</div></td>
              <td  width="97" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style89 style72 style77">Disease</div></td>
              <td  width="58" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style89 style72 style77">Age</div></td>
              <td  width="79" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style89 style72 style77">DOB</div></td>
              <td  width="69" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style89 style72 style77">Gender</div></td>
              <td  width="87" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style89 style72 style77">Mobile</div></td>
              <td  width="108" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style89 style72 style77">Email</div></td>
              <td  width="104" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style56 style89 style77 style72">Address</div></td>
              </tr>
                <%
				
		
					   String uname=(String)application.getAttribute("uname");
					   String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="",s11="",s12="",s13="",s14="";
					 
      		
						   //	String query="select * from publish"; //////////
							String query="select * from patients"; 
						   	Statement st=connection.createStatement();
							ResultSet rs=st.executeQuery(query);
							while ( rs.next() )
							{
								int  i=rs.getInt(1);
								String age1=rs.getString(6);
									
						String keys = "ef50a0ef2c3e3a5f";
						byte[] keyValue = keys.getBytes();
						Key key = new SecretKeySpec(keyValue,"AES");
						Cipher c = Cipher.getInstance("AES");
						c.init(Cipher.ENCRYPT_MODE,key);
						String keyy = String.valueOf(keyValue);
						
						
						//String age2 = new String(Base64.decode(age1.getBytes()));////////////
						int age=Integer.parseInt(age1);

						//String email = new String(Base64.decode(s8.getBytes()));
						
											s1=rs.getString(3);
											s2=rs.getString(4);
											s3=rs.getString(5);
											s4=rs.getString(6);
											s5=rs.getString(7);
											s6=rs.getString(8);
											s7=rs.getString(9);
										    s8=rs.getString(10);
											s9=rs.getString(11);
											s10=rs.getString(12);
											s11=rs.getString(13);
											s12=rs.getString(14);
										    s13=rs.getString(15);
										    s14=rs.getString(2);
								
						
								if (age>=a1 && age<=a2)
      							{
      								/*String query4 ="insert into search_found(uname,keyword,date,title)values('"+uname+"','"+dt1+"','"+dt+"','"+s2+"')";
									Statement st4=connection.createStatement();
					  				st4.executeUpdate(query4);*/
				
              						
									/*String query1="select status from permission where ((username='"+uname+"' and patientname='"+name+"') and email='"+email+"') and status='Permitted'"; 
									Statement st1=connection.createStatement();
									ResultSet rs1=st1.executeQuery(query1);
									if(rs1.next()==true)
									{
													*/
										/* s1 = new String(Base64.decode(s1.getBytes()));
										 s2 = new String(Base64.decode(s2.getBytes()));
										 s3 = new String(Base64.decode(s3.getBytes()));
										 s4 = new String(Base64.decode(s4.getBytes()));
										 s5 = new String(Base64.decode(s5.getBytes()));
										 s6 = new String(Base64.decode(s6.getBytes()));
										 s7 = new String(Base64.decode(s7.getBytes()));
										 s8 = new String(Base64.decode(s8.getBytes()));
										 s9 = new String(Base64.decode(s9.getBytes()));
										 s10 = new String(Base64.decode(s10.getBytes()));
										 s11 = new String(Base64.decode(s11.getBytes()));
										 s12 = new String(Base64.decode(s12.getBytes()));
										 s13 = new String(Base64.decode(s13.getBytes()));*/
									
				
              %>
			
            <tr>
              <td height="52" align="center"  valign="middle"><div align="center" class="style26 style90 style71 style72"><strong>
                  <%out.println(i);%>
              </strong></div></td>
              <td align="center"  valign="middle"><div align="center" class="style75"><a href="A_PatientsAges1.jsp?patient=<%=s1%>&amp;id=<%=i%>" class="style76">       
			   <%out.println(s1);%>
			  </a></div></td>
              <td align="center"  valign="middle"><div align="center" class="style26 style90 style71 style72"><strong>
                <strong>
                <%out.println(s2);%>
                </strong></strong></div></td>
              <td align="center"  valign="middle"><div align="center" class="style26 style90 style71 style72"><strong>
                <strong>
                <%out.println(s3);%>
                </strong></strong></div></td>
              <td align="center"  valign="middle"><div align="center" class="style26 style90 style71 style72"><strong>
                <strong>
                <%out.println(s4);%>
                </strong></strong></div></td>
              <td align="center"  valign="middle"><div align="center" class="style26 style90 style71 style72"><strong>
                <strong>
                <%out.println(s5);%>
                </strong></strong></div></td>
              <td align="center"  valign="middle"><div align="center" class="style26 style90 style71 style72"><strong>
                <strong>
                <%out.println(s6);%>
                </strong></strong></div></td>
              <td align="center"  valign="middle"><div align="center" class="style26 style90 style71 style72"><strong>
                <strong>
                <%out.println(s7);%>
                </strong></strong></div></td>
              <td align="center"  valign="middle"><div align="center" class="style26 style90 style71 style72"><strong>
                <strong>
                <%out.println(s8);%>
              </div></td>
			  <td align="center"  valign="middle"><div align="center" class="style26 style90 style71 style72"><strong>
			    <%out.println(s10);%>
			  </strong></div></td>
              </tr>
            <%
				
						
            ii+=1;}}%>
              
              <%
           connection.close();
		   
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
            </table>
            <p>&nbsp;</p>
          </div>
          <p align="center"><a href="SearchPatients.jsp" class="style11 style33 style28"><strong> </strong></a></p>
          <table width="447" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="439"><div align="right"><a href="AdminMain.jsp" class="style11 style33 style28"><strong>Back</strong></a></div></td>
            </tr>
          </table>
          <p align="center"><a href="SearchPatients.jsp" class="style11 style33 style28"></a></p>
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
