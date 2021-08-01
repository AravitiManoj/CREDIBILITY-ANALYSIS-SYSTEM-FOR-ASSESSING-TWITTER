<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Create Tweets </title>
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
.style2 {
	font-size: 26px;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
	color: #FFFFFF;
}
.style4 {
	font-size: 26px;
	font-weight: bold;
}
.style5 {
	color: #FF00FF;
	font-size: 14px;
}
.style6 {color: #FFFFFF}
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
          <li><strong><a href="index.html">Home</a></strong></li>
          <li class="active"><strong><a href="UserLogin.jsp"><strong>User</strong></a></strong></li>
          <li><a href="TSLogin.jsp"><strong>Tweet Server </strong></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="307" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="307" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="307" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style2">Create Tweets </h2>
          <p class="infopost style6">&nbsp;</p>
          <form action="TweetCreateAuthen.jsp" method="post" id="" enctype="multipart/form-data">
            <ol>
              <li>
                <label for="tweet">Tweet  Name (required)</label>
                <input id="tweet" name="tweet" class="text" />
              </li>
              <li>
                <label for="description">Tweet Description </label>
                <textarea id="description" name="description" rows="3" cols="50"></textarea>
              </li>
              <li>
                <label for="pic">Select Tweet Image (required)</label>
                <input type="file" id="pic" name="pic" class="text" />
              </li>
              <ol>
                <ol>
                  <ol>
                    <li> </li>
                    <li></li>
                    <li><br />
                        <input name="submit" type="submit" value="Create" />
                    </li>
                  </ol>
                  <p><a href="UserMain.jsp" class="style5">Back</a></p>
                </ol>
              </ol>
            </ol>
          </form>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="TweetCreate.jsp">Home </a></li>
            <li><a href="index.html">Log Out </a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
