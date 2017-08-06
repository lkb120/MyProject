<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta http-equiv="pragma" content="no-cache">  
        <meta http-equiv="cache-control" content="no-cache">  
        <meta http-equiv="expires" content="0">
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>注册CC</title>
		<style>
			body {
			padding:0;  
            border:0;   
            margin:0;
		    }
			.register {
				width: 100%;
				height:100%;
				background-color: #f6f9fb;
				font-family: "微软雅黑";
			}
			.register-top {
				margin: 0px auto;
				width: 960px;
				height: 100px;
				border: 1px solid #F2F2F2;
				border-bottom: 3px solid red;
				background: #FFF;
			}
			.top-img {
				float: left;
				width: 200px;
			}
			.top-list {
				margin-top: 0px;
				float: right;
				width: 500px;
			}
			.top-list li {
				float: right;
				list-style: none;
				margin-right: 5px;
				font-size: small;
			}
			.top-list li a {
				text-decoration: none;
				font-size: small;
				color: #808080;
			}
			.top-p {
				float: right;
				font-size: small;
				width: 320px;
			}
			.top-p a{
				
				text-decoration: none;
			}
			.top-p span {
				margin-left: 90px;
				color: #808080;
			}
			.top-right {
				float:right;
			}
			.register-main {
				margin: 0 auto;
				width: 950px;
				height: 548px;
				margin-top: 20px;
				background: #FFF;
				box-shadow: -8px 8px #DCDCDC;
			}
			.main-top {
				margin: 0 auto;
				width: 930px;
				height: 75px;
			}
			.main-top p {
				font-size: large;
				margin-top: 38px;
				margin-left: 10px;
				width: 120px;
			}
			.main-ul {
				float: right;
				width: 220px;
				list-style: none;
				margin-top: -30px;
			}
			.main-ul li {
				float: right;
				list-style: none;
				margin-left: 15px;
			}
			.main-ul li a{
				text-decoration: none;
				font-size: small;
				color: #000000;
			}
			.main-input {
				margin: 0 auto;
				width: 700px;
				height: 435px;
			}
			.photo-input {
				margin-top: 20px;
				height: 50px;
			}
			.photo-input span {
				margin-left: 88px;
			}
			.photo-input input {
				margin-top: 15px;
				margin-left: 5px;
				height: 25px;
				width: 220px;
				color: #808080;
			}
			.photo-checkbox {
				margin-top: 20px;
				height: 35px;
			}
			.photo-checkbox input {
				margin-top: 15px;
				margin-left: 180px;
			}
			.photo-checkbox span {
				font-size: small;
			}
			.main-button {
				width: 250px;
				height: 44px;
				margin-left: 190px;
				border-radius: 10px;
				background-color: #FF0000;
				color: #F2F2F2;
				font-size: medium;
			}
			.main-bottom {
				margin-top: 15px;
				height: 120px;
				border-top: 1px solid #A9A9A9;
			}
			.login-list ul {
				margin-left: 270px;;
			}
			.login-list ul li {
				float: left;
				list-style: none;
				margin-left: 10px;
				font-size: small;
			}
			.login-on-img {
				margin: 0 auto;
				float: left;
				width: 560px;
				margin-left: 330px;
			}
			.login-on-img img {
				margin-top: 15px;
				margin-left: 35px;
			}
		</style>
	</head>
	<body>
	  <form:form modelAttribute="RegisterForm" action="regover" meth="post">
		<div class="register">
			<div class="register-top">
				<div class="top-img">
					<img src="images/logo.gif"/>
				</div>
				<div class="top-ul">
					<ul class="top-list">
			    	    <li><a href="#">帮助</a></li>
			    	    <li>|</li>
			    	    <li><a href="#">礼品卡</a></li>
			    	    <li>|</li>
			    	    <li><a href="#">企业销售</a></li>
			    	    <li>|</li>
			    	    <li><a href="#">我的订单</a></li>
			    	    <li>|</li>
			    	    <li><a href="#">我的CC</a></li>
			    	    <li>|</li>
			    	    <li><a href="#">手机CC</a></li>
			    	    <li>|</li>
			    	    <li><a href="#">购物车</a></li>
			        </ul>
			        <div class="top-p"><span>欢迎光临CC网上书店,请</span>
			        	<a href="#">登录</a>
			        	<a href="#" class="top-right">免费注册</a>
			        </div>
				</div>
			</div>
			<div class="register-main">
				<div class="main-top">
					<p>新用户注册</p>
					<ul class="main-ul">
						<li><a href="#">注册帮助</a></li>
						<li><a href="#">CC首页</a></li>
					</ul>
				</div>
			    <div class="main-input">
			    	<div class="photo-input">
			    	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			    	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			    		<span>邮箱</span>
			    		<input type="text" name="name" maxlength="32" value="请输入你的邮箱" onclick="regisgername(this)" onblur="mothoff(this)"/>
			    	    <div id="emailtip" style="font-size: x-small;margin-left: 205px;color: red;">${sessionScope.errEmail}</div>
			    	    
			    	</div>
			    	
			    	<div class="photo-input">
			    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			    		<span>登录密码</span>
			    		<input type="password" onclick="passwordch(this)" onblur="passoff(this)"/>
			    	    <div id="passwordtip" style="font-size: x-small;margin-left: 205px;color: red;"></div>
			    	</div>
			    	<div class="photo-input">
			    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			    		<span>确认密码</span>
			    		<input type="password" name="password" onclick="repetword(this)" onblur="repetoff(this)"/>
			    		<div id="repetpasswordtip" style="font-size: x-small;margin-left: 205px;color: red;"></div>
			    	</div>
			    	<div class="photo-input">
			    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			    		<span>验证码</span>
			    	   <input id="authCode" name="authCode" type="text" value="请输入验证码" onclick="codeadd(this)" onblur="codeoff(this)"/>
			    	   <div id="codetip" style="font-size: x-small;margin-left: 205px;color: red;">${sessionScope.errCode}</div>
			    	   <div style="position: relative;left:440px;bottom: 35px;">
                         <label><img  src="authCode.do" id="codeImage" onclick="chageCode()" title="图片看不清？点击重新得到验证码" style="cursor:pointer;ma"/></label>
                         <label><a onclick="chageCode()">换一张</a></label>
			    	    
			    	    </div>
			    	   
			    	   
			    	</div>
			    	<div class="photo-checkbox">
			    	    <input type="checkbox"/>
			    	    <span>我已阅读并同意 《CC交易条款》和 《CC社区条款》</span>
			    	</div>
			    	<div class="photo-checkbox">
			    		<button class="main-button">立即注册</button>
			    	</div>
			    </div>
			</div>
			<div class="main-bottom">
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
				<img src="images/brand.png"/>
				<img src="images/validate.gif"/>
				<img src="images/knetSealLogo.png"/>
			</div>
			</div>
		</div>
	  </form:form>
	  <script src="js/jquery-1.8.2.js"></script>
	  <script type="text/javascript">
	           function regisgername(obj) {
	        	  $(obj).val("");
	           }
	           function mothoff(obj) {
	        	   var length=$(obj).val();
	        	   if(length==0) {
	        		   $("#emailtip").text("请输入你的邮箱");
	        	   }else {
	        		   var namestr=$(obj).val();
	        		   var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;	        		   if(myreg)
	        	       if(!myreg.test(namestr)) {
	        	    	$("#emailtip").text("邮箱格式不对");
	        	       }else {
	        	    	   //ajax开发
	        	       }
	        	   }
	           }
	           
	           function passwordch(obj) {
	        	   $("#passwordtip").text("密码长度不能少于8位的字母，数字");
	           }
	           var passstr;
	           function passoff(obj) {
	        	   var length=$(obj).val().length;
	        	   if(length==0) {
	        		   $("#passwordtip").text("密码长度不能少于8位的字母，数字");
	        	   }else {
	        		   passstr=$(obj).val();
	        		   var reg = new RegExp(/^(?![^a-zA-Z]+$)(?!\D+$)/);
                       if(passstr.length<8) {
                    	   $("#passwordtip").text("密码长度不能少于8位");
                       }else {
                    	   if(!reg.test(passstr)) {
                    		   $("#passwordtip").text("密码长度不能少于8位的字母，数字");
                    	   }
                       }
	        	   }
	           }
	           function repetword(obj) {
	        	   $("#repetpasswordtip").text("请再重新输入一遍密码");
	           }
	           function repetoff(obj) {
	        	   var length=$(obj).val();
	        	   if(length==0) {
	        		   $("#repetpasswordtip").text("请再重新输入一遍密码");
	        	   }else {
	        		   var namestr=$(obj).val();
	        		   if(passstr!=namestr) {
	        			   $("#repetpasswordtip").text("两次输入的密码不一致");
	        		   }
	        		   
	        	   }
	           }
	           function chageCode(){
	               $('#codeImage').attr('src','authCode?abc='+new Date().getTime());//链接后添加Math.random，确保每次产生新的验证码，避免缓存问题。
	           }
	           function codeadd(obj) {
	        	   $(obj).val("");
	           }
	           function codeoff(obj) {
	        	   var user ="<%=session.getAttribute("strCode")%>";
	           }
	           
	           
	  </script>
	</body>
</html>
