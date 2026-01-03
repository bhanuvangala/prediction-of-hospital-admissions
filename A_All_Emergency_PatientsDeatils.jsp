<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All_Emergency_PatientsDeatils </title>
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
.style27 {color: #FFCC00}
.style12 {color: #0000FF}
.style18 {color: #FF00FF}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style56 {color: #FF0000}
.style85 {color: #0000FF; font-weight: bold; }
.style89 {font-size: 12px}
.style90 {color: #FF00FF; font-weight: bold; }
.style92 {font-size: 25px; color: #009900; }
-->
</style>
</head>
<body>
<!-- START PAGE SOURCE -->
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo style3">
        <p align="center" class="style11 style27">Using Data Mining to Predict Hospital Admissions From the Emergency Department</p>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><strong>Home</strong></a></li>
          <li><a href="DO_Login.jsp"><strong>Data Holder </strong></a></li>
          <li class="active"><a href="AdminLogin.jsp"><strong>Healthcare Server </strong></a></li>
          <li><a href="UserLogin.jsp"><strong>Data Analyzer</strong></a></li>
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
          <h2 align="center"><span class="style18"><span class="style12"><span class="style92">View All Emergency Admited Patients Deatils .</span></span></span></h2>
          <div class="clr"></div>
          <table width="902" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="25" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">PID</div></td>
              <td  width="72" height="34" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Patient Name</div></td>
              <td  width="74" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Blood Group</div></td>
              <td  width="60" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Disease</div></td>
              <td  width="49" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Age</div></td>
              <td  width="55" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">DOB</div></td>
              <td  width="54" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Gender</div></td>
              <td  width="52" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Mobile</div></td>
		      <td  width="34" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">EMail</div></td>
		      <td  width="62" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">City</div></td>
              <td  width="73" height="34" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Address</div></td>
            <td  width="72" height="34" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Pincode</div></td>
		      <td  width="74" height="34" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Admited Date</div></td>
             
			  <td  width="53" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Heart Beat</div></td>
              <td  width="61" height="34" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Blood Pressure</div></td>
			   
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						
						
						try 
						{
						
						
						String hname=(String)application.getAttribute("hname");
						
						   	String query="select * from emergency_patients where hname='"+hname+"' order by owner ASC"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
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
							String s15=rs.getString(14);   //dt
							String s16=rs.getString(15);  // Hb
							String s17=rs.getString(16);  // Bp
						
						
						
						
								
					%>
            <tr>
              <td height="52" align="center"  valign="middle"><div align="center" class="style90">
                  <%out.println(i);%>
              </div></td>
              <td width="72" rowspan="1" align="center" valign="middle" ><div align="center" class="style90">
                
                <%out.println(s1);%>
              </a></div></td>
              <td align="center"  valign="middle"><div align="center" class="style90">
                <%out.println(s2);%>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style90">
                <%out.println(s3);%>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style90">
                <%out.println(s4);%>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style90">
                <%out.println(s5);%>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style90">
                <%out.println(s6);%>
              </div></td>
             
              <td height="52" align="center"  valign="middle"><div align="center" class="style90">
                  <%out.println(s10);%>
              </div></td>
           
              <td height="52" align="center"  valign="middle"><div align="center" class="style90">
                  <%out.println(s11);%>
              </div></td>
			  
			  <td align="center"  valign="middle"><div align="center" class="style90">
                <%out.println(s12);%>
              </div></td>
              <td height="52" align="center"  valign="middle"><div align="center" class="style90">
                  <%out.println(s13);%>
              </div></td>
			   <td height="52" align="center"  valign="middle"><div align="center" class="style90">
                  <%out.println(s14);%>
              </div></td>
			 
			   <td height="52" align="center"  valign="middle"><div align="center" class="style90">
                  <%out.println(s15);%>
              </div></td>
			 
			   <td height="52" align="center"  valign="middle"><div align="center" class="style90">
                  <%out.println(s16);%>
              </div></td>
			   <td height="52" align="center"  valign="middle"><div align="center" class="style90">
                  <%out.println(s17);%>
              </div></td>
			  
			 
            </tr>
            <%
			
			}
						
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p align="center"><a href="AdminMain.jsp" class="style85"></a></p>
          <table width="472" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="455"><div align="right"><a href="AdminMain.jsp" class="style85">Back</a></div></td>
            </tr>
          </table>
        <a href="AdminMain.jsp" class="style85"></a></div>
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
