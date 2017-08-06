<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE HTML>
<html>
  <head>
    <title>CC图书管理系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style>
	body{margin:0 auto;background: #049CDF;}
	.div_man{width:1366px;height:50px;background: #5B7FA3;}
    .div_man span{margin-top: 9px;display: block;float: left;color:#FEFEFF;}
	.fancyNav{width:666px;height:50px;margin-left: 300px;margin-top:0px;}
	.fancyNav li{float:left;width:150px;height:50px;text-align: center;}
	.fancyNav li:HOVER {background-color: #CBE3ED}
	.homeIcon{margin-top: 15px;display: block;}
	.div_main{width:1366px;height:50px;text-align: center;}
	.div_main h2{color: #FFFF46;font-family: "微软雅黑";font-weight:bolder;}
	.div_guan{width:1366px;height:545px;background-color: #CDE8EA;border: 1px solid red;}
	.div_data{float:left;:266px;height:545px;background-color: #70C5FF;}
	.div_guide{width:266px;height:60px;background: url("image/button2.jpg");text-align: center;}
		.div_guide1{width:260px;height:55px;background: url("image/button1.jpg");text-align: center;}
	.div_guide1 span{margin-top: 20px;display: inline-block;font-size: medium;font-weight: bold;color:white;}
	.div_guide span{margin-top: 20px;display: inline-block;font-size: medium;font-weight: bold;color:white;}
	.fancyNav a{text-decoration: none;font-family: "微软雅黑";font-size: medium;font-weight: bold;color:white;}
	.div_showallbook{float:left;width:1000px;height:500px;border: 1px solid #CDE8EA;margin-left:40px;margin-top: 20px;}
	.div_showallbook p{display: block;border: 1px solid #CDE8EA;text-align: center;margin-top:0px;}
   .div_guide1 a{text-decoration: none;font-family: "微软雅黑";font-size: medium;font-weight: bold;color:white;}
	.table{width:960px;border: white;}
	.table_line{text-align: center;border: white;font-family:"微软雅黑";font-size:small;background: #E0D9D1;}
	.div_guide1 a:HOVER {color: red;}
	</style>
  </head>
  <body>
    <div class="div_main">
    <h2>图书管理系统</h2>
    </div> 
    <div class="div_man">
    <span class="div_span">管理员：</span>
    <span><label style="font-size:large;color:red;font-weight: bold;">${Logonname}</label></span>
    <span>您好！&nbsp;欢迎登录使用！</span>
		<ul class="fancyNav">
			<li id="home"><a href="mainMan" class="homeIcon">书籍管理</a></li>
			<li id="news"><a href="userMan" class="homeIcon">用户管理</a></li>
			<li id="about"><a href="showOrder" class="homeIcon">订单管理</a></li>
		</ul>
    </div>
    <div class="div_guan">
    <div class="div_data">
    </div>
   <div class="div_showallbook">
    <p>浏览所有订单信息</p>
     <table width="70%" border="0" class="table">
      <tr class="table_line">
      <td>用户名</td>
      <td>ISBN</td>
      <td>书名</td>
      <td>数量</td>
      <td>单价</td>
      <td>总计</td>
       </tr>
       <c:forEach items="${orders}" var="userOrder">
       <tr class="table_line">
      <td>${userOrder.user_name}</td>
      <td>${userOrder.book_isbn}</td>
      <td>${userOrder.book_name}</td>
       <td>${userOrder.accout}</td>
      <td>${userOrder.unitPrice}</td>
      <td>${userOrder.price}</td>
       </tr>
       </c:forEach>
     </table>
    </div>
    </div>
  </body>
</html>
