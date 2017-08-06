<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page contentType="text/html"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "
http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	   <title>CC图书</title>
	</head>
	<style>
		body {
			padding:0;  
            border:0;   
            margin:0;
		}
		*{margin: 0;padding: 0}
		.main-index {
			width: 100%;
			height: 1990px;
			position:relative;
			border: 1px solid red;
			font-family: "微软雅黑";
		}
		.main-ttitle {
			width: 100%;
			margin-top: 0px;
            background-color: #f9f9f9;
            height: 34px;
		}
		.main-ttitle-place {
			float: left;
			margin-left: 50px;
			width: 120px;
			position: relative;
		}
		.main-ttitle-place span {
			font-size: small;
			
		}
		.main-ttitle-ul {
			float: right;
			position: relative;
			margin-top: 5px;
			margin-right: 10px;
		}
		
		.main-ttitle-ul li {
			 float: left;
			 margin-left: 10px;
			 list-style: none;
             height: 22px;
             font-size: small;
		}
		.main-ttitle-ul li a { 
			text-decoration: none;
			font-weight: lighter; 
			color: #000000;
		}
		.main-ttitle-ul li a:hover {
			color:red;
		}
		#index-login {
			color: red;
		}
		.main-ttitle-ul li span {
			color: #A9A9A9;
		}
		#index-welcome {
			color: #000000;
		}
		.main-search {
			height: 100px;
			width: 99.8%;
		}
		.search-logo {
			float: left;
			width: 350px;
			height: 98px;
		}
		.search-logo img {
			margin: 0 auto;
			display: block;
		}
		.search-ser {
			float: left;
			width: 650px;
			margin-left: 5px;
			margin-top: 0px;
			position: relative;
			height: 95px;
		}
		.search-input {
			margin-top: 13px;
			border: 3px solid red;
			width: 640px;
			height: 45px;
		}
		.search-input input {
			width: 460px;
			height: 30px;
			border: 0;
			float: left;
			margin-top: 5px;
			margin-left: 5px;
			outline: none;
		}
		.search-car {
			float: left;
			width: 270px;
			height: 50px;
			margin-top: 15px;
			margin-left: 20px;
		}
		.search-hot {
			float: left;
			margin-left: 0px;
			width: 355px;
			margin-top: -5px;
			
		}
		.search-hot li{
		    float:left;
		    list-style-position: outside;
		    list-style: none; 
		   margin-left: 10px;
		}
		.search-hot li a {
			text-decoration: none;
			font-size: small;
			color: #808080;
		}
		.search-hot li a:hover {
			color: red;
			line-height: 20px;
		}
		#hot-first {
			margin-left: 0px;
		}
		#search-array {
			float: left;
			width: 111px;
			height: 38px;
		}
		.search-select {
			width: 118px;
			height: 45px;
			color: #808080;
			border: none;
			padding: 0 3%;
			outline: none;
			background-color: #F2F2F2;
			font-size: large;
		}
		.search-select option {
			color: black;
			background-color:white;
			
			font-size: small;
		}
		.search-button {
			float: left;
			margin-left: 9px;
			width: 50px;
		}
		.search-button img {
			width: 57px;
		}
		.car-button {
			float: left;
			border: 2px solid #dcdcdc;
			width: 112px;
			height: 39px;
			margin-left: 20px;
			margin-top: 5px;
			background-color: red;
			border-right-style: none;
		}
		.car-button img {
			float: left;
			margin-left: 10px;
			margin-top: 5px;
		}
		.car-button:hover {
			background-color: #DCDCDC;
			
		}
		.car-button span {
			float: left;
			margin-left: 10px;
			margin-top: 7px;
			color:white;
		}
		.order-button {
			float: left;
			border: 2px solid #dcdcdc;
			width: 112px;
			height: 39px;
			margin-top: 5px;
			background-color: #f6f6f6;
		}
		.order-button span {
			display: block;
			margin-left: 14px;
			margin-top: 9px;
			color: #646464;
		}
		.order-button span:hover {
			color: red;
		}
		.main-items {
			margin-top: 10px;
			border-top-width: 4px;
			height: 500px;
		}
		.main-itemlist {
			height: 31px;
			background-color: #f5f5f5;
		}
		.main-itemlist ul li {
			float: left;
			margin-left: 10px;
			list-style: none;
			padding: 0 10px;
            white-space: nowrap;
		}
		.main-itemlist ul li a {
			text-decoration: none;
			color: #646464;
			font-size: small;
		}
		.main-itemlist ul li a:hover {
			text-decoration: underline;
			color: red;
		}
		.items-img img{
			margin: 0 auto;
			display: block;
			
		}
		.main-leftitem {
			border: 1px solid #487a6f;
			border-radius: 3 %;
			width: 190px;
			height: 1030px;
			position: relative;
			left: 50px;
			top:95px;
		}
		.main-item-ttile {
			width: 200px;
			height: 40px;
            background-color: #487a6f;
		}
		.main-item-ttile span {
			position: relative;
			top: 5px;
			margin-left: 60px;
			font-size: large;
			color: #F3F3F3;
			
			
		}
		.main-bookshow {
			width:750px;
			height:720px;
			position:relative;
			left:270px;
			bottom: 1400px;
			
		}
      .fl{float: left;}
      .fr{float: right;}
      .cb{clear: both;}
      ul{list-style: none;}
      .da{width: 750px;height: 315px;overflow: hidden;position: relative;margin: -390px auto;left: -30px;top: 20px;}
      .da img{float: left;}
      .box{width: 5110px}
      .btn{width: 100%;height: 100px;position: absolute;top: 40%;display: none;}
      .da .btn-l,.da .btn-r{background-color: rgba(249,38,114,0.5);width: 50px;height: 100px;font-size: 82px;color: #ccc;border-radius: 10px;}	
      .list-li{position: absolute;bottom: 10px;left: 20%}
      .list-li li{float: left;width: 50px;height: 50px;background-color: #F9263E;line-height: 50px;text-align: center;border-radius: 50%;margin-left: 10px;color: #fff;font-size: 22px;}
      /* 	点缀 */
      .dianzui{width: 100%;height: 4px;background-color: #ccc;position: absolute;bottom: 0px}
      .dian{width: 1px;height:4px;background-color: red }
      /* 遮罩层 */
      .fugai{position: absolute;left: 0;top: 0;height: 100%;width: 750px;
	     }
      .fugai1,.fugai2,.fugai3{width: 243px;height: 750px;float: left;z-index: 999;overflow: hidden;}
     .btn-con-l,.btn-con-r{width: 150px;height: 100px;}
     .btn-con-l img,.btn-con-r img{width: 100%;height: 100%}
      .container{
     float:left;
     position: relative;
    margin-left: 2%;
    /*透视的场景*/
    -webkit-perspective:700;
    }
    .film{
    width:150px;
    height:175px;
    margin-top:5px;
   /*设置3D场景-webkit-backface-visibility:hidden;*/
    -webkit-transform-style:preserve-3d;
    transition:all 1s ease;
    }
    .face{
    width:150px;
    height:170px;
    position:absolute;
    -webkit-backface-visibility:hidden;
    }
    .container:hover .film{
    -webkit-transform:rotateY(180deg);
    }
    .cont-item {
     text-align: center;
    }
    .car-style {
      height:25px;
     background-color: red;
     text-align:center;
     
    }
    .car-style a {
      color:white;
      font-family:"微软雅黑";
     text-decoration: none;
    }
    .back{
    background: black;
    color:#fff;
    padding:5px;
    height:265px;
    margin-left:-10px;
    width:155px;
    background:linear-gradient(rgb(41, 90, 153),rgb(73, 36, 36));
    -webkit-transform:rotateY(180deg);
    }
    .back p{
    font-family: "微软雅黑";
    font-size: small;
    }
    .description{
    font-size:small;
    font-weight: bold;
    font-family: "微软雅黑";
    }
    .divbook{
	width: 730px;
   overflow: hidden;
   height: 640px;
   position: relative;
    float:left;
    border:1px solid #c8c8c8;
    margin-left: 10px;
    margin-top: 25px;
}
.div_ul{
	margin-top:2px;
	width: 730px;
	height: 890px;
}
.divbook li{
	width:160px;
	height:270px;
	float:left;
	margin-left: 12px;
	margin-top:5px;
	list-style-type: none;
}
.divfu{
	width:190px;
	height:1006px;
	border:1px solid #c8c8c8;
	margin-top: 25px;
	float: left;
	margin-left: 25px;
}
.divfenlei{
	height: 35px;
   width: 190px;
   text-align: center;
   font-size: 18px;
  background: #487a6f;
  border-radius: 4px 4px 0 0;
  line-height: 34px;
  color: #fff;
  
  font-family: "Microsoft Yahei";
}
.primary_dl1{
	width: 188px;

border-width: 0 1px;
width: 170px;
border-bottom: 1px dotted #849555;
margin-left: 9px;
position: relative;
overflow: hidden;
padding-top: 3px;
padding-bottom: 2px;
}
.primary_dl1 a{
	color: #487a6f;
   text-decoration: none;
   font-size: medium;
   font-weight:bold;
   line-height: 24px;
}
.primary_dl1 a:hover
{
	color: orange;
}
.primary_dl
{
	width: 170px;
border-bottom: 1px dotted #849555;
margin-left: 9px;
margin-top: 18px;
position: relative;
overflow: hidden;
padding-top: 3px;
padding-bottom: 2px;
}
.primary_dl span{
	color: #487a6f;
font-size: 14px;
height: 24px;
line-height: 24px;
font-weight: bold;
display: block;
}
.dd_level{
	color: #666;
  
   margin-right:1px;
}
.dd_level a{
	text-decoration: none;
	font-size: small;
	font-weight:bold;
	color: black;
	font-family: "微软雅黑";
}
.dd_level a:HOVER {
	text-decoration: underline;
	color: orange;
}
.main-newbook {
	border:1px solid #c8c8c8;
	width: 320px;
	height: 310px;
	float: right;
	position: relative;
	bottom:2440px;
	right:0px;
}
.divhuan1{
	float:left;
	width: 250px;
    height: 310px;
}
.divfont{
	font-size: medium;
	color: black;
	font-weight: bold;
	margin-top: 1px;
}
.div_dl1{
	width: 250px;
	height: 60px;
}
.div_dl1 a{
	float: left;
	margin-left: 5px;
	color: black;
	text-decoration: none;
}
.div_dl1 a:HOVER {
	color: orange;
}
.divxin{
	margin-top: 5px;
	width: 122px;
}
.divxin a{
	font-size: small;
	color: black;
	font-weight: bold;
	text-decoration: none;
	margin-left: 5px;
}
.divxin a:HOVER  {
	color: orange;
	text-decoration: underline;
}
.main-bookline {
	border:1px solid #c8c8c8;
	width: 320px;
	height: 675px;
	float: right;
	position: relative;
	bottom:2083px;
	right: -320px;
	
}
.con_title
{
	height: 40px;
   line-height: 40px;
   padding-left: 34px;
   font-size: 16px;
  font-weight: bold;
  background: url(images/tu15.png) 5px 4px no-repeat;
  font-family: "Microsoft Yahei";
   position: relative;
   overflow: hidden;
   border:1px solid #c8c8c8;
   border-left-style: none;
   border-right-style: none;
   border-top-style: none;
}
.con_title a{
	
	color:black;
	text-decoration: none;
}
.con_title a:HOVER {
	color:orange;
	text-decoration: underline;
}

.head{
	
width: 300px;
height: 634px;

}
.tab_aa
{
	height: 25px;
}
.tab_aa li{
	
	float: left;
    width: 52px;
    margin-left:5px;
}

.tab_aa a{
	color: black;
	text-decoration: none;
	font-size: medium;
	font-weight: bold;
}
.tab_aa a:HOVER {
	color: orange;
	text-decoration: underline;
}
.divol li
{
	margin-top: 10px;
	margin-left: 28px;
}
.divol a{
	text-decoration: none;
	color: #487a6f;
}
.divol a:HOVER {
	text-decoration: underline;
	color: orange;
}
.main-buttomitem {
	border: 1px solid #c8c8c8;
	position: relative;
	bottom: 1390px;
	border-bottom-style: none;
	border-left-style: none;
	border-right-style: none;
}

.login-list ul {
	height: 30px;
	width: 870px;
	margin: 0 auto;
}

.login-list ul li {
	float: left;
	list-style: none;
	font-size: small;
}
.cont-name {
 font-size: small;
 font-family:"微软雅黑";
}
.cont-author {
 font-size: small;
 font-family:"微软雅黑";
 color:#aaa;
}
.cont-price {
font-size: small;
 font-family:"微软雅黑";
 color:red;
}
	</style>
	<body>
	  <div class="main-index">
	    <div class="main-ttitle">
	        <ul class="main-ttitle-ul">
	        <li><span id="index-welcome">欢迎<span style="color:red;" id="userSpan">${user}</span>光临CC，请</span><a href="login" id="index-login">登录</a>&nbsp;<a href="register">成为会员</a>&nbsp;<a href="manlogin">管理员</a></li>
	       	<li><span>|</span></li>
	       	<li><a href="">原创正文</a></li>
	       	<li><span>|</span></li>
	       	<li><a href="">手机 CC</a></li>
	       	<li><span>|</span></li>
	       	<li><a href="">我的 CC</a></li>
	       	<li><span>|</span></li>
	       	<li><a href="">企业采购</a></li>
	       	<li><span>|</span></li>
	       	<li><a href="">客户服务</a></li>
	       </ul>
	       <div class="main-ttitle-place">
	      	<span>送至：北京</span>
	       </div>
	    </div>
	    <div class="main-search">
	    	 <div class="search-logo">
	    	 	<img src="images/logo.gif" />
	    	 </div>
	    	 <div class="search-ser">
	    	 	<div class="search-input">
	    	 		<input/>
	    	 		<div id="search-array">
	    	 			<select name="全部分类" class="search-select">
	    	 				<option>全部分类</option>
	    	 				<option>尾品汇</option>
	    	 				<option>图书</option>
	    	 				<option>科技</option>
	    	 				<option>农业</option>
	    	 				<option>林业</option>
	    	 				<option>IT</option>
	    	 			</select>
	    	 		</div>
	    	 		<div class="search-button">
	    	 			<img src="images/head_sprite.png" />
	    	 		</div>
	    	 		<ul class="search-hot">
	    	 			<li id="hot-first"><a href="#">热搜</a>:</li>
	    	 			<li><a href="#">英语四级</a></li>
	    	 			<li><a href="#">英语六级</a></li>
	    	 			<li><a href="#">日语二级</a></li>
	    	 			<li><a href="#">java</a></li>
	    	 			<li><a href="#">jQuery</a></li>
	    	 		</ul>
	    	 	</div>
	    	 </div>
	    	 <div class="search-car">
	    	 	<a href="mycar?userName=${sessionScope.user}">
	    	 		<div class="car-button" id="car-button" onfocus="BackChange()">
	    	 			<img class="car-img" src="images/icon_cart1.png"/>
	    	 			<span>购物车</span>
	    	 		</div>
	    	 		<div class="order-button">
	    	 			<span>我的订单</span>
	    	 		</div>
	    	 	</a>
	    	 </div>
	    </div>
	    
	    <div class="main-items">
	    	<div class="main-itemlist">
	    		<ul class="main-ul">
	    			<li><a name="nav2" target="_blank" href="#">图书排行榜</a></li>
	    			<li><a name="nav2" target="_blank" href="#">童书</a></li>
                    <li><a name="nav2" target="_blank" href="#">教辅</a></li>
                    <li><a name="nav2" target="_blank" href="#">小说</a></li>
                    <li><a name="nav2" target="_blank" href="#">管理</a></li>
                    <li><a name="nav2" target="_blank" href="#">文学</a></li>
                    <li><a name="nav2" target="_blank" href="#">成功励志</a></li>
                    <li><a name="nav2" target="_blank" href="#">青春文学</a></li>
                    <li><a name="nav2" target="_blank" href="#">历史</a></li>
                    <li><a name="nav2" target="_blank" href="#">哲学宗教</a></li>
                    <li><a name="nav2" target="_blank" href="#">传记</a></li>
                    <li><a name="nav2" target="_blank" href="#">保健养生</a></li>
                    <li><a name="nav2" target="_blank" href="#">亲子家教</a></li>
                    <li><a name="nav2" target="_blank" href="#">新书预售</a></li>
                    <li><a name="nav2" target="_blank" href="#">名家书斋</a></li>
                    <li><a name="nav2" target="_blank" href="#">电子书</a></li>
                    <li><a name="nav2" target="_blank" href="#">当当原创</a></li>
	    		</ul>
	    	</div>
	        <div class="items-img">
	        	<img src="images/1200x65_wzh_201703141.jpg"/>
	        </div>
	    </div>
	    <div class="da">
	<div class="fugai">
		<div class="fugai1"></div>
		<div class="fugai2"></div>
		<div class="fugai3"></div>
		<div class="cb"></div>
	</div>
	<div class="dianzui">
	<div class="dian"></div>
	</div>
	<div class="box">
		<img src="images/da1.jpg">
		<img src="images/da2.jpg">
		<img src="images/da3.jpg">
		<img src="images/da4.jpg">
		<img src="images/da5.jpg">
		<img src="images/da6.jpg">
		<img src="images/da1.jpg">			
	</div>
	<div class="btn">
		<div class="btn-l fl"><</div>
		<div class="btn-con-l fl"></div>
		
		<div class="btn-r fr">></div>
		<div class="btn-con-r fr">r</div>
		

	</div>

	<ul class="list-li">
		<li>1</li>
		<li>2</li>
		<li>3</li>
		<li>4</li>
		<li>5</li>
		<li>6</li>
	</ul>
</div>
<div class="main-leftitem">
   <div class="divfenlei">
   <span>图书分类</span>
   </div>
   <dl class="primary_dl1">
   <a href="#" target="_blank">电子书 </a>
   </dl>
   <dl class="primary_dl1">
   <a  href="#" target="_blank" > 小说 </a>
   </dl>
   <dl class="primary_dl">
   <span> 教育 </span>
   <dl class="dd_level">
   <a  href="#" target="_blank" title="文学">教材</a>
   <a  href="#" target="_blank" title="传记" >外语</a>
   <a  href="#" target="_blank" title="艺术" >考试</a>
   <a  href="#" target="_blank" title="摄影">工具书</a>
   </dl>
   </dl>
   <dl class="primary_dl">
   <span> 文艺 </span>
   <dl class="dd_level">
   <a  href="#" target="_blank" title="文学">文学</a>
   <a  href="#" target="_blank" title="传记" >传记</a>
   <a  href="#" target="_blank" title="艺术" >艺术</a>
   <a  href="#" target="_blank" title="摄影">摄影</a>
   </dl>
   </dl>
   <dl class="primary_dl">
   <span> 青春 </span>
   <dl class="dd_level">
   <a  href="#" target="_blank" title="青春文学">青春文学</a>
   <a  href="#" target="_blank" title="动漫" >动漫</a>
   <a  href="#" target="_blank" title="幽默" >幽默</a>
   
   </dl>
   </dl>
   <dl class="primary_dl">
   <span> 童书 </span>
   <dl class="dd_level">
   <a  href="#" target="_blank" >科普/百科</a>
   <a  href="#" target="_blank" >图画书</a>
   <a  href="#" target="_blank" >英语</a>
   </dl>
   </dl>
   <dl class="primary_dl1">
   <a  href="#" target="_blank" > 励志/成功 </a>
   </dl>
   <dl class="primary_dl">
   <span> 人文社科 </span>
   <dl class="dd_level">
   <a  href="#" target="_blank" >历史</a>
   <a  href="#" target="_blank" >古籍</a>
   <a  href="#" target="_blank" >文化</a>
    <a  href="#" target="_blank" >政治/军事</a>
   <a  href="#" target="_blank" >法律</a>
   <a  href="#" target="_blank" >心理学</a>
   </dl>
   </dl>
   
    <dl class="primary_dl">
   <span>生活 </span>
   <dl class="dd_level">
   <a  href="#" target="_blank" >亲子/家教</a>
   <a  href="#" target="_blank" >保健</a>
   <a  href="#" target="_blank" >运动</a>
   <a  href="#" target="_blank" >手工/DIY</a>
   <a  href="#" target="_blank" >美食</a>
   <a  href="#" target="_blank" >旅游</a>
   <a  href="#" target="_blank" >休闲</a>
   </dl>
   </dl>
   <dl class="primary_dl">
   <span> 经管 </span>
   <dl class="dd_level">
   <a  href="#" target="_blank" >管理</a>
   <a  href="#" target="_blank" >投资理财</a>
   <a  href="#" target="_blank" >经济</a>
   </dl>
   </dl>
   
   <dl class="primary_dl">
   <span> 科技 </span>
   <dl class="dd_level">
   <a  href="#" target="_blank" >科普</a>
   <a  href="#" target="_blank" >建筑</a>
   <a  href="#" target="_blank" >医学</a>
   <a  href="#" target="_blank" >工业</a>
   <a  href="#" target="_blank" >农林</a>
   <a  href="#" target="_blank" >计算机</a>
   </dl>
   </dl>
   
   <dl class="primary_dl">
   <span> 教育 </span>
   <dl class="dd_level">
   <a  href="#" target="_blank" >教材</a>
   <a  href="#" target="_blank" >外语</a>
   <a  href="#" target="_blank" >考试</a>
   </dl>
   </dl>
   <dl class="primary_dl1">
   <a  href="#" target="_blank" > 工具书 </a>
   </dl>
   
   <dl class="primary_dl1">
   <a  href="#" target="_blank" > 文艺礼品/工艺品 </a>
   </dl>
   <dl class="primary_dl1">
   <a  href="#" target="_blank" > 英文原版书/港台图书 </a>
   </dl>
   </div>
</div>
<div class="main-bookshow">
	<div class="main-bookshow-title">
		<img src="images/new_book.png"/>
	</div>
	<div class="divbook">
	<form:form modelAttribute="BookForm" action="addOrder" method="get">
	
    <ul class="div_ul">
    
    
    <c:forEach items="${books}" var="book">
    
    
    <li>
     <div class="container">
       <div class="film">
        <div class="face font">
        <img src="images/${book.isbn}.jpg"></img>
        </div >
        <div class="face back">
         <p><span class="description">书名：<input type="hidden" name="bookName" value="${book.isbn}"/>${book.name}</span></p>
         <p><span class="description">作者：<input type="hidden"  name="bookAuthor" value="${book.author}"/>${book.author}</span></p>
         <p><span class="description">评论：<input type="hidden" name="bookComment" value="sdfs"/>${book.comment}</span></p>  
        </div>
       </div>
    </div>    
    <div class="cont-item">
           <p class="cont-name" ><span>${book.name}</span></p>
           <p class="cont-author"><span>${book.author}</span></p>
           <p class="cont-price"><span>¥${book.price}</span></p>
           <a href="javascript:void(0)" style="text-decoration: none;" onclick="addItem(${book.isbn})">
           <div class="car-style" id="addCar"><span style="color:white;font-size:small;">加入购物车</span></div>
           </a>
     </div>
    </li>
    </c:forEach>
     </ul>
     
     </form:form>
   </div>
</div>
<div class="main-newbook">
   <div class="divhuan1">
   <span class="divfont">最新动态 </span>
   <dl class="div_dl1">
   <a  href="#" target="_blank" >纪念马尔克斯诞辰88周年</a>
   <a  href="#" target="_blank" >悦享频道，2015年全新改版</a>
   <a  href="#" target="_blank" >童书开学分级阅读满99减29</a>
   </dl>
   
   <div class="divxin">
   	<span class="divfont">新书预售 </span>
   	<img src="images/tu4.jpg"></img>
   	<a  href="#" target="_blank" >我们都一样，年轻又彷徨</a>
   </div>
   </div>
</div>

<div class="main-bookline">
	<div class="con_title" name="m403757_pid0_t9121">
   <a nname="book-65152-9168_1-473546_1" href="http://bang.dangdang.com/books/newhotsales/01.00.00.00.00.00-recent7-0-0-1-1" target="_blank" title="新书热卖榜" class="hot_link">
        新书热卖榜  </a>
   </div>
    <div class="head">
    <ul class="tab_aa">
     <li><a href="http://bang.dangdang.com/books/newhotsales/01.00.00.00.00.00-recent7-0-0-1-1" target="_blank"><span>总榜</span></a></li>
     <li><a href="http://bang.dangdang.com/books/newhotsales/01.41.00.00.00.00-recent7-0-0-1-1" target="_blank"><span>童书</span></a></li>
     <li><a href="http://bang.dangdang.com/books/newhotsales/01.03.00.00.00.00-recent7-0-0-1-1" target="_blank"><span>小说</span></a></li>
     <li><a href="http://bang.dangdang.com/books/newhotsales/01.05.00.00.00.00-recent7-0-0-1-1" target="_blank"><span>文学</span></a></li>
     <li><a href="http://bang.dangdang.com/books/newhotsales/01.18.00.00.00.00-recent7-0-0-1-1" target="_blank"><span>保健</span></a></li>                                                                                   
     </ul>
     <ol class="divol">
    <li><a title="星火英语六级真题 6级真题详解+标准预测（2015年6月黑旋风试卷）·10套真题+5套预测+20篇翻译+25篇作文+2000词卡片（附MP3盘1张）" href="http://product.dangdang.com/23622671.html?ref=book-65152-9168_1-473484-0" target="_blank" >星火英语六级真题&nbsp;6级真题详解</a></li>
    <li><a title="从0到1：开启商业与未来的秘密 【美】彼得 蒂尔 Peter Thiel" href="http://product.dangdang.com/23631999.html?ref=book-65152-9168_1-473484-1" target="_blank">从0到1：开启商业与未来的秘密</a></li>
    <li><a title="星火英语四级真题 4级全真试卷（2015年6月黑旋风试卷）·12套真题+10套听力+20篇翻译+20篇作文+2000高频词（附MP3盘1张）" href="http://product.dangdang.com/23622678.html?ref=book-65152-9168_1-473484-2" target="_blank">星火英语四级真题&nbsp;4级全真试卷</a></li>
    <li><a title="2015初级会计职称考试教材辅导教材初级会计实务" href="http://product.dangdang.com/23643224.html?ref=book-65152-9168_1-473484-3" target="_blank">2015初级会计职称考试教材辅导</a></li>
    <li><a title="2015初级会计职称考试教材辅导教材经济法基础" href="http://product.dangdang.com/23646506.html?ref=book-65152-9168_1-473484-4" target="_blank">2015初级会计职称考试教材辅导</a></li>
    <li><a title="星火英语六级真题 6级全真试题+标准模拟（2015年6月黑旋风试卷）·12套真题+5套模拟+15套听力+30篇作文+2000词卡片（附MP3盘1张）" href="http://product.dangdang.com/23622673.html?ref=book-65152-9168_1-473484-5" target="_blank">星火英语六级真题&nbsp;6级全真试题</a></li>
    <li><a title="2015春黄冈小状元同步作文三年级下" href="http://product.dangdang.com/23626057.html?ref=book-65152-9168_1-473484-6" target="_blank">2015春黄冈小状元同步作文三年</a></li>
    <li><a title="星火英语四级真题 4级全真试题+标准模拟（2015年6月黑旋风试卷）·12套真题+5套模拟+15套听力+30篇作文+2000词卡片(附MP3盘1张）" href="http://product.dangdang.com/23622674.html?ref=book-65152-9168_1-473484-7" target="_blank">星火英语四级真题&nbsp;4级全真试题</a></li>
    <li><a title="我们生活在巨大的差距里（余华十年首部杂文集）" href="http://product.dangdang.com/23636135.html?ref=book-65152-9168_1-473484-8" target="_blank">我们生活在巨大的差距里（余华</a></li>
    <li><a title="鬼谷子传奇（套装全2册）" href="http://product.dangdang.com/23655193.html?ref=book-65152-9168_1-473484-9" target="_blank">鬼谷子传奇（套装全2册）</a></li>
    <li><a title="有故事的汉字（套装全3册）" href="http://product.dangdang.com/23629505.html?ref=book-65152-9168_1-473498-0" target="_blank">有故事的汉字（套装全3册）</a></li>
    <li><a title="花婆婆" href="http://product.dangdang.com/23633727.html?ref=book-65152-9168_1-473498-1" target="_blank">花婆婆</a></li>
    <li><a title="哈考特儿童英语分级读物 入门级（全21册+1张CD）（适合3-7岁儿童使用）" href="http://product.dangdang.com/23658886.html?ref=book-65152-9168_1-473498-2" target="_blank">哈考特儿童英语分级读物&nbsp;入门</a></li>
    <li><a title="酷虫学校.8，错综复杂的虫社团" href="http://product.dangdang.com/23637946.html?ref=book-65152-9168_1-473498-3" target="_blank">酷虫学校.8，错综复杂的虫社团</a></li>
    <li><a title="狼图腾·小狼小狼【精装纪念版】" href="http://product.dangdang.com/23642658.html?ref=book-65152-9168_1-473498-4" target="_blank">狼图腾·小狼小狼【精装纪念版</a></li>
    <li><a title="迪士尼动画美绘典藏书系—超能陆战队" href="http://product.dangdang.com/23648712.html?ref=book-65152-9168_1-473498-5" target="_blank">迪士尼动画美绘典藏书系—超能</a></li>
    <li><a title="《婴儿画报2014年第四季度合订本》" href="http://product.dangdang.com/23592743.html?ref=book-65152-9168_1-473498-6" target="_blank">《婴儿画报2014年第四季度合订</a></li>
    <li><a title="英国脑力阶梯训练（全三册）（英国著名儿童智力开发出版社Usborne精心打造/300多个全新脑力游戏/3—8岁孩子最佳益智读物/循序渐进，与世界的小朋友同步做游戏！）" href="http://product.dangdang.com/23643320.html?ref=book-65152-9168_1-473498-7" target="_blank">英国脑力阶梯训练（全三册）（</a></li>
    <li><a title="特种部队少年生存小说系列（在无援的险境，做自己的英雄！英国特种部队指挥官写给孩子的生存秘籍！内附数百种自然、社会环境中的生存技巧，所有技巧均源自世界十大特种部队之一的训练体系及作者真实的作战经验！）" href="http://product.dangdang.com/23639231.html?ref=book-65152-9168_1-473498-8" target="_blank">特种部队少年生存小说系列（在</a></li>
</ol>                                                         
    </div>
</div>
<div class="main-buttomitem">
	<div class="login-list">
				<ul>
					<li>公司简介</li>
					<li>|</li>
					<li>Investor Relations</li>
					<li>|</li>
					<li>诚聘英才</li>
					<li>|</li>
					<li>手机CC</li>
					<li>|</li>
					<li>网站联盟</li>
					<li>|</li>
					<li>机构销售</li>
					<li>|</li>
					<li>官方Blog</li>
				</ul>
			</div>
			<div class="login-on-img">
				<img src="images/brand.png" style="margin-left: 240px"/>
				<img src="images/validate.gif" style="margin-left: 10px ;"/>
				<img src="images/knetSealLogo.png" style="margin-left: 10px ;"/>
			</div>
</div>
    
</div>

<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<script type="text/javascript">
var i=0;
var stop;
/*	每隔2秒运行一次轮播*/
stop=setInterval(function(){
	i++;
	if(i>6){
		i=1;
	}
	xiaoguo2(i);
	xiaoguo(i);
},4000)
/*	动作函数*/
function xiaoguo2(n){
/*		块一*/
	$('.fugai1')
	.css({"background-images":"url(images/da"+n+".jpg)",'background-repeat':'no-repeat','display':'block',"backgroundPosition-x":0+'px'})
	.animate({"backgroundPosition-x":-750+'px'},3000)
	.css({'display':'none'})
	//块二
	$('.fugai2')
	.css({"background-images":"url(images/da"+n+".jpg)",'background-repeat':'no-repeat','display':'block',"backgroundPosition-x":-200+'px'})
	.animate({"backgroundPosition-x":-750*2+'px'},3000)
	.animate({'display':'none'})
	//块三
	$('.fugai3')
	.css({"background-images":"url(images/da"+n+".jpg)",'background-repeat':'no-repeat','display':'block',"backgroundPosition-x":0+'px'})
	.animate({"backgroundPosition-x":-750*3+'px'},3000)
	.animate({'display':'none'})
}
$('.list-li>li').eq(0).css({'background-color':'orange'})
function xiaoguo(n){
	var b=n-1;	
	$('.list-li>li').css({'background-color':'#F9263E'})	
	$('.list-li>li').eq(b).css({'background-color':'orange'})
	$('.dian').animate({'width':750+'px'},2000)
	$('.dian').animate({'width':0+'px'},100)
	$('.box').animate({'margin-left':-n*750+'px'},2000,function(){
		if(n==6){
			$('.box').css({'margin-left':0+'px'})
		}
	})
}
/*	左右按钮*/
function huan(n){
	var j=i;
	i=i+n;
	
	if(i>6){
		i=1;
	}
	if(i<0){
		i=5;
	}
	xiaoguo(i);
}
//左箭头
$('.btn-l').click(function(){
clearInterval(stop);
	stop=null;			
		huan(-1);	
		if(i==0){
			$('.btn-con-l').html('<img src="images/da'+parseInt(6)+'.jpg">')
		}else{
			$('.btn-con-l').html('<img src="images/da'+parseInt(i)+'.jpg">')
		}
		$('.box').stop(true,true);
		$('.dian').stop(true,true);
		
});
//右箭头
$('.btn-r').click(function(){
	clearInterval(stop);
	stop=null;
		huan(1);			
		if(i==5){
			$('.btn-con-r').html('<img src="images/da'+parseInt(1)+'.jpg">')
		}else if (i==6) {
			$('.btn-con-r').html('<img src="images/da'+parseInt(2)+'.jpg">')
		}else{
			$('.btn-con-r').html('<img src="images/da'+parseInt(i+2)+'.jpg">')
		}
		$('.box').stop(true,true);
		$('.dian').stop(true,true);
});
//$('.btn-l').click(function(){huan(-1);});
//$('.btn-r').click(function(){huan(1);});

/*	鼠标放上大块*/
$('.da').mouseover(function(){
	clearInterval(stop);
	stop=null;
	$('.btn').show();

});
/*	鼠标离开大块*/
$('.da').mouseout(function(){
	if(stop==null){
		stop=setInterval(function(){
			i++;
			if(i>6){
				i=1;
			}
			xiaoguo(i);
			xiaoguo2(i);
		},4000)			
	}
	$('.btn').hide();
	$('.btn-con-l').text('');
	$('.btn-con-r').text('');
});
/*按钮小标题*/
$('.list-li>li').mouseover(function(){		
	clearInterval(stop);
	stop=null;
	i= Number($(this).text());
	xiaoguo($(this).text())
	$('.box').stop(true,true);
	$('.dian').stop(true,true);
});
 $("#addCar").click(function(){
	 $("#car-button").attr("background-color","green");
 });
 function addItem(isbn) {
	 var user='${user}';
	 if(user.length==0){
		 window.location.href="${pageContext.request.contextPath}/login";
	 }else {
		 window.location.href="${pageContext.request.contextPath}/addOrder?requestId="+isbn+"&userName="+user;
	 }
 }
 </script>
	</body>
</html>
