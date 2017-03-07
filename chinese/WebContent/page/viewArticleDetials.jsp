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
	  	<s:iterator id="articles" value="#request.articles">
	  		
	  		<div class="panel panel-default">
			    <div class="panel-heading">
			        <h3 class="panel-title">
			            <ul>
				  			<li>标题：<s:property value="#articles.title"/></li>
				  		</ul>
				  		
				  		<!-- 
				  		<ul>
				  			<li>类型：<s:property value="#articles.type"/></li>
				  		</ul>
				  		 -->
				  		<ul>
				  			<li>作者：<s:property value="#articles.author"/></li>
				  		</ul>
				  		
				  		<ul>
				  			<li>时间：<s:property value="#articles.time"/></li>
				  		</ul>
			        </h3>
			    </div>
			    <div class="panel-body">
			     ${request.articles[0].content }
			    </div>
			</div>
	  	</s:iterator>
	</div>
</div>	
<script>
//文本编辑器
$('.jqte-test').jqte();

</script>
</body>
</html>