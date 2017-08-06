<%@ page language="java" pageEncoding="utf-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>登录CC</title>
		<style>
			body {
			padding:0;  
            border:0;   
            margin:0;
		    }
			.login {
				width: 100%;
				height: 100%;
				font-family: "微软雅黑";
			}
			.login-logo {
				
                width: 220px;
                height: 120px;
                margin-left: 45px;
			}
			.login-img {
				float: left;
				margin-top: 35px;
				
				width: 500px;
				margin-left: 125px;

			}
			.login-on {
				width: 392px;
				height: 412px;
				float: right;
				margin-right: 55px;
			}
			.on-advice img {
				margin-top: 5px;
			}
			.on-advice span {
				font-size: small;
			}
			.on-color {
				font-size: small;
				color: #4169E1;
			}
			.username span {
				width: 30px;
				height:36px;
			}
			.username {
				margin-top: 45px;
				margin-left: 20px;
				
				width: 305px;
			}
			.username input {
				height: 35px;
				width: 300px;
				color: darkgrey;
			}
			.password {
				margin-top: 45px;
				margin-left: 20px;
				
				width: 305px;
			}
			.password input {
				height: 35px;
				width: 300px;
				color: darkgrey;
			}
			.login-submit input{
				margin-left: 20px;
				margin-top:10px;
				height: 45px;
				width: 304px;
				color: #F9F9F9;
				font-size: medium;
				background-color: red;
				
			}
			.on-tip {
				margin-top: 50px;
				margin-left: 20px;
				width: 300px;
				
			}
			.on-tip span {
				font-size: small;
			}
			.on-tip a {
				float: right;
				font-size: small;
				text-decoration: none;
			}
			.login-corporate {
				margin-left: 20px;
			}
			.login-corporate span,ul{
				float: left;
				font-size: small;
			}
			.login-corporate a {
				font-size: small;
				text-decoration: none;
				float: right;
				margin-right: 70px;
			}
			.login-corporate ul {
				position: relative;
				margin-left: -40px;
				margin-top: -5px;
			}
			.login-corporate ul li {
				float: left;
				margin-left: 3px;
				list-style: none;
			}
			.login-hr {
				float: left;
				color: #0066CC;
				width: 100%;
			}
			.login-list ul {
				margin-left: 220px;;
			}
			.login-list ul li {
				float: left;
				list-style: none;
				margin-left: 10px;
			}
			.login-on-img {
				margin: 0 auto;
				float: left;
				width: 560px;
				margin-left: 330px;
			}
			.login-on-img img {
				margin-left: 15px;
			}
		</style>
	</head>
	<body>
	<form action="index.html">
		<div class="login">
			<div class="login-logo">
				<a href="http://www.dangdang.com">
                <img src="images/logo.gif">
                </a>
			</div>
			<div class="login-img">
				<img src="images/login.jpg" />
			</div>
			<div class="login-on">
				<div class="on-advice">
					<img src="images/tip.png"/>
					<span>请勿设置与邮箱及其他网站相同的登录及支付密码，</span>
					<span class="on-color">谨防诈骗！</span>
				</div>
			    <div class="username">
			    	<span></span>
			    	<input type="email" name="email" value="请输入邮箱"/>
			    </div>
			    <div class="password">
			    	<span></span>
			    	<input type="text" name="password" maxlength="18" value="请输入密码"/>
			    </div>
			    <div class="on-tip">
			       <input type="checkbox"/>
			       <span>七天内自动登录</span>
			       <a href="#">忘记密码？</a>
			    </div>
			    <div class="login-submit">
			    	<input type="submit" value="登录"/>
			    </div>
			    <div class="login-corporate">
			       <p><span>合作网站:</span></p>
			       <ul>
			       	<li><img src="images/qq.png"/></li>
			       	<li><img src="images/weixin.png"/></li>
			       </ul>
			       <a href="#">立即注册</a>
			    </div>
			</div>
			<div class="login-hr">
				<hr />
			</div>
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
				<img src="images/brand.png" />
				<img src="images/validate.gif" />
				<img src="images/knetSealLogo.png"/>
			</div>
		</div>
		
	</form>   
	</body>
</html>
