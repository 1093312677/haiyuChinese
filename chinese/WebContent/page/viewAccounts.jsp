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
	  <table class="table table-hover">
	  		<tr>
	  			<td>头像</td>
	  			<td>姓名</td>
	  			<td>性别</td>
	  			<td>出生日期</td>
	  			<td>地址</td>
	  			<td>用户名</td>
	  			<td>用名类型</td>
	  			<td>介绍</td>
	  			<td>操作</td>
	  		</tr>
	  	<s:iterator id="item" value="#request.userInfors">
	  		<tr>
	  		
	  			<s:if test="#item.userInformation.head !='nohead.png'">
	  				<td><img src='upload/<s:property value="#item.userInformation.head"/>' width='50px'/> </td>
	  			</s:if>
	  			<s:else>
	  				<td><img src='img/nohead.png' width='50px'/></td>
	  			</s:else>
	  			
	  			
	  			
	  			<td><s:property value="#item.userInformation.name"/></td>
	  			<td><s:property value="#item.userInformation.sex"/></td>
	  			<td><s:property value="#item.userInformation.birthday"/></td>
	  			<td><s:property value="#item.userInformation.address"/></td>
	  			<td><s:property value="#item.username"/></td>
	  			<s:if test="#item.permission==1">
	  				<td>管理员</td>
	  			</s:if>
	  			<s:elseif test="#item.permission==2">
	  				<td>教师</td>
	  			</s:elseif>
	  			<s:elseif test="#item.permission==3">
	  				<td>学员</td>
	  			</s:elseif>
	  			<td><s:property value="#item.userInformation.introduce"/></td>
	  			<td><a href='Account_deleteUser.action?id=<s:property value="#item.id"/>&inforId=<s:property value="#item.userInformation.id"/>'><button class="btn btn-danger">删除</button></a></td>
	  		</tr>
	  	</s:iterator>
	  </table>
	</div>
</div>	
<script>
//文本编辑器
$('.jqte-test').jqte();

</script>
</body>
</html>