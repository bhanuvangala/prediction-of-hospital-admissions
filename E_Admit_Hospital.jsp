<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admit_Hospital</title>
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
.style26 {color: #FF00FF}
.style1 {font-size: 25px}
.style33 {color: #0000FF}
.style43 {color: #FFCC00}
.style44 {
	color: #FF0000;
	font-weight: bold;
}
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
          <li ><a href="DO_Login.jsp"><strong>Data Holder </strong></a></li>
          <li class="active"><a href="AdminLogin.jsp"><strong>Emergency Sector </strong></a></li>
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
          <h2><span class="style33"><span class="style1"><span class="style26">Admited Patients Successfully..</span></span><span class="style26"></span></span></h2>
          <div class="clr"></div>
          <p>
		    <%
		
		
		String pid=request.getParameter("id");
	    String pname=request.getParameter("pname");
		
		

		%>
		  </p>
		  <form id="form1" name="form1" method="post" action="E_Admit_Hospital1.jsp">
            <table width="336" border="0" align="center">
              <tr>
                <td width="145"><span class="style44">Pid</span></td>
                <td width="175"><input type="text" name="pid" value="<%=pid%>"/></td>
              </tr>
              <tr>
                <td height="44"><span class="style44">Pname</span></td>
                <td><label>
                  <input type="text" name="pname"  value="<%=pname%>"/>
                </label></td>
              </tr>
              <tr>
                <td height="44"><span class="style44">Select Hospital </span></td>
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
                <td height="39">&nbsp;</td>
                <td><input type="submit" name="Submit" value="Confirm Admin" /></td>
              </tr>
            </table>
          </form>
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
            <li><a href="E_Emergency_Main.jsp">Home</a></li>
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
