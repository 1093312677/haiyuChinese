<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<title>信息</title>
	<link href="<%=request.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/animate.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/style.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/login.css" rel="stylesheet">
    
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    
    <script src="<%=request.getContextPath() %>/js/fileinput.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath() %>/js/fileinput_locale_zh.js" type="text/javascript"></script>
    <link href="<%=request.getContextPath() %>/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
    
    
    <!-- edit -->
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/js/jquery-te-1.4.0.css">
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-te-1.4.0.min.js" charset="utf-8"></script>
    
</head>
<body>
<div class="container">
	<div class="row">
	  <table class="table table-hover">
	  		<tr>
	  			<td>头像</td>
	  			<td>姓名</td>
	  			<td>性别</td>
	  			<td>专业</td>
	  			<td>职务</td>
	  			
	  			<td>主要教学课程</td>
	  			<td>教学风格</td>
	  			<td>查看</td>
	  		</tr>
	  	<s:iterator id="items" value="#request.teachers">
	  		<tr>
	  			<td><img src='<%=request.getContextPath() %>/upload/<s:property value="#items.head"/>' width='70px'/></td>
	  			<td><s:property value="#items.name"/></td>
	  			<td><s:property value="#items.sex"/></td>
	  			<td><s:property value="#items.major"/></td>
	  			<td><s:property value="#items.job"/></td>
	  			<td><s:property value="#items.mianClass"/></td>
	  			<td><s:property value="#items.teachStyle"/></td>
	  			
	  			<td>	
	  				<a href="Teach_deleteTeacher.action?id=<s:property value="#items.id"/>&head=<s:property value="#items.head"/>"><button class="btn btn-danger btn-xs">删除</button></a>
	  			</td>
	  		</tr>
	  	</s:iterator>
	  </table>
	</div>
</div>	
</body>
</html>