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
	  <form action="Account_modifyInfor.action" method="post">
	  	<input type="hidden" value="${userInfors[0].id }" name="inforId"/>
	  	<input type="hidden" value="${userInfors[0].account.id }" name="id"/>
		昵称
		<input type="text" readonly name="username" class="form-control" value="${username }"/>
		姓名
		<input type="text" name="name" class="form-control" value="${userInfors[0].name }"/>
		性别 
		${userInfors[0].sex }
		<select class="form-control" name="sex">
			<option value="男">男</option>
			<option value="女">女</option>
		</select>
		邮箱
		<input type="text" name="email" class="form-control" value="${userInfors[0].email }"/>
		国籍
		<input type="text" name="nationality" class="form-control" value="${userInfors[0].nationality }"/>
		使用语言
		<input type="text" name="useingLanguage" class="form-control" value="${userInfors[0].useingLanguage }"/>
		现在是否在中国	
		<input type="text" name="inChina" class="form-control" value="${userInfors[0].inChina }"/>
		<!-- 只有学生显示 -->
		<s:if test="#session.permission==3">
			汉语水平
			<input type="text" name="chineseLevel" class="form-control" value="${userInfors[0].chineseLevel }"/>
			是否参加过HSK考试
			<input type="text" name="hsk" class="form-control" value="${userInfors[0].hsk }"/>
			期望达到水平
			<input type="text" name="expectLevel" class="form-control" value="${userInfors[0].expectLevel }"/>
		</s:if>	
		
		出生日期
		<input type="date" name="birthday" class="form-control" value="${userInfors[0].birthday }"/>
		地址
		<input type="text" name="address" class="form-control" value="${userInfors[0].address }"/>
		<input type="hidden" name="head" class="form-control" value="${userInfors[0].head }"/>
		介绍
		<textarea name="introduce" class="jqte-test form-control" rows="5" id="Shoeintro" placeholder="介绍" required>
			${userInfors[0].introduce }
		</textarea>
		<br/>
		<input type="submit" class="btn btn-primary " value="更新"/>
	  </form>
	  <br/>
			<br/>
				<br/>
		
	<!-- 	
	<form action="Main_addHead.action" method="post" enctype="multipart/form-data">
	 	<s:iterator value="#request.userInfors" id="userInfors">
			<s:if test="#userInfors.head !='nohead.png'">
			 	<img src='upload/<s:property value="#userInfors.head"/>' width='150px'/>
			 </s:if>
			<s:else>
			  <img src='img/nohead.png' width='150px'/>
			</s:else>	
	 	</s:iterator>
		<br/>
		<input type="hidden" value="${userInfors[0].head }" name="head"/>
		<input id="Shoethumbnail" name='file' width="50%" class="file" type="file" multiple data-min-file-count="1" required><br>
		<input type="submit" class="btn btn-primary " value="更改头像"/>
	 </form>
	 -->	
	</div>
</div>	
<script>
//文本编辑器
$('.jqte-test').jqte();

</script>
</body>
</html>