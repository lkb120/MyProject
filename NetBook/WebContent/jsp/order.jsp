<%@page contentType="text/html"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
  <head>
    <title>CC购物车</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="Mainshow.css">
    <style>
    .div_car{width:1200px;height:90px;float:left;margin-left:235px;border:1px solid #d4d4d4;}
    .div_car p{float:left;margin-left:860px;}
    .table{width:960px;border: white;}
    .table_tr{font-size:small;width:960px;height:25px;background:#f7f6f2;}
    .div_car h3{text-align: center;font-family:"微软雅黑";font-weight: bold;background: red;color:white;}
    .table_line{text-align: center;border: white;font-family:"微软雅黑";font-size:small;background: #E0D9D1;}
    .table_lines{height: 60px;border: white;text-align:center;font-family:"微软雅黑";font-size:large;}
    .table_lines td{margin-top: 30px;color:red;}
    .table_price{text-align: right;}
    .tr_font{width:250px;height:35px;text-align:center;background:red;color:white;font-weight: bold;border:1px solid #d4d4d4;}
    .tr_price{width:250px;height:35px;text-align:center;background:white;color:red;font-weight: bold;font-size: x-large;}
    .div_address{width:960px;height:1080px;float:left;margin-left:235px;border:1px solid #d4d4d4;}
    .div_form{width:905px;height:226px;border:1px solid #d4d4d4;margin-left: 25px;}
    .address_di{width:960px;height:30px;border:1px solid #d4d4d4;font-family:"微软雅黑";font-weight:bolder;}
    .div_span{text-align: center;}
    .div_get{width:905px;height:24px;margin-top: 9px;}
    label strong {float: left;margin: 3px 0 0 5px;font-size: 12px;line-height: 18px;color: #ff7417;padding-right: 2px;}
    .input_ {width: 176px;height: 22px;line-height: 22px;font-size: 12px;background: #fff;border: 1px solid #d4d4d4;padding-left: 2px;}
    .input-w {width: 438px;height: 22px;line-height: 22pxfont-size: 12px;background: #fff;border: 1px solid #d4d4d4;padding-left: 2px;}
    .info-list {position: relative;line-height: 24px;margin: 10px 0;z-index: 9;}
    .checkbox {height: 14px;line-height: 14px;}
    .ml-80 {margin-left: 80px;}
    .div_g{width:905px;height:40px;margin-top: 9px;}
    .div_g input {width:105px;height:30px;float: left;margin-left: 12px;background-color: orange;}
    .div_sure{width:960px;height:24px;border:1px solid #d4d4d4;}
    .div_s{width:960px;height:50px;border:1px solid #d4d4d4;margin-top: 20px;}
    .div_s span{font-family: "微软雅黑";font-size:medium;font-weight:bold;margin-left: 15px;}
    .div_s p{font-family:"微软雅黑";font-size:small;font-weight:bold;margin-top:8px;margin-left:15px;}
    .div_newaddress{float: right;}
    .div_moaddress{width:360px;height:360px;border:1px solid #d4d4d4;background: url(image/newaddre.jpg);}
    .div_moadd{width:360px;height:240px;margin-top: 79px;}
    .div_moadd p{margin-left: 15px;margin-top: 25px;font-size: small;font-weight: bold;font-family: "微软雅黑";}
     #bg{ display: none;  position: absolute;  top: 0%;  left: 0%;  width: 100%;  height: 100%;  background-color: black;  z-index:1001;  -moz-opacity: 0.7;  opacity:.70;  filter: alpha(opacity=70);}
     #show{display: none;  position: absolute;  top: 25%;  left: 35%;  width: 300px;  height: 215px;  padding: 8px;  border: 8px solid #E8E9F7;  background-color: white;  z-index:1002;  overflow: auto;}
     #show p{
     text-align: center;
     margin-top: 50px;
     display: block;
     }
    #show input {
	margin-top: 60px;
	margin-left:65px;
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
			margin-left: 30px;
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
		.myCar_tittle {
		  width: 350px;
		  float: left;
		  margin-left: -140px;
		  margin-top: 10px;
		}
		.myCar_tittle {
		  width: 350px;
		  float: left;
		  margin-left: 140px;
		  margin-top: 10px;
		}
		.myCar_label {
		  margin-left: 50px;
		  margin-top: 10px;
		  
		  float: left;
		}
		.myCar_label div{
		  float: left;
		  font-family: "微软雅黑";
		}
		.myCar_label1 {
		  background-image: url("images/procedure_bg2.png");
		  width: 205px;
		  text-align: center;
		  height:36px;
		}
		.myCar_label1 span {
		 margin-top: 5px;
		 display: block;
		 
		}
		.myCar_label2 span {
		 margin-top: 5px;
		 display: block;
		 color:white;
		}
		.myCar_label3 span {
		 margin-top: 5px;
		 display: block;
		}
		.myCar_label2 {
		  background-image: url("images/procedure1.png");
		  width: 226px;
		  height:36px;
		  text-align: center;
		}
		.myCar_label3 {
		  background-image: url("images/procedure_bg2.png");
		  width: 227px;
		  text-align: center;
		  height:36px;
		}
    </style>
      <script>
    function deleitm(id)
    {
      var b=window.confirm("你确定要删除吗？");
      if(b)
      {window.location.href="${pageContext.request.contextPath}/servlet/deservlet?bookid="+id;
    }
    }
</script>
  </head>
  <body>
  <div class="div1">
  <img src="images/tu1.jpg" style="margin: 0 auto;display: block;"></img>
  </div>
    <div class="main-ttitle">
	        <ul class="main-ttitle-ul">
	        <li><span id="index-welcome">欢迎<span style="color:red;">${sessionScope.user}</span>光临CC，请</span><a href="login" id="index-login">登录</a>&nbsp;<a href="register">成为会员</a></li>
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
	  <div class="div_cars">
      <div class="myCar_tittle">
      <img  src="images/dd_logo.jpg">
      </div>
      <div class="myCar_label">
       <div class="myCar_label1"><span>我的购物车</span></div>
       <div class="myCar_label2"><span>填写订单</span></div>
       <div class="myCar_label3"><span>完成订单</span></div>
      </div>
   </div>
   <div class="div_address">
   <p class="address_di" style="display: block;"><span class="div_span">.</span>收货地址</p>
   <form  class="div_form" style="display:block;" id="address_form" method="post">
   <div class="div_get">
   <label class="label_s"><strong>*</strong> &nbsp;收货人：</label>
   <input name="render" class="input_" id="render">
   <span ></span>
   </div>
    <div class="div_get">
   <label class="label_s"><strong>*</strong> 详细地址：</label>
   <input name="address" class="input-w " id="address"> 
   <span ></span>
   </div>
    <div class="div_get">
   <label class="label_s"><strong>*</strong> 邮政编码：</label>
   <input name="postcode" class="input_" id="postcode">
   <span ></span>
   </div>
    <div class="div_get">
   <label class="label_s"><strong>*</strong> 手&nbsp;&nbsp;机：</label>
   <input name="phonenum" class="input_" id="phonenum">
   <span ></span>
   </div>
   <div class="info-list">
   <label class="checkbox ml-80">
   <input id="chk_address_status" type="checkbox"> 设为默认地址
   </label>
   </div>
   <div class="div_g">
   <input type="button"  value="确认收货地址" id="address_submit"/><input type="reset"value="清空" />
    </div>
   </form>
    <div class="div_sure">
    <span>.收货地址</span>
    
    <span class="div_newaddress">使用新地址</span>
    </div>
    <div class="div_moaddress">
    <form:form modelAttribute="Address">
    <div class="div_moadd">
    <p>&nbsp;&nbsp;&nbsp;收货人：<input name="render" id="lab_render" style="border:none;background:white;" disabled="true" value="${address.render}"></p>
    <p>详细地址：<input name="address" id="lab_address" style="border:none;background:white;" disabled="true" value="${address.address}"></p>
    <p>邮政编码：<input name="postcode" id="lab_postcode" style="border:none;background:white;" disabled="true" value="${address.postcode}"></p>
    <p>手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：
    <input name="phonenum" id="lab_phone" style="border:none;background:white;" disabled="true" value="${address.phonenum}">
    </p>
    </div>
    </form:form>
    </div>
    <div class="div_s">
    <span>送货方式</span>
    <p>订单：平邮（凭身份证在邮局领取，请实名下单）</p>
    </div>
    <div class="div_s">
    <span>支付方式</span>
    <p>订单：网上支付</p>
    </div>
    <div class="div_s">
    <span>发票信息</span>
    <p>订单：个人 发票内容：图书</p>
    </div>
    <table width="70%" border="0" class="table">
      <tr class="table_line">
      <td>总价</td>
      <td>数量</td>
      <td>操作</td>
      </tr>
     <tr class="table_lines">
     <td>${total}</td>
     <td>${accout}</td>
     <td><a href="payOrder?userName=${sessionScope.user}"><button style="background-color:red;border:none;"><span style="color:white;font-size:large;">支付</span></button></a></td>
     </tr>
      </table>
      <script type="text/javascript" src="js/jquery-1.8.2.js"></script>
	<script type="text/javascript">
	$("#address_submit").click(function (){
		var render=$("#render").val();
		var address=$("#address").val();
		var postcode=$("#postcode").val();
		var phonenum=$("#phonenum").val();
		var url="${pageContext.request.contextPath}/addAddress";
		 $.ajax({
			 url:url,
			 dataType:"JSON",
             type:"post",
             data:JSON.stringify({
            	 "userName":'${sessionScope.user}',
            	 "render":render,
				   "address":address,
				    "postcode":postcode,
				     "phonenum":phonenum}),
             contentType:"application/json;charset=UTF-8",
             success:function(data){
            	 $("#lab_render").val(data['render']);
            	 $("#lab_address").val(data['address']);
            	 $("#lab_postcode").val(data['postcode']);
            	 $("#lab_phone").val(data['phonenum']);
             },
		    error:function(data){
	            alert("地址有误");
	        }

		    });
	});
	</script>
   </div>
  </body>
</html>
