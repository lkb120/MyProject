<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    
    
    <title>确认订单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="Mainshow.css">
	
    <style>
    .div_car{width:960px;height:90px;float:left;margin-left:235px;border:1px solid #d4d4d4;}
    .div_car p{float:left;margin-left:860px;}
    .table{width:960px;border: white;}
    .table_tr{font-size:small;width:960px;height:25px;background:#f7f6f2;}
    .div_car h3{text-align: center;font-family:"微软雅黑";font-weight: bold;background: red;color:white;}
    .table_line{text-align: center;border: white;font-family:"微软雅黑";font-size:small;background: #E0D9D1;}
    .table_lines{height: 120px;border: white;text-align:center;font-family:"微软雅黑";font-size:small;}
    .table_lines td{margin-top: 50px;}
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
    .tr_font a{
    text-decoration: none;
    color: white;
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
  <img src="images/tu1.jpg"></img>
   </div>
    <div class="div2">
    <span class="div3">欢迎<label style="font-size:small;color:red;font-weight: bold;"><%=session.getAttribute("newuser") %></label>光临当当,请<a href="http://localhost:8080/Bookshop/Logon.jsp" style="color: red;text-decoration: none;" target="_self">登录</a>&nbsp;<a href="http://localhost:8080/Bookshop/Newuser.jsp" >免费注册</a></span>
    <ul class="div4">
    <li><a href="showAllbook.jsp"> 购物车</a>
    </li>
    <li><a href="#"> 我的订单</a> 
    </li>
    <li><a href="#"> 电子书架</a>
   </li>
    <li><a href="#"> 手机当当</a>
    </li>
    <li><a href="#"> 我的当当</a>
   </li>
    <li><a href="#"> 企业采购</a>
    </li>
    <li><a href="#"> 客户服务</a>
    </li>
    </ul>
    </div>
    <div class="div_car">
    <h3>确认订单</h3>
    <p> 返回购物车</p>  
   </div>
   <div class="div_address">
 
    <div class="div_sure">
    <span>.收货地址</span>
    
    <span class="div_newaddress">使用新地址</span>
    </div>
    <div class="div_moaddress">
    <div class="div_moadd">
    <p>&nbsp;&nbsp;&nbsp;收货人：${people}</p>
    <p>详细地址：${where}</p>
    <p>邮政编码：${poscode}</p>
    <p>手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：${phone}</p>
    </div>
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
      <td></td>
      <td>书名</td>
      <td>单价</td>
      <td>数量</td>
      <td>小计</td>
      <td>操作</td>
      </tr>
      </table>
   </div>
  </body>
</html>
