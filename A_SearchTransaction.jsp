<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Users Search Transactions..</title>
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
.style28 {color: #FF00FF}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style57 {font-size: 15px}
.style86 {font-size: 13px}
.style29 {color: #6666FF}
.style30 {color: #0000FF}
.style87 {color: #FF0000}
.style88 {color: #000000}
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
          <h2 class="style28">Users Patient Search Transactions..</h2>
          <div class="clr"></div>
          <table width="596" border="2" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="48"  valign="middle" height="39" style="color: #2c83b0;"><div align="center" class="style5 style57 style87">Si No. </div></td>
              <td  width="136" valign="middle" height="39" style="color: #2c83b0;"><div align="center" class="style5 style57 style87">User Name</div></td>
              <td  width="163" valign="middle" height="39" style="color: #2c83b0;"><div align="center" class="style5 style57 style87">Keyword</div></td>
              <td  width="154" valign="middle" height="39" style="color: #2c83b0;"><div align="center" class="style5 style57 style87">Date</div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=1,j=0;
						try 
						{
						   	String query="select * from search order by username ASC"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{

								j=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								
					%>
            <tr>
              <td height="41" align="center"  valign="middle"><div align="center" class="style5 style37 style55 style86 style29">
                  <%out.println(i);%>
              </div></td>
              <td width="136" rowspan="1" align="center" valign="middle" ><div align="center" class="style5 style20 style37 style55 style86 style29">
                <%out.println(s1);%>
              </div></td>
              <td height="41" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style55 style86 style29">
                  <%out.println(s2);%>
              </div></td>
			   
              <td height="41" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style55 style86 style29">
                  <%out.println(s3);%>
                  </a></div></td>  
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
          <p align="center"><a href="AdminMain.jsp" class="style93 style85 style86 style88"><strong>Back</strong></a></p>
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
            <li><a href="A_SearchTransaction.jsp">Home</a></li>
            <li><a href="index.html">Log Out</a></li>
            <li></li>
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
