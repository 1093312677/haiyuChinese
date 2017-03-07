<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>嗨语-对外汉语之家教育平台</title>
	<meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/haiyu/css/public.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/haiyu/css/index.css">
	 <link rel="Shortcut Icon" href="<%=request.getContextPath()%>/haiyu/images/ico.png">
	
    <link href="css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet">
    

<style type="text/css">
	.submitBtn{
		background-color: transparent;
		border:solid 0 red;
		height:20px;
	}
</style>
</head>
<body style="margin-top: 20px;max-width:660px;">
	<div class="vedio-box">
		<s:iterator id="videos" value="#request.videos">
		 
			<div class="item">
				<h3><s:property value="#videos.title"/></h3>
				<div class="img">
					<img src='upload/<s:property value="#videos.imageUrl"/>'/>
					<!-- 判断是否登录 -->
					 <s:if test="#session.username!=null">
						<a href='Main_playVideo.action?videoId=<s:property value="#videos.id"/>&type=2'><img src="haiyu/images/play.jpg"/></a>
					 </s:if>
					 <s:else>
					 	<a href='<%=request.getContextPath()%>/login.html'><img src="haiyu/images/play.jpg"/></a>
					 </s:else>
				</div>
				<p><s:property value="#videos.speaker"/></p>
				<div class="clearfix">
					<p class="lx">课型：<s:property value="#videos.lessonType"/></p>
					<p class="zj">[<s:property value="#videos.updateTime"/>]</p>
				</div>
			</div>
		  
		</s:iterator>
		
	</div><!-- vedio-box -->

	<div class="page">
		<span>总共${all }个,每页10个,${page+1 }/${allPage }页</span>
		<a href="<%=request.getContextPath()%>/Main_viewVieoMainPage.action?pageType=0&page=${page}">上一页</a>
		<a href="<%=request.getContextPath()%>/Main_viewVieoMainPage.action?pageType=1&page=${page}">下一页</a>
		<span>跳转到:</span>
			<form action="" method="get"  class="page-input">
				<input type="text" name="page"></input>
				<a href="javascript:void(0)"><input type="submit" value="确定" class="submitBtn"/></a>
			</form>
	</div>
</body>
</html>