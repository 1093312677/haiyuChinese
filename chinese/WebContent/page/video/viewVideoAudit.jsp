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
	  			<td>封面</td>
	  			<td>标题</td>
	  			<td>上传时间</td>
	  			<td>类型</td>
	  			<td>上传人</td>
	  			<td>播放</td>
	  			<td>通过</td>
	  			<td>退回</td>
	  		</tr>
	  	<s:iterator id="videos" value="#request.videos">
	  		<tr>
	  			<td><img src='upload/<s:property value="#videos.imageUrl"/>' width='70px'/></td>
	  			<td><s:property value="#videos.title"/></td>
	  			<td><s:property value="#videos.updateTime"/></td>
	  			<td><s:property value="#videos.type"/></td>
	  			<td><s:property value="#videos.author"/></td>
	  			<td><a href="Main_playVideo.action?videoId=<s:property value="#videos.id"/>"><button class="btn btn-primary">播放</button></a></td>
	  			<td><a href="Main_throughtAudit.action?videoId=<s:property value="#videos.id"/>"><button class="btn btn-success">通过审核</button></a></td>
	  			<td><a href="Main_notThroughtAudit.action?videoId=<s:property value="#videos.id"/>"><button class="btn btn-danger">退回</button></a></td>
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