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
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    <link href="../css/login.css" rel="stylesheet">
    
    <script src="../js/jquery.min.js"></script>
    
    <script src="../js/fileinput.js" type="text/javascript"></script>
    <script src="../js/fileinput_locale_zh.js" type="text/javascript"></script>
    <link href="../css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
    
    
    <!-- edit -->
	<link type="text/css" rel="stylesheet" href="../js/jquery-te-1.4.0.css">
	<script type="text/javascript" src="../js/jquery-te-1.4.0.min.js" charset="utf-8"></script>
    
</head>
<body>
<div class="container">
	<div class="row">
	  <form action="../Main_addVideo.action" method="post" enctype="multipart/form-data">
		<div class="form-group">
			<label class="col-sm-2 control-label" for="Shoethumbnail">视频封面图</label>
			<div class="col-sm-10">	 
				 <input id="Shoethumbnail" name='file' class="file" type="file" multiple data-min-file-count="1" required><br>
			</div>
	   </div>
	   <div class="form-group">
			<label class="col-sm-2 control-label" for="videoName">视频地址</label>
			<div class="col-sm-10">	 
				 <input id="videoName" name='videoName' class="form-control" type="text" placeholder="视频地址" required><br>
			</div>
	   </div>
	   <div class="form-group">
			<label class="col-sm-2 control-label" for="title">标题</label>
			<div class="col-sm-10">	 
				 <input id="title" name='title' class="form-control" type="text" placeholder="标题" required><br>
			</div>
	   </div>
	   <div class="form-group">
			<label class="col-sm-2 control-label" for="lessonType">课型</label>
			<div class="col-sm-10">	 
				 <input id="lessonType" name='lessonType' class="form-control" type="text" placeholder="课型" required><br>
			</div>
	   </div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="speaker">主讲人</label>
			<div class="col-sm-10">	 
				 <input id="speaker" name='speaker' class="form-control" type="text" placeholder="主讲人" required><br>
			</div>
	   </div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="updateTime">上传时间</label>
			<div class="col-sm-10">	 
				 <input id="updateTime" name='updateTime' class="form-control" type="date"><br>
			</div>
	    </div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="Shoeintro">视频介绍</label>
			<div class="col-sm-10">
				<textarea name="introduce" class="jqte-test form-control" rows="5" id="Shoeintro" placeholder="视频介绍" required></textarea>
			</div>
		</div>
		<input type="hidden" name="type" value="视频"/>
		<input type="hidden" name="saveType" value="1"/>
		<br/>
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
$('.jqte-test').jqte();

</script>
</body>
</html>