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
     <p>订单号：<s:property value="order.orderid"></s:property></p>
     <p>下单顾客：<s:property value="order.customer.name"></s:property></p>
     <p>美食：<s:property value="order.food.foodname"></s:property></p>
     <p>
     <c:choose>
     <c:when test="${customer.role ==1}">
	         <s:property value="food.vipprice"></s:property></td>
	       </c:when>
	         <c:when test ="${customer.role ==2}">
	         <s:property value="food.price"></s:property></c:when></c:choose></p>
     <p>份数：<s:property value="order.foodnum"></s:property></p>
     <!--  <p>总价：<s:property value="order.total"></s:property></p>-->
      <!--   <p>发表你的评论: <input type="text" name="food.comment" value="<s:property value='food.comment'/>" class="form-control input-sm" placeholder="&yen;" required>
       --> <!--  <a href="add_comment.jsp?order.food.foodid=<s:property 
	                  value='order.food.foodid'/>&order.customer.customerid=<s:property value='#session.customer.customerid'/>">
	                  <i class="fa fa-cutlery"></i> 来一份-->
	                  <a href="add_comment.jsp">添加评论</a>
  </body>
</html>
