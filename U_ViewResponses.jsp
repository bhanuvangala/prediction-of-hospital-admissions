<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Reponses..</title>
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
.style28 {font-size: 13px}
.style43 {color: #FFCC00}
.style58 {font-size: 21px; color: #66CCFF;}
.style59 {color: #FF0000}
.style60 {font-size: 14px}
.style62 {color: #FF00FF; font-weight: bold; }
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
          <h2><span class="style33 style33">Responses for Patient Details Access Requests.. </span></h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <table width="557" border="2" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="48"  valign="middle" height="39" style="color: #2c83b0;"><div align="center" class="style59 style58 style60"><strong>Si No. </strong></div></td>
              <td  width="163" valign="middle" height="39" style="color: #2c83b0;"><div align="center" class="style59 style58 style60"><strong>Request For </strong></div></td>
              <td  width="154" valign="middle" height="39" style="color: #2c83b0;"><div align="center" class="style59 style58 style60"><strong>Status</strong></div></td>
              <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style58 style59 style60"><strong>Date</strong></div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=1,j=0;
						try 
						{	String user=(String)application.getAttribute("uname");
						   	String query="select * from permission where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{

								j=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(5);
								s4=rs.getString(6);
								
					%>
            <tr>
              <td height="41" align="center"  valign="middle"><div align="center" class="style62">
                  <%out.println(i);%>
              </div></td>
              <td height="41" align="center"  valign="middle"><div align="center" class="style62">
                  <%out.println(s2);%>
              </div></td>
             
              <td height="41" align="center"  valign="middle"><div align="center" class="style62">
                  <%out.println(s3);%>
              </a></div></td>
              <td align="center"  valign="middle"><div align="center" class="style62">
                  <%out.println(s4);%>
              </div></td>
            </tr>
            <%i+=1;
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p align="center">&nbsp;</p>
          <p align="center"><a href="UserMain.jsp" class="style11 style33 style28"><strong>Back</strong></a></p>
        </div>
        <div class="article">
          <p class="spec">&nbsp;</p>
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
            <li><a href="U_ViewResponses.jsp">Home</a></li>
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
