<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

    <title> 注册</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    <link href="../css/login.css" rel="stylesheet">
    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
  
    <script>
        if (window.top !== window.self) {
            window.top.location = window.location;
        }
    </script>
	<style>
		.no-margins{
			color:black;
		}
	form{
		position:absolute;
			margin-top:-120px;
		}
	</style>
</head>
<body class="signin">
	<img src="<%=request.getContextPath() %>/haiyu/images/logo.png"/>
    <div class="signinpanel">
        <div class="row">
            <div class="col-sm-12">
                <form method="post" action="../Account_addAccount.action" onsubmit="return check()">
                    <br/>
                    <h4 class="no-margins">注册</h4>
                    <h4 class="no-margins">Registration</h4>
                    <input type="text" class="form-control uname" placeholder="昵称(Nickname)" name="username" id="username"/>
                    <div id="message1"></div>
                    <input type="password" class="form-control pword m-b" placeholder="密码(password)" name="password"  id="password"/>
                    <input type="password" class="form-control pword m-b" placeholder="确认密码(Confirm password)"  id="password2"/>
                    <input type="text" class="form-control glyphicon glyphicon-envelope" placeholder="邮箱(Email)" name="email" id="email"/>
                   	<input type="text" class="form-control glyphicon glyphicon-globe" placeholder="国籍(nationality)" name="nationality" id="nationality"/>
                   	<input type="text" class="form-control glyphicon glyphicon-flag" placeholder="使用语言(useingLanguage)" name="useingLanguage" id="useingLanguage"/>
                   
                    <input type="hidden" name="permission" value="3"/>
                    <input type="hidden" name="adminadd" value="0"/>
                    <span style="color:red" id="message"></span>
                    <button class="btn btn-success btn-block">注册</button>
                    <br/>
                    <a href="../login.html">返回(back)</a>
                </form>
            </div>
        </div>
    </div>
    <script>
   	function check(){
   		var username = $("#username").val();
   		var password = $("#password").val();
   		var password2 = $("#password2").val();
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
   </script>
</body>
</html>