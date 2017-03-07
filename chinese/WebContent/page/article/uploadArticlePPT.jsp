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
    
    
    <!-- edit -->
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/js/jquery-te-1.4.0.css">
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-te-1.4.0.min.js" charset="utf-8"></script>
    
</head>
<body>
<div class="container">
	<div class="row">
	  <form action="<%=request.getContextPath() %>/Teach_uploadTeach.action" method="post" enctype="multipart/form-data">
	   <div class="form-group">
			<label class="col-sm-2 control-label" for="Shoethumbnail">文件</label>
			<div class="col-sm-10">	 
				 <input id="Shoethumbnail" name='file' class="file" type="file" multiple data-min-file-count="1" required><br>
			</div>
	   </div>
	   <div class="form-group">
			<label class="col-sm-2 control-label" for="title">标题</label>
			<div class="col-sm-10">	 
				 <input id="title" name='title' class="form-control" type="text" placeholder="标题" required><br>
			</div>
	   </div>
		<br/>
		
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="time">上传时间</label>
			<div class="col-sm-10">	 
				 <input id="time" name='time' class="form-control" type="date"><br>
			</div>
	    </div>
		<br/>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="type">上传类型</label>
			<div class="col-sm-10" >	 
				<select name="type" class="form-control">
					<option value="lesson">课文</option>
					<option value="teach">教案</option>
					<option value="ppt">讲义</option>
				</select>
			</div>
	    </div>
		<br/>
		
		
		<div class="form-group">
			<label class="col-sm-2 control-label"></label>
		   <div class="col-sm-10">
		   		<br/>
		   		<!-- <input type="hidden" name="type" value="ppt"/>  -->
				<input type="submit" class="btn btn-primary " value="上传"/>
			</div>
		</div>
	  </form>
	</div>
</div>	
<script>
//文本编辑器
$('.jqte-test').jqte();

</script>
</body>
</html>