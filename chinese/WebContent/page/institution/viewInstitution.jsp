<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<title>添加视频信息</title>
	<meta name="keywords" content="">
    <meta name="description" content="">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet">
    
    <script src="js/jquery.min.js"></script>
    <!-- edit -->
	<link type="text/css" rel="stylesheet" href="js/jquery-te-1.4.0.css">
	<script type="text/javascript" src="js/jquery-te-1.4.0.min.js" charset="utf-8"></script>	
</head>
<body>
<div class="container">
	<div class="row">
	  <table class="table table-hover">
	  		<tr>
	  			<td>机构图片</td>
	  			<td>机构链接</td>
	  			<td>机构名称</td>
	  			<td>机构简介</td>
	  			<td>前往</td>
	  			<td>更新</td>
	  			<td>操作</td>
	  		</tr>
	  	<s:iterator id="item" value="#request.institutions">
	  		<tr>
	  			<td><img src='upload/<s:property value="#item.imageUrl"/>' width='70px'/></td>
	  			<td><s:property value="#item.url"/></td>
	  			<td><s:property value="#item.instituName"/></td>
	  			<td><s:property value="#item.instroduce"/></td>
	  			<td><a target="_blank" href="http://<s:property value="#item.url"/>"><button class="btn btn-primary">前往</button></a></td>
	  			<td><a href="Main_viewOneInstitution.action?instituId=<s:property value="#item.id"/>"><button class="btn btn-primary">更新</button></a></td>
	  			<td><a href="Main_deleteInstitution.action?instituId=<s:property value="#item.id"/>&imageUrl=<s:property value="#item.imageUrl"/>"><button class="btn btn-danger">删除</button></a></td>
	  		</tr>
	  	</s:iterator>
	  </table>
	</div>
</div>	
<script>
//文本编辑器
$('.jqte-test').jqte();

</script>
</body>
</html>