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
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet">
    
    <script src="js/jquery.min.js"></script>
    
    <script src="js/fileinput.js" type="text/javascript"></script>
    <script src="js/fileinput_locale_zh.js" type="text/javascript"></script>
    <link href="css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
    
    
    <!-- edit -->
	<link type="text/css" rel="stylesheet" href="js/jquery-te-1.4.0.css">
	<script type="text/javascript" src="js/jquery-te-1.4.0.min.js" charset="utf-8"></script>
    
</head>
<body>
<div class="container">
	<div class="row">
	  <form action="Main_updateInstitution.action" method="post">
	   <div class="form-group">
			<label class="col-sm-2 control-label" for="url">机构链接</label>
			<div class="col-sm-10">	 
				 <input id="url" name='url' class="form-control" type="text" placeholder="机构链接" value="${request.institutions[0].url }"><br>
			</div>
	   </div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="instituName">机构名称</label>
			<div class="col-sm-10">	 
				 <input id="instituName" name='instituName' class="form-control" type="text" value="${request.institutions[0].instituName }"><br>
			</div>
	    </div>
	    <div class="form-group">
			<label class="col-sm-2 control-label" for="instroduce">机构简介</label>
			<div class="col-sm-10">	 
				 <input id="instroduce" name='instroduce' class="form-control" type="text" value="${request.institutions[0].instroduce }"><br>
			</div>
	    </div>
		<input type="hidden" name="instituId" value="${request.institutions[0].id }"/>
		<input type="hidden" name="imageUrl" value="${request.institutions[0].imageUrl }"/>
		<br/>
		<input type="submit" class="btn btn-primary " value="更新"/>
		
	  </form>
	</div>
</div>	
<script>
//文本编辑器
$('.jqte-test').jqte();

</script>
</body>
</html>