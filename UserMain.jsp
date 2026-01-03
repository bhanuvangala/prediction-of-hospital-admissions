<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Main Page..</title>
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
.style12 {color: #6633FF;
	font-size: 24px;
}
.style19 {color: #009900}
.style23 {font-size: 26px;
	color: #FF00FF;
}
.style24 {font-size: 28px}
.style26 {color: #FF00FF}
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
          <li><a href="AdminLogin.jsp"><strong>Healthcare Server </strong></a></li>
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
          <h2><span class="style23"><span class="style24">Welcome  User</span><span class="style12"> <span class="style19"><%=(String)application.getAttribute("uname")%> </span><span class="style26">..</span></span></span></h2>
          <div class="clr"></div>
          <p><img src="images/DataAnalizer.jpg" width="520" height="264" /></p>
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
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="UserMain.jsp">Home</a></li>
            <li><a href="UserProfile.jsp">My Profile</a></li>
            <li><a href="U_SearchHistory.jsp">My Search History</a> </li>
            <li><a href="SearchPatients.jsp">Search Patient Records</a></li>
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
