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
					欢迎！ 	${username }
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
							<img src="images/banner3.jpg">
						</a>
					</li>
					<li>
						<a href="javascript:void(0)">
							<img src="images/banner2_03.png">
						</a>
					</li>
					<li>
						<a href="javascript:void(0)">
							<img src="images/banner1_07.png">
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
			<!-- 主体正文部分 -->
			<div class="article clearfix">
				<div class="vedio">
					<div class="jigou">
						<h3>机构概况</h3>
						<p class="guwen">嗨语是一个真正推动用户现实发展的互动教育交易应用平台。嗨语平台以网络教育为主体，其核心功能包括汉语学习、网络交友、个人的人脉、行程、项目和学习计划管理、远程教学、产品资源网络交易、用户发展测评；嗨语平台整合了传统的和主流的WEB应用形式，将严肃性与游戏性、虚拟性与实用性、感性与理性融为一体。嗨语平台的目标客户覆盖了具有发展需求、可以上网的各年龄层人群；嗨语平台的盈利模式主要有享受教学资源销售、广告服务等。嗨语平台以推动汉语的现实发展为目标，结合将汉语作为第二语言的学习者的实际需求而设计的趣味汉语教学，同时展现汉语的适用性和趣味性，超越了当前已有的互联网应用形式，并形成了独特的用户应用发展模式——嗨语发展模式，可望成为个性化学习的样板应用和学校教育的积极有益的补充。</p>

						<h3>内容</h3>
						<p class="guwen">1、嗨语由一个互联网网站通过教师、学生实名认证注册，建立教师、学生资源库，实现师生资源共享、在线学习交流汉语。<br>
						2、两类用户：汉语国际教育教师和汉语学习爱好者。本项目以汉语国际教育教师和汉语学习爱好者为主要用户群体目标。<br>
						汉语国际教育教师通过“嗨语”网站认证成功后，可在线自主选择汉语学习爱好者为学生，进行汉语教学；可在线分享教学视频、课件等相关资源。<br>
						汉语学习爱好者通过“嗨语”网站注册认证成功后，可在线自主选择汉语国际教育教师为自己的教师，进行汉语学习；同时可在线学习使用、分享汉语教学视频、课件；可与其他汉语学习爱好者交流分享汉语学习经验。</p>

						<h3>特点</h3>
						<p class="guwen">目前大部分汉语国教育专业的从业人员要从事本专业的对口工作，需要通过中介机构或通过国家汉办机构到国外从事汉语教学活动。本项目特色在于通过“嗨语”网站为汉语国际教育教师提供一个学生资源信息交互的网络平台，让汉语国际教育教师无需通过中介机构、国家汉办机构寻得工作机会。网站通过教师、学生实名认证注册，建立教师、学生资源库，实现师生资源共享。师生可以通过平台进行交流联系，建立汉语教学、学习关系，实现师生资源共惠，让汉语国际教育教师能够在国内也可以进行本专业的对口工作，让国外汉语爱好者能够寻得专业的汉语教师。另外网站与其他对外汉语网站进行对接，为汉语国际教育教师、汉语爱好者提供更多的信息交流资源。</p>

						<h3>创业者简介</h3>
						<p>我团队各成员为来自西华大学2013级汉语国际教育专业、2014级计算机科学与技术专业本科学生，具有一定对外汉语教学、中国文化、外语交流等知识储备，长期从事对外汉语辅助教学、文化交流课、留（游）学生汉语实践教学等。多名成员分别将赴捷克、泰国等国从事对外汉语教师工作。对于国内对外汉语教师从业、外国学生学习需求有一定了解。同时，团队成员各具能力，如新媒体制作、项目运营、文字编辑、平台宣传、网站制作等，成员在长期从事学生工作、社会实践中，均具备较强的团队协作能力与执行能力。</p>
						<table>
							<tr>
								<td>编号</td>
								<td>姓名</td>
								<td>出生年月</td>
								<td>专业</td>
								<td>报任职务</td>
							</tr>
							<tr>
								<td>1</td>
								<td>赵佑瑞</td>
								<td>1995.01</td>
								<td>汉语国际教育</td>
								<td>总经理</td>
							</tr>
							<tr>
								<td>2</td>
								<td>杨帆</td>
								<td>1994.07</td>
								<td>汉语国际教育</td>
								<td>技术总监</td>
							</tr>
							<tr>
								<td>3</td>
								<td>廖梦铮</td>
								<td>1995.08</td>
								<td>汉语国际教育</td>
								<td>行政总监</td>
							</tr>
							<tr>
								<td>4</td>
								<td>刘林</td>
								<td>1993.07</td>
								<td>汉语国际教育</td>
								<td>市场总监</td>
							</tr>
							<tr>
								<td>5</td>
								<td>谢章元</td>
								<td>1995.06</td>
								<td>汉语国际教育</td>
								<td>教学总监</td>
							</tr>
						</table>
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

					<!-- 教师档案 -教师头像 -->
					<div class="caption">
						<h3>教师档案</h3>
						<a href="javascript:void(0)">查看更多&gt;&gt;</a>
					</div>
					<div class="teacher-pic">
						<div class="teacher">
							<ul class="clearfix">
								<li><a href="javascript:void(0)">
									<img src="images/th1.jpg">
								</a></li>
								<li><a href="javascript:void(0)">
									<img src="images/th2.jpg">
								</a></li>
								<li><a href="javascript:void(0)">
									<img src="images/th3.jpg">
								</a></li>
								<li><a href="javascript:void(0)">
									<img src="images/th4.jpg">
								</a></li>

								<li><a href="javascript:void(0)">
									<img src="images/th1.jpg">
								</a></li>
								<li><a href="javascript:void(0)">
									<img src="images/th2.jpg">
								</a></li>
							</ul>

							<div class="l-btn th-btn"></div>
							<div class="r-btn th-btn"></div>
						</div>
					</div>

					<div class="caption">
						<h3>联系我们</h3>
					</div>
					<div class="contactus clearfix">
						<p>TEL：18408243115</p>
						<p>QQ：2044369821</p>
						<p>微信关注我们：</p>
						<img src="images/erweima.jpg" width="60%">
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