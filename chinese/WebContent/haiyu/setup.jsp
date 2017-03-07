<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<meta name="keywords" content="">
    <meta name="description" content="">
    <title>嗨语-对外汉语之家教学资源平台</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/haiyu/css/public.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/haiyu/css/index.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/haiyu/css/mF_fancy.css">
    <link rel="Shortcut Icon" href="<%=request.getContextPath()%>/haiyu/images/ico.png">
</head>
<body >
	<!-- 头部 -->
	<header>
		<div class="center clearfix">
		<div class="logo-box"><img src="<%=request.getContextPath()%>/haiyu/images/logo.png"></div>
			<div class="logo-box"></div>
			<div class="login">
				<s:if test="#session.username==null">
					<a href="<%=request.getContextPath()%>/page/register.jsp">学员注册</a>
					<span>&nbsp;|&nbsp;</span>
					<a href="<%=request.getContextPath()%>/login.html">登录</a>
				</s:if>
				<s:else>
					欢迎！ 	${username }<a href="<%=request.getContextPath()%>/haiyu/setup.jsp">个人中心</a>|<!--(经验${exp })-->
					<a href="<%=request.getContextPath()%>/Account_loginOutOther.action">注销</a>
					<!-- <a href="<%=request.getContextPath()%>/Account_signInTime.action">签到</a> -->
					
				</s:else>
				<a href="javascript:void(0)" class="gengduo"></a>
			</div>
		</div>
	</header>
	
	<!-- 导航栏 -->
	<nav>
		<ul class="nav center clearfix">
			<li>
				<span>|</span>
				<a href="<%=request.getContextPath()%>/Main_mainPage.action">
					<span class="zw">网站首页</span>
					<span>home</span>
				</a>
			</li>

			<li>
				<span>|</span>
				<a href="javascript:void(0)">
					<span class="zw">教学资源</span>
					<span>Teaching Resources</span>
				</a>
				<ul>
					<li><a href="<%=request.getContextPath()%>/Main_viewArticleMainPage.action?viewType=video">教学视频</a></li>
					<li><a href="<%=request.getContextPath()%>/Main_viewArticleMainPage.action?viewType=article">教学文件</a></li>
				</ul>
			</li>
			<li>
				<span>|</span>
				<a href="javascript:void(0)">
					<span class="zw">信息发布</span>
					<span>Team Profile</span>
				</a>
				<ul>
					<li><a href="<%=request.getContextPath()%>/Main_viewInstitutionMainPage.action">合作机构</a></li>
					<li><a href="<%=request.getContextPath()%>/Activity_viewActivitys.action">活动信息</a></li>
				</ul>
			</li>
			<li>
				<span>|</span>
				<a href="javascript:void(0)">
					<span class="zw">关于嗨语</span>
					<span>About Us</span>
				</a>
				<ul>
					<li><a href="<%=request.getContextPath()%>/haiyu/about-haiyu.jsp">机构介绍</a></li>
					<li><a href="<%=request.getContextPath()%>/Main_viewTeacher.action">教师档案</a></li>
				</ul>
			</li>
			<li>
				<a href="<%=request.getContextPath()%>/haiyu/contact.jsp">
					<span class="zw">联系我们</span>
					<span>Contact Us</span>
				</a>
			</li>
		</ul>
	</nav>

	<!-- 主体部分 -->
	<div class="main">
		<div class="main-body center">
			<!-- 轮播图 
			<div id="boxID">
				<div class="loading"><img src="img/loading.gif" alt="请稍候..." /></div>
				<div class="pic">
					<ul class="clearfix">
						<li>
							<a href="<%=request.getContextPath()%>/haiyu/about-haiyu.jsp">
								<img src="<%=request.getContextPath()%>/haiyu/images/banner2_03.png" title="诚信为本">
							</a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/Main_viewArticleMainPage.action?viewType=video">
								<img src="<%=request.getContextPath()%>/haiyu/images/banner1_07.png" title="天行健">
							</a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/haiyu/contact.jsp">
								<img src="<%=request.getContextPath()%>/haiyu/images/banner3.jpg" title="汉语之家">
							</a>
						</li>
					</ul>
				</div>
			</div>
-->
			<!-- 主体内容 -->
			<div class="article clearfix" style="padding-top: 0; margin: 0;">
				<div class="setup">
					<ul>
						<li><a href="javascript:void(0)" class="shezhi">设置</a></li>
						<li><a href="<%=request.getContextPath()%>/Account_viewOneEntity.action" target="infor">个人资料</a></li>
						<li><a href="<%=request.getContextPath()%>/page/account/changePassword.jsp" target="infor">修改密码</a></li>
						
						<!-- <li><a href="javascript:void(0)">积分</a></li> -->
						<s:if test="#session.permission==2">
							<li><a href="javascript:void(0)">视频</a>
								<ul>
									<li><a href="<%=request.getContextPath()%>/page/uploadVideo.jsp" target="infor">上传视频</a></li>
									<li><a href="<%=request.getContextPath()%>/Main_viewVideoTeacher.action?yesNo=yes" target="infor">查看视频</a></li>
									<li><a href="<%=request.getContextPath()%>/Main_viewVideoTeacher.action?yesNo=no" target="infor">查看未通过的视频</a></li>
									<li><a href="<%=request.getContextPath()%>/Main_viewVideoTeacher.action?yesNo=audit" target="infor">查看正在审核的视频</a></li>
								</ul>
							</li>
					<!-- 
							<li><a href="javascript:void(0)">文章/教案</a>
								<ul>
									<li><a href="<%=request.getContextPath()%>/page/uploadArticle.jsp" target="infor">上传文章</a></li>
									<li><a href="<%=request.getContextPath()%>/page/article/uploadArticleWord.jsp" target="infor">上传教案</a></li>
									<li><a href="<%=request.getContextPath()%>/Main_viewArticleTeacher.action?yesNo=yes" target="infor">查看文章/教案</a></li>
									<li><a href="<%=request.getContextPath()%>/Main_viewArticleTeacher.action?yesNo=no" target="infor">查看未通过的文章/教案</a></li>
									<li><a href="<%=request.getContextPath()%>/Main_viewArticleTeacher.action?yesNo=audit" target="infor">查看正在审核的文章/教案</a></li>
								</ul>		
							</li>
					 -->
							<li><a href="javascript:void(0)">文件</a>
								<ul>
									<li><a href="<%=request.getContextPath()%>/page/article/uploadArticlePPT.jsp" target="infor">上传课文/教案/讲义</a></li>
									<li><a href="<%=request.getContextPath()%>/Teach_viewPassTeach.action" target="infor">查看文件</a></li>
									<li><a href="<%=request.getContextPath()%>/Teach_viewNotPassTeach.action" target="infor">查看未通过的文件</a></li>
									<li><a href="<%=request.getContextPath()%>/Teach_viewPassingTeach.action" target="infor">查看正在审核的文件</a></li>	
								</ul>
							</li>
						</s:if>
					</ul>
				</div>

				<div class="set-iframe">
					<iframe src="<%=request.getContextPath()%>/Account_viewOneEntity.action" name="infor">
						
					</iframe>
				</div>
			</div>
		</div><!-- main-body -->
	</div><!-- main -->

	<footer>
		<ul>
			<li><span>技术支持：</span><a href="http://lzsfe.cn/weily">微力实验室</a></li>
			<li><span>联系电话：</span><a href="javascript:void(0)">18408243115</a></li>
			<li><span>邮箱地址：</span><a href="javascript:void(0)">haiyuchinese@foxmail.com</a></li>
		</ul>
		<p>&copy;四川省成都市嗨语-对外汉语之家教学资源平台<a href="#">www.haiyuchinese.cn</a></p>
	</footer>
</body>
<script type="text/javascript" src="<%=request.getContextPath()%>/haiyu/js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/haiyu/js/index.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/haiyu/js/myfocus-2.0.4.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/haiyu/js/mF_fancy.js"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/haiyu/js/jquery-ui.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/haiyu/js/jquery-mousewheel.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/haiyu/js/jScrollbar.jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("iframe").jScrollbar();
	})
</script>
</html>