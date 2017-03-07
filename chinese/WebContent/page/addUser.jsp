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
	  <form action="../Account_addAccount.action" method="post" enctype="multipart/form-data" onsubmit="return check()">
	   <div class="form-group">
			<label class="col-sm-2 control-label" for="username">用户名<div id="message1"></div></label>
			<div class="col-sm-10">	 
				 <input id="username" name='username' class="form-control" type="text" placeholder="用户名" required><br>
			</div>
			 
	   </div>
		
		<div class="form-group">
			<label class="col-sm-2 control-label" for="password">密码</label>
			<div class="col-sm-10">	 
				 <input id="password" name='password' class="form-control" type="password" required><br>
			</div>
	    </div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="password1">确认密码</label>
			<div class="col-sm-10">
				<input id="password1" name='password1' class="form-control" type="password" required>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label" for="permission">用户类型</label>
			<div class="col-sm-10">
				<select id="permission" name='permission' class="form-control">
					<option value="3">普通用户</option>
					<option value="2">教师</option>
					<option value="1">管理员</option>
				</select>
			</div>
		</div>
		<br/>
		<br/>
		<input type="hidden" value="1" name="adminadd"/>
		<span style="color:red" id="message"></span><br/>
		<input type="submit" class="btn btn-primary " value="新增"/>
	  </form>
	</div>
</div>	
<script>
function check(){
		var username = $("#username").val();
		var password = $("#password").val();
		var password2 = $("#password1").val();
		if(username==""||password==""){
			$("#message").html("密码或用户名为空！");
			return false;
		}else if(password!=password2){
			$("#message").html("两次密码不一致！");
			return false;
		}else if(username.length<6||password.length<6){
			$("#message").html("密码或用户名过于简单！");
			return false;
		}
		return true;
	}
	$("#username").change(function(){
		$.ajax({
			type:"POST",
			data:{"username":$("#username").val()},
			url:"../Account_checkAccount.action",
			success:function(data){
				if(data=="1"){
					$("#message1").html("<span class='glyphicon  glyphicon-remove' style='color: rgb(255, 2, 0);'> No</span>");
					return false;
				}else{
					$("#message1").html("<span class='glyphicon glyphicon-ok' style='color: rgb(0, 241, 142);'> Okay</span>");
					return true;
				}
			},
			error:function(msg){
			}
		})
	})
//文本编辑器
$('.jqte-test').jqte();

</script>
</body>
</html>