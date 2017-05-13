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
    
    <title>显示Food</title>
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
    <header>
       <div class="logo"><i class="fa fa-ul fa-cutlery"></i>美食派对</div>
       <div class="account">
         <c:choose>
	       <c:when test="${customer.name ==null}">
	         <a href="reg.jsp">注册</a>
	         <a href="login.jsp">登录</a>
	       </c:when>
	       <c:otherwise>
	         <c:out value="${customer.name}"></c:out>, 欢迎您!
	       </c:otherwise>
	     </c:choose>
		    
       </div>
       
		    
    </header>

     <main class="container-fluid">
	    <div class="row">
		   <div class="col-md-10">
		      <s:form action="shop/shop_editShop" cssClass="form-horizontal" enctype="multipart/form-data">
		      <s:hidden name="shop.shopid"/>
		      
		      <div class="panel panel-success">
			       <div class="panel-heading">
		               <h4 class="panel-title"> <i class="fa fa-cutlery"></i> 编 辑 购物车 信 息</h4>
		           </div>
		           <div class="panel-body">
				       <div class="form-group">
			                <label class="control-label col-md-3">美食名称</label>
			                <div class="col-md-4">
                              <input type="text" name="shop.food.foodname" value="<s:property value='shop.food.foodname'/>" class="form-control input-sm" required>
                           </div>
			           </div>  
			           <div class="form-group">
			                <label class="control-label col-md-3">美食单价</label>
			                <div class="col-md-2">
                              <input type="text" name="shop.unitprice" value="<s:property value='shop.unitprice'/>" class="form-control input-sm" placeholder="&yen;" required>
                            </div>
                            <div class="form-group">
			                <label class="control-label col-md-3">美食份数</label>
			                <div class="col-md-2">
                              <input type="text" name="shop.foodnum" value="<s:property value='shop.foodnum'/>" class="form-control input-sm" placeholder="&yen;" required>
                            </div>
                             <label class="control-label col-md-3">顾客编号</label>
			                <div class="col-md-2">
                              <input type="text" name="shop.customer.customerid" value="<s:property value='shop.customer.customerid'/>" class="form-control input-sm" placeholder="&yen;" required>
			           </div>
			           <label class="control-label col-md-3">美食折后价</label>
			          <div class="col-md-2">
			        
	          <input type="text" name="shop.food.vipprice" value="<s:property value='shop.food.vipprice'/>" class="form-control input-sm" placeholder="&yen;" required>
	      </div>
	      <div>
	       <label class="control-label col-md-3">美食原价</label>
			          <div class="col-md-2">
	          <input type="text" name="shop.food.price" value="<s:property value='shop.food.price'/>" class="form-control input-sm" placeholder="&yen;" required>
	     
                              </div>
                            </div>
			           </div>    

			           <div class="form-group col-md-3">
			           <a href="shop/shop_editShop?shop.food.foodid=<s:property 
	                  value='shop.food.foodid'/>">提交</a>
		
				          <button type="submit" class="btn btn-success pull-right">提  交 </button>
				       </div>
				   </div>
				</div>
		    </s:form>
		  </div>
	   </div>
	</main>
    <script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/bootstrap-fileupload.js"></script>
  </body>
</html>
