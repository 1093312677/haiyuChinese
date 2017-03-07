<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Error page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="shortcut icon" href="images/victor.ico" />
	<style type="text/css">
		body{
			background-color: black;
		}
		*{
			margin: 0;
			padding: 0;
		}
		
		.font{
			width:300px;
			height:100px;
			font-size:30px;
			color:white;
			margin:0 auto;
			margin-top:200px;
			
		}
	</style>
  </head>
  
  <body>
  <div class='container'>
  	<div class="font">
  		~~~~~~~~~~~~~~~~~~<br/>
  		<span>  休息一下，请重试!</span>
  		<br/>
  		<br/>
  		~~~~~~~~~~~~~~~~~~<br/>
  	</div>
  </div>
  </body>
</html>
