<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Registration Page..</title>
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
.style22 {color: #00CC00}
.style40 {	color: #996600;
	font-weight: bold;
}
.style41 {color: #FF00FF; font-size: 25px;}
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
          <h2 class="style41">Welcome To User Registration..</h2>
          <div class="clr"></div>
          <form action="UserRegisterAuthentication.jsp" method="post" id="" enctype="multipart/form-data">
            <label for="name"><span class="style40">User Name (required)</span></label>
            <p class="style40">
              <input id="name" name="userid" class="text" />
            </p>
            <span class="style40">
            <label for="password">Password (required)</label>
            </span>
            <p class="style40">
              <input type="password" id="password" name="pass" class="text" />
            </p>
            <span class="style40">
            <label for="email">Email Address (required)</label>
            </span>
            <p class="style40">
              <input id="email" name="email" class="text" />
            </p>
            <span class="style40">
            <label for="mobile">Mobile Number (required)</label>
            </span>
            <p class="style40">
              <input id="mobile" name="mobile" class="text" />
            </p>
            <span class="style40">
            <label for="address">Your Address</label>
            </span>
            <p class="style40">
              <textarea id="address" name="address" rows="3" cols="50"></textarea>
            </p>
            <span class="style40">
            <label for="dob">Date of Birth (required)<br />
            </label>
            </span>
            <p class="style40">
              <input id="dob" name="dob" class="text" />
            </p>
            <span class="style40">
            <label for="gender">Select Gender (required)</label>
            </span>
            <p class="style40">
              <select id="s1" name="gender" style="width:480px;" class="text">
                <option>--Select--</option>
                <option>MALE</option>
                <option>FEMALE</option>
              </select>
            </p>
            <span class="style40">
            <label for="pincode"></label>
            <label for="location"></label>
            </span>
            <p class="style22"> <span class="style40">
              <label for="pic">Select Profile Picture (required)</label>
              </span>
                <input type="file" id="pic" name="pic" class="text" />
            </p>
            <p><br />
                <input name="submit" type="submit" value="REGISTER" />
            </p>
          </form>
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
              <p><a href="UserLogin.jsp">User Login</a></p>
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
