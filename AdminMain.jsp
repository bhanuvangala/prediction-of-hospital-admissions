<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Healthcare Server  Main Page..</title>
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
          <h2><span class="style23">Welcome To Healthcare Hospital  :: <%=(String)application.getAttribute("hname")%>  </span></h2>
          <div class="clr"></div>
          <p><img src="images/Hserver.jpg" width="583" height="347" /></p>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
          </form>
        </div>
        <div class="gadget">
          <h2 class="star"><span>Publisher</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="AdminMain.jsp">Home</a></li>
            <li><a href="A_AuthorizeUsers.jsp">View and Authorize Analizer</a></li>
            <li><a href="A_AuthorizeOwners.jsp">View and Authorize Data Holder </a></li>
      
			
           
            <li><a href="A_PatientsAges.jsp">View Patients Between Ages </a></li>
           
           
            <li><a href="A_SearchTransaction.jsp">Users Patient Search Transaction</a> </li>
           
			
			            <li><a href="A_All_Emergency_PatientsDeatils.jsp">View All Admited Emergency Patients Deatils</a></li>
			
			
			
			<li><a href="A_AgesRankResults.jsp">View Patients Age Limit Results </a></li>
						<li><a href="A_Admited_Results.jsp">View Patients Admited Count Results </a></li>
            <li><a href="index.html">Log Out</a></li>
            <li></li>
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
