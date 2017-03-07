<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title>查看信息</title>
<meta name="keywords" content="">
    <meta name="description" content="">
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="../../css/animate.css" rel="stylesheet">
    <link href="../../css/style.css" rel="stylesheet">
    <link href="../../css/login.css" rel="stylesheet">
    
    <script src="../../js/jquery.min.js"></script>
    
    <script src="../../js/fileinput.js" type="text/javascript"></script>
    <script src="../../js/fileinput_locale_zh.js" type="text/javascript"></script>
    <link href="../../css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
    
    
    <!-- edit -->
	<link type="text/css" rel="stylesheet" href="../js/jquery-te-1.4.0.css">
	<script type="text/javascript" src="../js/jquery-te-1.4.0.min.js" charset="utf-8"></script>
    
</head>
<body>
<div class="container">
	<div class="row">
	  <form action="../../Main_addInstitution.action" method="post" enctype="multipart/form-data">
		<div class="form-group">
			<label class="col-sm-2 control-label" for="Shoethumbnail">机构图片</label>
			<div class="col-sm-10">	 
				 <input id="Shoethumbnail" name='file' class="file" type="file" multiple data-min-file-count="1" required><br>
			</div>
	   </div>
	   <div class="form-group">
			<label class="col-sm-2 control-label" for="videoName">机构名称</label>
			<div class="col-sm-10">	 
				 <input id="videoName" name='instituName' class="form-control" type="text" placeholder="机构名称" required><br>
			</div>
	   </div>
	   <div class="form-group">
			<label class="col-sm-2 control-label" for="url">机构链接</label>
			<div class="col-sm-10">	 
				 <input id="url" name='url' class="form-control" type="text" placeholder="机构链接(不要添加http://或https://)" required><br>
			</div>
	   </div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="instroduce">概述</label>
			<div class="col-sm-10">	 
				 <input id="instroduce" name='instroduce' class="form-control" type="text"><br>
			</div>
	    </div>
	    <br/>
	    
		<div class="form-group">
			<label class="col-sm-2 control-label" for="instroduce"></label>
			<div class="col-sm-10">	 
				 <input type="submit" class="btn btn-primary " value="上传"/><br/>
			</div>
	    </div>
		
	  </form>
	</div>
</div>	
</body>
</html>