<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Emergency Department</title>
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
	color: #FFCC00;
}
.style18 {color: #FF00FF}
.style21 {color: #0000FF; font-weight: bold; }
.style23 {color: #FF0000; font-size: 12px; font-weight: bold; }
-->
</style>
</head>
<body>
<!-- START PAGE SOURCE -->
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo style3">
        <p align="center" class="style11">Using Data Mining to Predict Hospital Admissions From the Emergency Department</p>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><strong>Home</strong></a></li>
          <li><a href="DO_Login.jsp"><strong>Data Holder </strong></a></li>
          <li class="active"><a href="AdminLogin.jsp"><strong>Emergency Department </strong></a></li>
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
          <h2><span class="style18">Welcome To Emergency Department Login..</span></h2>
          <p><img src="images/ca1.jpg" width="154" height="153" /></p>
          <div class="clr"></div>
		  <div>
		    <form id="form1" name="form1" method="post" action="EmergencyAuthentication1.jsp">
              <p>&nbsp;</p>
              <table width="425" border="0" align="left" cellpadding="2" cellspacing="2">
                <tr>
                  <td width="245" height="51" align="center"><span class="style23">
                    <label for="name">Name (required)</label>
                  </span> </td>
                  <td width="213"><input id="name" name="userid" class="text" /></td>
                </tr>
                <tr>
                  <td height="40" align="center"><span class="style23">Password (required)</span></td>
                  <td><input type="password" id="pass" name="pass" class="text" /></td>
                </tr>
                <tr>
                  <td height="50">&nbsp;</td>
                  <td>
                      <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
                 
                  </td>
                </tr>
              </table>
	        </form>
		    <p>&nbsp;</p>
		    <p>&nbsp;</p>
		    <p>&nbsp;</p>
		    <p>&nbsp;</p>
		    <p align="right"><a href="index.html" class="style21">Back</a></p>
	      </div>
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
<li>
  <p><a href="AdminLogin.jsp">Home</a></p>
  <p><a href="index.html">Index Page</a></p>
</li>
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
