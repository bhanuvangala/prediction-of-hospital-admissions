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
.style33 {color: #0000FF}
.style36 {font-size: 14px}
.style36 {color: #00CCFF}
.style37 {color: #FF6600}
.style9 {color: #FF0000; font-weight: bold; }
.style28 {font-size: 13px}
.style43 {color: #FFCC00}
.style45 {color: #6666FF}
.style47 {color: #006600}
.style49 {color: #FF00FF; font-weight: bold; }
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
          <h2><span class="style33">Editing Patient <span class="style47"><%=request.getParameter("patient")%></span>'s Details.. </span></h2>
          <div class="clr"></div>
          <p>&nbsp;</p> <form id="form1" name="form1" method="post" action="updatedetails.jsp">
          <table width="545" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
            <%@ include file="connect.jsp" %>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%
						
						String owner=(String )application.getAttribute("oname");
						
						int i=0;
						try 
						{	
							String s1,s2,s3,s4,s5,s6,s7;

							String patient = request.getParameter("patient");
							String email = request.getParameter("email");
						   	String query="select * from patients where patientname='"+patient+"' and email='"+email+"'";
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
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
								
								
								
								
					%>
            
            <tr>
              <td  width="120" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style37" style="margin-left:20px;">
                <div align="left"><strong>Patient Name </strong></div>
              </div></td>
              <td  width="159" valign="middle" style="color: #2c83b0;">
				  <input type="text" value="<%=s1%>" name="patient"/>             </td>
              <td  width="111" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style37" style="margin-left:20px;">
                  <div align="left"><strong>Mobile</strong></div>
              </div></td>
              <td  width="145" valign="middle" height="40" style="color:#000000;"><input type="text" value="<%=s7%>" name="mobile"/></td>
            </tr>
            <tr>
              <td  width="120" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style37" style="margin-left:20px;">
                <div align="left"><strong>Blood Group</strong></div>
              </div></td>
              <td  width="159" valign="middle" style="color: #2c83b0;">
			  <input type="text" value="<%=s2%>" name="blood"/>			  </td>
              <td  width="111" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style37" style="margin-left:20px;">
                  <div align="left"><strong>Email</strong></div>
              </div></td>
              <td  width="145" valign="middle" height="40"><input type="text" value="<%=s8%>" name="email"/></td>
            </tr>
            <tr>
              <td  width="120" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style37" style="margin-left:20px;">
                <div align="left"><strong>Disease</strong></div>
              </div></td>
              <td  width="159" align="left" valign="middle" style="color: #2c83b0;"><input type="text" value="<%=s3%>" name="disease"/></td>
              <td  width="111" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style37" style="margin-left:20px;">
                  <div align="left"><strong>City</strong></div>
              </div></td>
               <td  width="159" align="left" valign="middle" style="color: #2c83b0;"><input type="text" value="<%=s9%>" name="city"/></td>
            </tr>
            <tr>
              <td  width="120" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style37" style="margin-left:20px;">
                <div align="left"><strong>Age</strong></div>
              </div></td>
             <td  width="159" align="left" valign="middle" style="color: #2c83b0;"><input type="text" value="<%=s4%>" name="age"/></td>
              <td  width="111" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style37" style="margin-left:20px;">
                  <div align="left"><strong>Address</strong></div>
              </div></td>
               <td  width="159" align="left" valign="middle" style="color: #2c83b0;"><input type="text" value="<%=s10%>" name="address"/></td>
            </tr>
            <tr>
              <td align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style37" style="margin-left:20px;">
                  <div align="left"><strong>DOB</strong></div>
              </div></td>
              <td align="left" valign="middle" style="color: #2c83b0;"><input type="text" value="<%=s5%>" name="dob"/></td>
              <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style37" style="margin-left:20px;">
                  <div align="left"><strong>Pin Code </strong></div>
              </div                        ></td>
              <td align="left" valign="middle" height="51" style="color: #2c83b0;"><input type="text" value="<%=s11%>" name="code"/></td>
            </tr>
            <tr>
              <td align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style37" style="margin-left:20px;">
                  <div align="left"><strong>Gender</strong></div>
              </div></td>
              <td align="left" valign="middle" style="color: #2c83b0;"><input type="text" value="<%=s6%>" name="gender"/></td>
              <td align="left" valign="middle" height="51" style="color: #2c83b0;">&nbsp;</td>
              <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left"></td>
            </tr>
            <tr>
              <td height="51" colspan="4" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style36 style37" style="margin-left:20px;">
                <div align="center"><strong>Patient Record </strong></div>
              </div></td>
            </tr>
            <tr>
              <td height="51" colspan="4" align="left" valign="middle" style="color: #2c83b0;"><textarea name="textarea" cols="80" rows="15"><%out.println(s13);%></textarea>              </td>
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
            <label></label>
            <div align="center">
			 <input type="hidden" name="id" value="<%=i%>" />
              <input type="submit" name="Submit" value="Update Details" />
            </div>
          </form>
          <p align="right">&nbsp;</p>
          <p align="right"><a href="DO_EditPatients.jsp" class="style11 style33 style28"><strong>Back</strong></a></p>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
        </div>
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
        <div class="gadget"></div>
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
