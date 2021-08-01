<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Tweet Server Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 26px}
.style21 {font-size: 14px}
.style22 {font-size: 14}
.style23 {padding:0; margin:0; width:100%; line-height:0; clear: both;}
.style24 {
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	color: #66CCFF;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="text">
        <h1><a href="#" class="style1">A Credibility Analysis System for Assessing Information on Twitter</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><strong><a href="index.html"><strong>Home</strong></a></strong></li>
          <li><a href="UserLogin.jsp"><strong>User</strong></a></li>
          <li class="active style21"><a href="TSLogin.jsp"><strong>Tweet Server </strong></a></li>
        </ul>
      </div>
      <div class="clr style22"></div>
      <div class="slider style22">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="307" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="307" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="307" alt="" /> </a> </div>
        <div class="style23"></div>
      </div>
      <div class="clr style22"></div>
    </div>
  </div>
  <div class="content style22">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style24">Welcome To Server Login.</h2>
          <p class="infopost">&nbsp;</p>
          <form action="TSAuthen.jsp" method="post" id="leavereply">
            <ol>
              <li>
                <label for="name">Name (required)</label>
                  <input id="name" name="userid" class="text" />
              </li>
              <li> 
                  <label for="email"></label>
                
                  <label for="email">Password (required)</label>
                  <input type="password" id="pass" name="pass" class="text" />
              </li>
            </ol>
            <p></p>
            <p>
              <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
            </p>
            <p>&nbsp; </p>
          </form>
          <div class="style23"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="style23"></div>
        <div class="gadget">
          <h2 class="star">Sidebar Menu</h2>
          <div class="style23"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home Page</a> </li>
            <li><a href="UserLogin.jsp"> User</a> </li>
            <li><a href="TSLogin.jsp">Tweet Server</a>  </li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="style23"></div>
    </div>
  </div>
  <div class="fbg style22">
    <div class="fbg_resize">
      <div class="style23"></div>
    </div>
  </div>
  <div class="footer style22">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center class="style22"></div>
</body>
</html>
