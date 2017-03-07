<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>嗨语-对外汉语之家教学平台</title>
<link rel="stylesheet" type="text/css" href="haiyu/css/public.css">
<link rel="stylesheet" type="text/css" href="haiyu/css/index.css">
 <link rel="Shortcut Icon" href="<%=request.getContextPath()%>/haiyu/images/ico.png">
</head>
<body>
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
			<!-- 主体内容 -->
			<div class="article clearfix">
				<!-- 左边窗口 -->
				<div class="vedio">
					<div class="iframe">
						<s:if test="#session.viewType=='video'">
							<iframe src="<%=request.getContextPath() %>/Main_viewVieoMainPage.action" scrolling="auto" name="articleContent">
							
							</iframe>
						</s:if>
						<s:else>
							<iframe src="<%=request.getContextPath() %>/haiyu/statement.jsp" scrolling="auto" name="articleContent">
							
							</iframe>
						</s:else>
						
					</div>
				</div>

				<!-- 侧边栏 -->
				<div class="side-right">
					<div style="margin-bottom: 50px;">
						<a href="<%=request.getContextPath()%>/haiyu/trwenhua.jsp#section" class="side side1" title="立刻来感受中华传统文化博大精深">
							<p>传统文化</p>
							<p>立刻来感受中华传统文化博大精深</p>
						</a>
						<a href="<%=request.getContextPath()%>/haiyu/trjieri.jsp#section" class="side side2" title="切身体会中华传统节日的欢乐沸腾">
							<p>传统节日</p>
							<p>切身体会中华传统节日的欢乐沸腾</p>
						</a>
						<a href="<%=request.getContextPath()%>/haiyu/trmeishi.jsp#section" class="side side3" title="中华传统美食给你舌尖上的诱惑">
							<p>传统美食</p>
							<p>中华传统美食给你舌尖上的诱惑</p>
						</a>
					</div>

					<!-- 教材 -->
					
					<div class="caption">
						<h3>教材</h3>
						<a href="javascript:void(0)" class="seeMore">查看更多 ▼</a>
					</div>
					<div class="history hisMore clearfix" id="file">
						<!-- 
						<s:iterator id="articles" value="#request.articles">
							<s:if test="#session.username==null">
                        		<a href="login.html" class="clearfix" target="articleContent">
									<p><s:property value="#articles.title"/></p>
								</a>
                        	</s:if>
                        	<s:else>
                        		<s:if test="#articles.type!='教案'">
                        			<a href="Main_viewArticleDetials.action?articleId=<s:property value="#articles.id"/>&viewType=article" class="clearfix" target="articleContent">
										<p><s:property value="#articles.title"/></p>
									</a>
                        		</s:if>
                        	</s:else>
	  					</s:iterator>
	  					 -->
	  					<s:iterator id="items" value="#request.teachs">
							<s:if test="#session.username==null">
                        		<s:if test="#items.type=='lesson'">
	                        		<a href="login.html" class="clearfix" >
										<p><s:property value="#items.title"/></p>
									</a>
								</s:if>
                        	</s:if>
                        	<s:else>
                        		<s:if test="#items.type=='lesson'">
                        			<a href="<%=request.getContextPath()%>/upload/<s:property value="#items.fileName"/>" class="clearfix" target="_blank">
										<p><s:property value="#items.title"/></p>
									</a>
                        		</s:if>
                        	</s:else>
	  					</s:iterator>
					</div>
					
					<!-- 教案 -->
					
					<div class="caption">
						<h3>教案</h3>
						<a href="javascript:void(0)" class="seeMore">查看更多 ▼</a>
					</div>
					<div class="history hisMore clearfix" id="file">
						<!-- <s:iterator id="items" value="#request.articles">
							<s:if test="#session.username==null">
                        		<a href="login.html" class="clearfix" target="articleContent">
									<s:if test="#items.type=='教案'">
										<p><s:property value="#items.title"/></p>
									</s:if>
								</a>
                        	</s:if>
                        	<s:else>
                        		<s:if test="#items.type=='教案'">
                        			<a href="Main_viewArticleDetials.action?articleId=<s:property value="#items.id"/>&viewType=teach" class="clearfix" target="articleContent">
										<p><s:property value="#items.title"/></p>
									</a>
                        		</s:if>
                        	</s:else>
	  					</s:iterator> -->
	  					<s:iterator id="items" value="#request.teachs">
							
							<s:if test="#session.username==null">
                        		<s:if test="#items.type=='teach'">
	                        		<a href="login.html" class="clearfix" >
										<p><s:property value="#items.title"/></p>
									</a>
								</s:if>
                        	</s:if>
                        	<s:else>
                        		<s:if test="#items.type=='teach'">
                        			<a href="<%=request.getContextPath()%>/upload/<s:property value="#items.fileName"/>" class="clearfix" target="_blank">
										<p><s:property value="#items.title"/></p>
									</a>
                        		</s:if>
                        	</s:else>
	  					</s:iterator>
					</div>
					
					<!-- 讲义 -->
					<div class="caption">
						<h3>讲义</h3>
						<a href="javascript:void(0)" class="seeMore">查看更多 ▼</a>
					</div>
					<div class="history hisMore clearfix" id="file">
						<s:iterator id="items" value="#request.teachs">
							<s:if test="#session.username==null">
                        		<a href="login.html" class="clearfix" >
									<p><s:property value="#items.title"/></p>
								</a>
                        	</s:if>
                        	<s:else>
                        		<s:if test="#items.type=='ppt'">
                        			<a href="<%=request.getContextPath()%>/upload/<s:property value="#items.fileName"/>" class="clearfix" target="_blank">
										<p><s:property value="#items.title"/></p>
									</a>
                        		</s:if>
                        	</s:else>
	  					</s:iterator>
					</div>

					

				<!-- 	<div class="caption">
						<h3>联系我们</h3>
					</div>
					<div class="contactus clearfix">
						<p>TEL：18408243115</p>
						<p>QQ：2044369821</p>
						<p>微信关注我们：</p>
						<img src="images/erweima.jpg" width="60%">
					</div> -->
				</div><!-- side-right -->
			</div>
		</div><!-- main-body -->
	</div><!-- main -->

	<footer>
		<ul>
			<li><span>技术支持：</span><a href="http://git-sublime.github.io/test/weily">微力实验室</a></li>
			<li><span>联系电话：</span><a href="javascript:void(0)">18408243115</a></li>
			<li><span>邮箱地址：</span><a href="javascript:void(0)">haiyu-dwhyzj@foxmail.com</a></li>
		</ul>
		<p>&copy;成都市郫县红光镇西华大学对外汉语之家<a href="#">www.haiyuchinese.cn</a></p>
	</footer>
</body>
<script type="text/javascript" src="haiyu/js/jquery.js"></script>
<script type="text/javascript" src="haiyu/js/index.js"></script>
</html>