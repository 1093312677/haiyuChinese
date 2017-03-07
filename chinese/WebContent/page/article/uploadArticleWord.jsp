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
    
    <!-- baidu edit -->
    <script type="text/javascript" charset="utf-8" src="<%=request.getContextPath() %>/js/baidu/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="<%=request.getContextPath() %>/js/baidu/ueditor.all.min.js"> </script>
</head>
<style>
#content{
	position:absolute;
	margin-top:-200px;
}
</style>
<body>
<div class="container">
	<div class="row">
	  <form action="<%=request.getContextPath() %>/Main_addArticle.action" method="post" enctype="multipart/form-data">
	   <div class="form-group">
			<label class="col-sm-2 control-label" for="title">标题</label>
			<div class="col-sm-10">	 
				 <input id="title" name='title' id="title" class="form-control" type="text" placeholder="标题" required><br>
			</div>
	   </div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="time">上传时间</label>
			<div class="col-sm-10">	 
				 <input id="time" name='time' id="time" class="form-control" type="date" required><br>
			</div>
	    </div>
	    
	    <div class="form-group">
			<label class="col-sm-2 control-label" for="editor">内容</label>
		    <div class="col-sm-10">	
		     	<script id="editor" name="content" type="text/plain" style="width:100%;height:260px;"></script>
		     </div>
		</div>
		<br/>
		<div class="form-group">
			<label class="col-sm-2 control-label"></label>
		   <div class="col-sm-10">
		   		<br/>
		   		<input type="hidden" name="type" value="教案"/> 
				<input type="submit" class="btn btn-primary " value="上传"/>
			</div>
		</div>
	   </form>
	</div>
</div>	
<script type="text/javascript">
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');
    function getContent() {
        var arr = [];
        arr.push(UE.getEditor('editor').getContent());
        //var content = document.getElementById("content");
        //content.innerHTML=arr;
        //alert(content.value)
    }
</script>
</body>
</html>