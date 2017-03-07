<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<meta name="keywords" content="">
    <meta name="description" content="">
    <title>嗨语-对外汉语之家教学平台</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/haiyu/css/public.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/haiyu/css/index.css">
</head>
<body >
	<!-- 头部 -->
	<header>
		<div class="center clearfix">
			<div class="logo-box"></div>
			<div class="login">
				<s:if test="#session.username==null">
					<a href="<%=request.getContextPath()%>/login.html">登陆</a>
					<span>/</span>
					<a href="<%=request.getContextPath()%>/page/register.jsp">注册</a>
				</s:if>
				<s:else>
					欢迎！ 	${username }(经验${exp })
					<a href="<%=request.getContextPath()%>/Account_loginOutOther.action">注销</a>
					<a href="<%=request.getContextPath()%>/Account_signInTime.action">签到</a>
					
				</s:else>
				<!-- <div class="search">
					<input type="text" placeholder="搜索"></input>
					<a href="javascript:void(0)"></a>
				</div> -->
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
					<li><a href="<%=request.getContextPath()%>/haiyu/vedio-zhaopin.html">教师招聘</a></li>
				</ul>
			</li>
			<li>
				<span>|</span>
				<a href="<%=request.getContextPath()%>/haiyu/about.jsp">
					<span class="zw">关于嗨语</span>
					<span>About Us</span>
				</a>
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
			<!-- 轮播图 -->
			<div class="roll">
				<ul class="clearfix" id="img-roll">
					<li>
						<a href="javascript:void(0)">
							<img src="<%=request.getContextPath()%>/haiyu/images/banner1_07.png">
						</a>
					</li>
					<li>
						<a href="javascript:void(0)">
							<img src="<%=request.getContextPath()%>/haiyu/images/banner2_03.png">
						</a>
					</li>
					<li>
						<a href="javascript:void(0)">
							<img src="<%=request.getContextPath()%>/haiyu/images/banner3.jpg">
						</a>
					</li>
				</ul>

				<!-- <ul class="contorl-btn">
					<li><a href="btn1"></a></li>
					<li><a href="btn2"></a></li>
					<li><a href="btn3"></a></li>
				</ul> -->
			</div>
			<div class="juanzhan"></div>
			<div class="article clearfix">
				<!-- 视频专区 -->
				<div class="vedio">
					<div class="clearfix">
						<h2>视频专区</h2>
					</div>

					<div class="vedio-box">
						
						<s:iterator id="videos" value="#request.videos">
						
							<s:if test="#session.username==null">
	                        	<div class="item">
									<h3><s:property value="#videos.title"/></h3>
									<div class="img">
										<img src='<%=request.getContextPath()%>/upload/<s:property value="#videos.imageUrl"/>'/>
										<a href='<%=request.getContextPath()%>/login.html'><img src="haiyu/images/play.jpg"/></a>
									</div>
									<p><s:property value="#videos.speaker"/></p>
									<div class="clearfix">
										<p class="lx">课型：<s:property value="#videos.lessonType"/></p>
										<p class="zj">[<s:property value="#videos.updateTime"/>]</p>
									</div>
								</div>
	                        </s:if>
	                        <s:else>
	                        	<div class="item">
									<h3><s:property value="#videos.title"/></h3>
									<div class="img">
										<img src='<%=request.getContextPath()%>/upload/<s:property value="#videos.imageUrl"/>'/>
										<a href='<%=request.getContextPath()%>/Main_playVideo.action?videoId=<s:property value="#videos.id"/>'><img src="haiyu/images/play.jpg"/></a>
									</div>
									<p><s:property value="#videos.speaker"/></p>
									<div class="clearfix">
										<p class="lx">课型：<s:property value="#videos.lessonType"/></p>
										<p class="zj">[<s:property value="#videos.updateTime"/>]</p>
									</div>
								</div>
	                        </s:else>
						</s:iterator>
					</div><!-- vedio-box -->
				</div><!-- vedio -->

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
					
					<!-- 教师档案 -教师头像 -->
					<div class="caption">
						<h3>教师档案</h3>
						<a href="javascript:void(0)">查看更多 ▼</a>
					</div>
					<div class="teacher-pic">
						<div class="teacher">
							<ul class="clearfix">
								<li><a href="javascript:void(0)">
									<img src="<%=request.getContextPath()%>/haiyu/images/th1.jpg">
								</a></li>
								<li><a href="javascript:void(0)">
									<img src="<%=request.getContextPath()%>/haiyu/images/th2.JPG">
								</a></li>
								<li><a href="javascript:void(0)">
									<img src="<%=request.getContextPath()%>/haiyu/images/th3.jpg">
								</a></li>
								<li><a href="javascript:void(0)">
									<img src="<%=request.getContextPath()%>/haiyu/images/th4.jpg">
								</a></li>

								<li><a href="javascript:void(0)">
									<img src="<%=request.getContextPath()%>/haiyu/images/th1.jpg">
								</a></li>
								<li><a href="javascript:void(0)">
									<img src="<%=request.getContextPath()%>/haiyu/images/th2.jpg">
								</a></li>
							</ul>

							<div class="l-btn th-btn"></div>
							<div class="r-btn th-btn"></div>
						</div>
					</div>
					
					<!-- 历史观看记录 -->
					<div class="caption">
						<h3>历史观看记录</h3>
						<a href="javascript:void(0)" class="seeMore">查看更多 ▼</a>
					</div>
					<div class="history clearfix hisMore">
						<s:iterator id="historys" value="#request.historys">
							<s:if test="#session.username==null">
								<a href="<%=request.getContextPath()%>/login.html" class="clearfix">
									<p><s:property value="#historys.video.title"/><s:property value="#historys.article.title"/></p><span>[<s:property value="#historys.time"/>]</span>
								</a>
							</s:if>
							<s:else>
								<s:if test="#historys.article.type=='文章'">
									<a href="<%=request.getContextPath()%>/Main_viewArticleDetials.action?articleId=<s:property value="#historys.article.id"/>" class="clearfix">
										<p><s:property value="#historys.article.title"/></p><span>[<s:property value="#historys.time"/>]</span>
									</a>	
								</s:if>
								<s:else>
									<a href="<%=request.getContextPath()%>/Main_playVideo.action?videoId=<s:property value="#historys.video.id"/>" class="clearfix">
										<p><s:property value="#historys.video.title"/></p><span>[<s:property value="#historys.time"/>]</span>
									</a>
								</s:else>
								
							</s:else>
						</s:iterator>
					</div>
					
					<!-- 联系我们 -->
					<div class="caption">
						<h3>联系我们</h3>
					</div>
					<div class="contactus clearfix">
						<p>TEL：18408243115</p>
						<p>QQ：2044369821</p>
						<p>微信关注我们：</p>
						<img src="<%=request.getContextPath()%>/haiyu/images/erweima.jpg" width="60%">
					</div>
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
		<p>&copy;成都市郫县红光镇西华大学对外汉语之家<a href="#">www.haiyu.com</a></p>
	</footer>
</body>
<script type="text/javascript" src="<%=request.getContextPath()%>/haiyu/js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/haiyu/js/index.js"></script>
</html>