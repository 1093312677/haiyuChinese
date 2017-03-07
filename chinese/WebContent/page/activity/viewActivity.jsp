<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<title>信息</title>
	<meta name="keywords" content="">
    <meta name="description" content="">
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/animate.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/login.css" rel="stylesheet">
    
    <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <!-- edit -->
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/js/jquery-te-1.4.0.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-te-1.4.0.min.js" charset="utf-8"></script>	
</head>
<body>
<div class="container">
	<div class="row">
	  <table class="table table-hover">
	  		<tr>
	  			<td>标题</td>
	  			<td>上传时间</td>
	  			<td>操作</td>
	  			<td>查看</td>
	  		</tr>
	  	<s:iterator id="items" value="#request.activitys">
	  		<tr>
	  			<td><s:property value="#items.title"/></td>
	  			<td><s:property value="#items.time"/></td>
	  			<td>	
	  			<a href="Activity_deleteActivity.action?id=<s:property value="#items.id"/>"><button class="btn btn-danger btn-xs">删除</button></a></td>
	  			<td><a href="Activity_viewActivity.action?id=<s:property value="#items.id"/>"><button class="btn btn-primary">查看</button></a></td>
	  			
	  		</tr>
	  	</s:iterator>
	  </table>
	</div>
</div>	
</body>
</html>