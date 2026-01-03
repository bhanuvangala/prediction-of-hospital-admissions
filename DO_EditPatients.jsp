<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Edit Patient Details..</title>
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
.style18 {color: #FF00FF}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style56 {color: #FF0000}
.style85 {color: #0000FF; font-weight: bold; }
.style89 {font-size: 12px}
.style90 {color: #FF00FF; font-weight: bold; }
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
          <h2 class="style18">Edit Patient Details..</h2>
          <div class="clr"></div>
          <table width="905" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="41"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">PID</div></td>
              <td  width="127" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Patient Name</div></td>
              <td  width="141" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Blood Group</div></td>
              <td  width="94" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Disease</div></td>
              <td  width="106" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Email</div></td>
              <td  width="92" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">City</div></td>
              <td  width="118" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Address</div></td>
              <td  width="118" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Action1</div></td>
              <td  width="118" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style89">Action2</div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
							String owner = (String)application.getAttribute("oname");

						   	String query="select * from patients  where owner='"+owner+"'"; 
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

								
					%>
            <tr>
              <td height="42" align="center"  valign="middle"><div align="center" class="style90">
                  <%out.println(i);%>
              </div></td>
              <td width="127" rowspan="1" align="center" valign="middle" ><div align="center" class="style90">
                
                <%out.println(s1);%>
                </div></td>
              <td align="center"  valign="middle"><div align="center" class="style90">
                <%out.println(s2);%>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style90">
                <%out.println(s3);%>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style90">
                <%out.println(s8);%>
              </div></td>
              <td height="42" align="center"  valign="middle"><div align="center" class="style90">
                  <%out.println(s9);%>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style90">
                  <%out.println(s10);%>
              </div></td>
              <td height="42" align="center"  valign="middle">
			  <form id="form1" name="form1" method="post" action="DO_EditPatientDetails.jsp">
			  		<input type="hidden" value="<%=s1%>" name="patient"/>
				 	<input type="hidden" value="<%=s8%>" name="email"/>
                    <input type="submit" name="Submit" value="Edit Record" />
              </form>
              </td>
              <td height="42" align="center"  valign="middle">
			  <form id="form1" name="form1" method="post" action="deletepost.jsp">
				  <input type="hidden" value="<%=s1%>" name="patient"/>
				  <input type="hidden" value="<%=s8%>" name="email"/>
                  <input type="submit" name="Submit" value="Delete Record" />
              </form>           
			  </td>
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
              <td width="455"><div align="right"><a href="DO_Main.jsp" class="style85">Back</a></div></td>
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
