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
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/animate.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/style.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/login.css" rel="stylesheet">
    
    <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <!-- edit -->
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/js/jquery-te-1.4.0.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-te-1.4.0.min.js" charset="utf-8"></script>	
</head>
<body>
<div class="container">
	<div class="row">
	  	<s:iterator id="items" value="#request.activitys">
	  		
	  		<div class="panel panel-default">
			    <div class="panel-heading">
			        <h3 class="panel-title">
			            <ul>
				  			<li><h3><s:property value="#items.title"/></h3></li>
				  		</ul>
				  		<ul>
				  			<li><s:property value="#items.time"/></li>
				  		</ul>
			        </h3>
			    </div>
			    <div class="panel-body">
			     ${request.activitys[0].content }
			     
			     <br/>
			     <s:iterator id="images" value="#items.activityImages">
			     	<img src="<%=request.getContextPath()%>/upload/<s:property value="#images.imageName"/>" width="60%" style="margin-left:20%"/>
			    	<br/>
			     </s:iterator>
			    </div>
			</div>
	  	</s:iterator>
	</div>
</div>	
<script>
//文本编辑器
$('.jqte-test').jqte();

</script>
</body>
</html>