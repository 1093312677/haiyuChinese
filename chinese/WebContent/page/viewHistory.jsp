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
	  			<td>头像</td>
	  			<td>姓名</td>
	  			<td>性别</td>
	  			<td>出生日期</td>
	  			<td>地址</td>
	  			<td>用户名</td>
	  			<td>介绍</td>
	  			<td>操作</td>
	  		</tr>
	  	<s:iterator id="item" value="#request.historys">
	  		<tr>
	  		
	  			<s:if test='#item.article.id != null'>
	  				<td><s:property value="#item.article.id"/></td>
	  				<td><s:property value="#item.article.title"/></td>
	  				<td><s:property value="#item.article.content"/></td>
	  			</s:if>
	  			<s:else>
	  				<td><s:property value="#item.video.id"/></td>
	  				<td><s:property value="#item.video.title"/></td>
	  				<td><s:property value="#item.video.introduce"/></td>
	  			</s:else>
	  			
	  			
	  			
	  			
	  			<td><s:property value="#item.time"/></td>
	  			<td><s:property value="#item.username"/></td>
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