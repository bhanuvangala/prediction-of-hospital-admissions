<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View and Authorize Data Owners..</title>
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
.style23 {font-size: 26px;
	color: #FF00FF;
}
.style27 {color: #FFCC00}
.style12 {color: #0000FF}
.style18 {color: #FF00FF}
.style35 {	font-size: 25px;
	color: #FF00FF;
}
.style22 {font-size: 14px}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style54 {color: #009900}
.style56 {color: #FF0000}
.style57 {font-size: 15px}
.style58 {color: #6699FF;
	font-size: 14px;
}
.style86 {font-size: 13px}
.style87 {font-weight: bold; color: #FF00FF;}
.style85 {color: #0000FF; font-weight: bold; }
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
          <h2><span class="style18"><span class="style12"><span class="style35">View and Authorize Data Holder..</span></span></span></h2>
          <div class="clr"></div>
          <table width="899" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="48" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">ID</div></td>
              <td  width="136" height="34" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Owner Image</div></td>
              <td  width="163" height="34" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Owner Name</div></td>
              <td  width="154" height="34" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Email</div></td>
              <td  width="133" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Phone No. </div></td>
              <td  width="133" height="34" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Address</div></td>
              <td  width="107" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Status</div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from owner"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(9);
								
								
								
								
								
							
						
					%>
            <tr>
              <td height="115" align="center"  valign="middle"><div align="center" class="style5 style37 style54 style55 style86">
                  <%out.println(i);%>
              </div></td>
              <td width="136" rowspan="1" align="center" valign="middle" ><div class="style5 style37 style54 style55 style86" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="user_Pic.jsp?value=<%="owner"%>&id=<%=i%>" style="width:90px; height:90px;" />
              </a> </div></td>
              <td height="115" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style86">
                  <%out.println(s1);%>
              </div></td>
              <td height="115" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style86">
                  <%out.println(s2);%>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style86">
                <%out.println(s3);%>
              </div></td>
              <td height="115" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style86">
                  <%out.println(s4);%>
              </div></td>
              <%
						if(s5.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td valign="middle" height="115" style="color:#000000;"align="center"><div align="center" class="style5 style20 style30 style37 style86">
                  <div align="center" class="style20 style37 style46"><a href="A_UserStatus.jsp?value=<%="owner"%>&id=<%=i%>" class="style30 style87">waiting</a></div>
              </div></td>
              <%
						}
						else
						{
						%>
              <td width="23" height="115" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style55 style58">
                  <%out.println(s5);%>
              </div></td>
              <%
						}
						
						%>
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
