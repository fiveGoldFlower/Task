<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>显示order详情</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	
	<link rel="shortcut icon" href="<%=basePath%>images/logo.png">
  </head>
  
  <body>
   <s:form action="comment/comemnt_addComment" method="post">
  <s:hidden name="order.shop.food"></s:hidden>
  <s:hidden name="order.shop.customer"></s:hidden>
     <p>订单号：<s:property value="order.orderid"></s:property></p>
     <p>下单顾客：<s:property value="order.shop.customer.name"></s:property></p>
     <p>美食：<s:property value="order.shop.food.foodname"></s:property></p>
     <p>添加评论：<input type="text" name="comment.comment" value="<s:property value='comment.comment'/>" class="form-control input-sm" placeholder="&yen;" required>
      <button type="submit" class="btn btn-success pull-right">提  交 </button>
	                  </p>
	                  </s:form>
  </body>
</html>
