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
	  			<td>标题</td>
	  			<td>上传时间</td>
	  			<td>类型</td>
	  			<td>上传人</td>
	  			<td>操作</td>
	  			<td>查看</td>
	  		</tr>
	  	<s:iterator id="articles" value="#request.articles">
	  		<tr>
	  			<td><s:property value="#articles.title"/></td>
	  			<td><s:property value="#articles.time"/></td>
	  			<td><s:property value="#articles.type"/></td>
	  			<td><s:property value="#articles.author"/></td>
	  			<td><a href="Main_getUpdateArticle.action?articleId=<s:property value="#articles.id"/>"><button class="btn btn-info btn-xs" >更新</button></a>
	  			<br/>
	  			<br/>	
	  			<a href="Main_deleteArticle.action?articleId=<s:property value="#articles.id"/>"><button class="btn btn-danger btn-xs">删除</button></a></td>
	  			<td><a href="Main_viewArticleDetials.action?articleId=<s:property value="#articles.id"/>"><button class="btn btn-primary">查看</button></a></td>
	  			
	  		</tr>
	  	</s:iterator>
	  	<s:if test="#session.permission ==1">
	  		<tr>
	  		<td>${permission }共${all }条数据,当前${page+1 }/${allPage }页</td>
	  		<td><a href="<%=request.getContextPath()%>/Main_viewArticle.action?pageType=0&page=${page}"><input type='button' value="上一页" class="btn btn-primary"/></a></td>
	  		<td><a href="<%=request.getContextPath()%>/Main_viewArticle.action?pageType=1&page=${page}"><input type='button' value="下一页" class="btn btn-primary"/></a></td>
	  		<td></td>
	  		<td>
	  			<form action="<%=request.getContextPath()%>/Main_viewArticle.action" method="get">
	  				<input type='text' name="page" placeholder="请输入跳转的页数" class="form-control"/></td>
	  		<td>
	  				<input type='submit' value="跳转" class="btn btn-primary"/>
	  			</form>
	  		</td>
	  	</tr>
	  	</s:if>
	  </table>
	</div>
</div>	
<script>
//文本编辑器
$('.jqte-test').jqte();

</script>
</body>
</html>