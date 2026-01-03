<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Hospital_Register</title>
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
.style21 {color: #0000FF; font-weight: bold; }
.style41 {color: #FF00FF; font-size: 25px;}
.style42 {color: #FF0000}
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
          <li class="active"><a href="AdminLogin.jsp"><strong>Healthcare Server </strong></a></li>
          <li "><a href="UserLogin.jsp"><strong>Data Analizer </strong></a></li>
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
          <h2 class="style41">Welcome To Hospital Registration..</h2>
          <div class="clr"></div>
		  
          
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <form id="form1" name="form1" method="post" action="Hospital_Register1.jsp">
           <table width="390" border="0">
            <tr>
              <td width="181" height="44" bgcolor="#FFFF00"><span class="style42">Username</span></td>
              <td width="193"> <input id="name" name="uname" class="text" /></td>
            </tr>
            <tr>
              <td height="36" bgcolor="#FFFF00"><span class="style42">Password</span></td>
              <td> <input type="password" id="password" name="pass" class="text" /></td>
            </tr>
            <tr>
              <td height="40" bgcolor="#FFFF00"><span class="style42">Select Hospital </span></td>
              <td><select name="hname" size="1" class="text" id="s1" style="width:120px;">
                <option>--Select--</option>
                <option>St John</option>
                <option>Ochard</option>
                <option>Philominas</option>
                <option>St Mathas</option>
                <option>Jagadev</option>
                <option>Global Asia</option>
                <option>Appolo</option>
              </select></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><p>&nbsp;</p>
                <p>
                  <input type="submit" name="Submit" value="Register" />
                  <input type="reset" name="Submit2" value="Reset" />
                </p></td>
            </tr>
          </table>
		  </form>
		  <p>&nbsp;</p>
		  
		  <p>&nbsp;</p>
		  <p align="right"><a href="index.html" class="style21">Back</a></p>
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
              <p><a href="UserRegister.jsp">Home</a></p>
              <p><a href="AdminLogin.jsp">Hospital  Login</a></p>
            </li>
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
