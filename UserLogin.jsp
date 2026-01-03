<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Data Analizer Page..</title>
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
.style19 {color: #FF0000; font-weight: bold; }
.style20 {color: #FF00FF; font-weight: bold; }
.style21 {color: #0000FF; font-weight: bold; }
.style12 {color: #009900; font-weight: bold; }
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
          <h2><span class="style18">Welcome To Data Analizer Login..</span></h2>
          <p><img src="images/ca1.jpg" width="154" height="153" /></p>
          <p>&nbsp;</p>
          <div class="clr"></div>
          <form id="form1" name="form1" method="post" action="UserAuthentication.jsp">
            <table width="447" border="0" align="center" cellpadding="2" cellspacing="2">
              <tr>
                <td width="240" height="62" align="center"><div align="center" class="style12">User Name (Required)</div></td>
                <td width="261"><input id="name" name="userid" class="text" /></td>
              </tr>
              <tr>
                <td height="46" align="center"><div align="center" class="style12">Password (Required)</div></td>
                <td><input type="password" id="pass" name="pass" class="text" /></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><span class="style19">
                  <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
                  New User?</span><a href="UserRegister.jsp" class="style20"> Register </a></td>
              </tr>
            </table>
            <p align="right"><a href="index.html" class="style21">Back</a></p>
          </form>
        </div>
        <div class="article">
          <p class="spec">&nbsp;</p>
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
              <p><a href="UserLogin.jsp">Home</a></p>
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
