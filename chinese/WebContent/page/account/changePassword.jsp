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
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="../../css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="../../css/animate.css" rel="stylesheet">
    <link href="../../css/style.css" rel="stylesheet">
    <link href="../../css/login.css" rel="stylesheet">
    
    <script src="../../js/jquery.min.js"></script>
</head>
<body>
<div class="container">
	<div class="row">
		<form action="../../Account_changePassword.action" method="post" onsubmit="return check()">
			<div class="form-group">
			<label class="col-sm-2 control-label" for="oldpassword">原始密码</label>
				<div class="col-sm-10">	 
					 <input id="oldpassword" name='password' class="form-control" type="password" id="oldpassword"><br>
				</div>
	    	</div>
	    	
	    	<div class="form-group">
			<label class="col-sm-2 control-label" for="newpassword">输入密码</label>
				<div class="col-sm-10">	 
					 <input id="newpassword" name='newpassword' class="form-control" type="password" id="password1"><br>
				</div>
	    	</div>
	    	
	    	<div class="form-group">
			<label class="col-sm-2 control-label" for="comfirmpassword">确认密码</label>
				<div class="col-sm-10">	 
					 <input id="comfirmpassword" name='comfirmpassword' class="form-control" type="password" id="password2"><br>
				</div>
	    	</div>
	    	<span id="message" style="color:red;margin-left:30%;"></span><br/><br/>
	    	<input type="submit" value="修改" class="btn btn-primary" style="width:50%;margin-left:19%;"/>
		</form>
	</div>
</div>	
<script>
   	function check(){
   		var oldpassword = $("#oldpassword").val();
   		var password = $("#password1").val();
   		var password2 = $("#password2").val();
   		if(oldpassword==""||password==""){
   			$("#message").html("密码为空！");
   			return false;
   		}else if(password!=password2){
   			$("#message").html("两次密码不一致！");
   			return false;
   		}else if(password.length<6){
   			$("#message").html("密码过于简单！");
   			return false;
   		}
   		return true;
   	}
   	
   </script>
</body>
</html>