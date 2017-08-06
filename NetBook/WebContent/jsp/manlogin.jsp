<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE>
<html>
  <head>
   
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>CC管理员登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style>
	body{margin:0 auto;background: url(images/db.jpg);}
	.div_logon{width:360px;height:400px;border:1px solid #d4d4d4;left;margin-top: 156px;margin-left: 692px;}
	.div_logon h2{font-family: "微软雅黑";font-weight: bold;color: white;margin-left:104px;} 
	.div_new{margin-top:50px;margin-left:20px;}
	.div_new lable{font-family: "微软雅黑";font-weight: bold;font-size: small;}
	.div_new span{color: white;}
	.div_submit{margin-top:55px;margin-left:160px;}
	.div_submit input {width: 50px;height: 30px;font-family: "微软雅黑";font-weight: bold;}
	</style>

  </head>
  
  <body>
   <form:form  modelAttribute="Mannager"  action="manedit" method="post">
   <div class="div_logon">
   <h2>图书管理系统</h2>
   <div class="div_new">
   <label><span>管理员账号：</span></label>
   <input name="name">
   </div>
   <div class="div_new">
   <label><span>管理员密码：</span></label>
   <input name="password" type="password">
   </div>
   <div class="div_submit">
   <input type="submit" value="登录">
   </div>
   </div>
   </form:form>
  </body>
</html>
