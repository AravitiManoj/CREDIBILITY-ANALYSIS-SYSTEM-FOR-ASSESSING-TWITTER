<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Tweet Server Main</title>
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
.style4 {
	font-size: 26px;
	font-weight: bold;
}
.style7 {font-family: Arial, Helvetica, sans-serif; color: #00CCFF; font-size: 26px;}
.style14 {	color: #FF0000;
	font-weight: bold;
	font-style: italic;
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
          <li><a href="index.html"><strong>Home</strong></a></li>
          <li><strong><a href="UserLogin.jsp"><strong>User</strong></a></strong></li>
          <li class="active"><a href="TSLogin.jsp"><strong>Tweet Server</strong></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="307" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="307" alt="" /> </a> <img src="images/slide3.jpg" width="935" height="307" alt="" />  </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <pre class="style7">Welcome To Tweet Server </pre>
          <p class="infopost">&nbsp;</p>
          <p>&nbsp;</p>
        </div>
        <div class="article">
          <h2 class="style4">Credibility, reputation, classification, user experience, feature-ranking, Twitter</h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="img"><img src="images/img2.jpg" width="177" height="213" alt="" class="fl" /></div>
          <div class="post_content">
            <p align="justify"><span class="style14">Information credibility on Twitter has been a topic of interest among researchers in the fields of both computer and social sciences, primarily because of the recent growth of this platform as a tool for information dissemination. Twitter has made it increasingly possible to offer near-real-time transfer of information in a very cost-effective manner. It is now being used as a source of news among a wide array of users around the globe. The beauty of this platform is that it delivers timely content in a tailored manner that makes it possible for users to obtain news regarding their topics of interest. Consequently, the development of techniques that can verify information obtained from Twitter has become a challenging and necessary task. In this paper, we propose a new credibility analysis system for assessing information credibility on Twitter to prevent the proliferation of fake or malicious information. The proposed system consists of four integrated components: a reputation-based component, a credibility classifier engine, a user experience component, and a feature-ranking algorithm. The components operate together in an algorithmic form to analyze and assess the credibility of Twitter tweets and users. We tested the performance of our system on two different datasets from 489,330 unique Twitter accounts. We applied 10-fold cross-validation over four machine learning algorithms. The results reveal that a significant balance between recall and precision was achieved for the tested dataset.</span></p>
            <p align="justify">&nbsp;</p>
          </div>
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
          <h2 class="star"><span>Tweet Server </span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="TSMain.jsp">Home</a></li>
            <li><a href="ViewAllUsers.jsp">View All Users</a></li>
            <li><a href="AllFriendRR.jsp">View All  Friend Request and Response</a></li>
            <li><a href="admin_AllTweets.jsp">View All Tweets</a></li>
            <li><a href="admin_AllTSearch.jsp"> View All Tweet  Search History</a></li>
            <li><a href="admin_UserTSearch.jsp">View All  User’s Tweet Search</a></li>
            <li>  <a href="admin_BurstyTopic.jsp">View High Reputation Tweet</a></li>
            <li><a href="admin_TComBasedOnTitleHash.jsp">View All Tweets Comments based on Tweet Title</a></li>
            <li><a href="admin_TBuckets.jsp">View Tweets All Topic & Comments </a></li>
			<li><a href="View_Positive and Negatives_Credits1.jsp">View Positives Tweets Credits </a></li>
			 <li><a href="View_Positive and Negatives_Credits.jsp">View Negative Tweets Credits </a></li>
            <li><a href="TopicSketch.jsp">View Tweet Feature Ranking Result </a> </li>
            <li><a href="index.html">Log Out </a></li>
          </ul>
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
