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
    <link href="<%=request.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/animate.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/style.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/login.css" rel="stylesheet">
    
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    
    <script src="<%=request.getContextPath() %>/js/fileinput.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath() %>/js/fileinput_locale_zh.js" type="text/javascript"></script>
    <link href="<%=request.getContextPath() %>/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
    
    
     <!-- baidu edit -->
    <script type="text/javascript" charset="utf-8" src="<%=request.getContextPath() %>/js/baidu/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="<%=request.getContextPath() %>/js/baidu/ueditor.all.min.js"> </script>

</head>
<body>
<div class="container">
	<div class="row">
	  <form action="<%=request.getContextPath() %>/Activity_saveActivity.action" method="post" enctype="multipart/form-data">
	   <div class="form-group">
			<label class="col-sm-2 control-label" for="title">标题</label>
			<div class="col-sm-10">	 
				 <input id="title" name='title' class="form-control" type="text" placeholder="标题" required><br>
			</div>
	   </div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="time">上传时间</label>
			<div class="col-sm-10">	 
				 <input id="time" name='time' class="form-control" type="date"><br>
			</div>
	    </div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="editor">内容</label>
		    <div class="col-sm-10">	
		     	<script id="editor" name="content" type="text/plain" style="width:100%;height:260px;"></script>
		     </div>
		</div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="Shoethumbnail">图片</label>
			<div class="col-sm-10">	 
				 <input id="Shoethumbnail" name='file' class="file" type="file" multiple data-max-file-count="7"><br>
			</div>
	   </div>
	   <div class="form-group">
			<label class="col-sm-2 control-label"></label>
		   <div class="col-sm-10">
		   		<br/>
				<input type="submit" class="btn btn-primary " value="上传"/>
			</div>
		</div>
	  </form>
	</div>
</div>	
<script>
//文本编辑器
 var ue = UE.getEditor('editor');

</script>
</body>
</html>