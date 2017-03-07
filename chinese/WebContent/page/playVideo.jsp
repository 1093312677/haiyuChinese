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
	  	<s:iterator id="videos" value="#request.videos">
	  			<div class="panel panel-default col-xs-12" >
				    <div class="panel-body">
				    	  <ul>
					  			<li>视频标题：<s:property value="#videos.title"/></li>
					  			<li>上传时间：<s:property value="#videos.updateTime"/></li>
					  			<li>类型：<s:property value="#videos.type"/></li>
					  			<li>上传者：<s:property value="#videos.author"/></li>
				  			</ul>
				    </div>
				</div>
			<div class="col-xs-12">
	  			<div class="panel panel-default">
				    <div class="panel-heading">
				        <h3 class="panel-title">
				           <s:property value="#videos.title"/>
				        </h3>
				    </div>
				    <div class="panel-body">
				    	${videos[0].introduce }
				    </div>
				</div>
	  		</div>	
			<div class="col-xs-12">
		  		<s:if test="#videos.saveType==1">
		  			<embed src="<s:property value="#videos.videoName"/>" allowFullScreen="true" quality="high" width="640" height="500" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash"></embed>
		  		</s:if>
		  		<s:else>
		  			<video width="320" height="240" controls>
					  <source src='<s:property value="#videos.videoName"/>' type="video/mp4">
					  <source src='<s:property value="#videos.videoName"/>' type="video/ogg">
					  <source src='<s:property value="#videos.videoName"/>' type="video/webm">
					  <object data="movie.mp4" width="320" height="240">
					    <embed src='<s:property value="#videos.videoName" />' controls  width="640" height="500">
					  </object> 
					</video>
		  		</s:else>
	  		</div>
	  		
	  	</s:iterator>
	</div>
</div>	
</body>
</html>