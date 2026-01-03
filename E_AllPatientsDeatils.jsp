<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Patients Details and Records..</title>
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
          <li class="active"><a href="AdminLogin.jsp"><strong>HealthCare Server </strong></a></li>
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
          <h2 align="center"><span class="style18"><span class="style12"><span class="style92">Predict Hospital Admissions From the Emergency Department..</span></span></span></h2>
          <div class="clr"></div>
          <table width="928" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="28" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">PID</div></td>
              <td  width="87" height="34" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Patient Name</div></td>
              <td  width="96" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Blood Group</div></td>
              <td  width="64" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Disease</div></td>
              <td  width="63" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Age</div></td>
              <td  width="72" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">DOB</div></td>
              <td  width="59" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Gender</div></td>
            
              <td  width="84" height="34" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Address</div></td>
           
              <td  width="74" height="34" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Data Holder</div></td>
			  <td  width="62" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Heart Beat</div></td>
              <td  width="74" height="34" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Blood Pressure</div></td>
			    <td  width="74" height="34" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Admit To Emergency</div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from patients order by owner ASC"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(3);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(7);
								s6=rs.getString(8);
								s7=rs.getString(9);
						String  s8=rs.getString(10);
						String	s9=rs.getString(11);
						String	s10=rs.getString(12);
						String	s11=rs.getString(13);
						String	s12=rs.getString(14);
						String  s13=rs.getString(15);
						String  s14=rs.getString(2);
						String s15=rs.getString(18);
						String s16=rs.getString(19);
						
						int hb=Integer.parseInt(s15);
						int bp=Integer.parseInt(s16);
						
						
						if(hb>2 || bp>150)
						{
								
					%>
            <tr>
              <td height="52" align="center"  valign="middle"><div align="center" class="style90">
                  <%out.println(i);%>
              </div></td>
              <td width="87" rowspan="1" align="center" valign="middle" ><div align="center" class="style90">
                <a href="A_AllPatientsDeatils1.jsp?patient=<%=s1%>&amp;id=<%=i%>">
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
                  <%out.println(s14);%>
              </div></td>
			  
			  <td align="center"  valign="middle"><div align="center" class="style90">
                <%out.println(s15);%>
              </div></td>
              <td height="52" align="center"  valign="middle"><div align="center" class="style90">
                  <%out.println(s16);%>
              </div></td>
			  
			  <td height="52" align="center"  valign="middle"><div align="center" class="style90">
                  <a href="E_Admit_Hospital.jsp?id=<%=i%>&pname=<%=s1%>">Admit To Hospital</a>
              </div></td>
            </tr>
            <%
			
			}
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          
          <table width="472" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="455"><div align="right"><a href="E_Emergency_Main.jsp" class="style85">Back</a></div></td>
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
