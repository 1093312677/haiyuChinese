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
<!-- loading -->
	<div id="loading" style="position:absolute;width:100%;height:100vh;background: #fff;z-index: 999">
		<img src="<%=request.getContextPath()%>/haiyu/images/haiyu-logo.jpg" style="display: block;position: relative;top: 50%;margin-top: -100px;left: 50%;margin-left: -100px;">
	</div>

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
			<!-- 轮播图 -->
			<div id="boxID">
				<!-- <div class="loading"><img style="margin:0 auto;margin-top:100px; display:block;" src="<%=request.getContextPath()%>/haiyu/images/loading.gif" alt="请稍候..." /></div> -->
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

			<div class="juanzhan"></div>
			<div class="article clearfix">
				<!-- 视频专区 -->
				<div class="vedio">
					<div>
						<div class="clearfix">
							<h2>视频专区</h2>
							<a href="<%=request.getContextPath()%>/Main_viewArticleMainPage.action?viewType=video" class="more">更多</a>
						</div>
						<div class="vedio-box">
							<div class="vedio-b roll">
								<ul id="img-roll" class="clearfix">
									<s:iterator id="videos" value="#request.videos">
										<s:if test="#session.username==null">
											<li><div class="item">
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
										   </li>
				                        </s:if>
				                        <s:else>
											<li><div class="item">
												<h3><s:property value="#videos.title"/></h3>
												<div class="img">
													<img src='<%=request.getContextPath()%>/upload/<s:property value="#videos.imageUrl"/>'/>
													<a href='<%=request.getContextPath()%>/Main_playVideo.action?videoId=<s:property value="#videos.id"/>&type=1'><img src="haiyu/images/play.jpg"/></a>
												</div>
												<p><s:property value="#videos.speaker"/></p>
												<div class="clearfix">
													<p class="lx">课型：<s:property value="#videos.lessonType"/></p>
													<p class="zj">[<s:property value="#videos.updateTime"/>]</p>
												</div>
												</div>
											</li>
				                        </s:else>
									</s:iterator>
								</ul>
							</div>
						</div><!-- vedio-box -->
					</div>

					<div>
						<div class="clearfix">
							<h2>合作机构</h2>
							<a href="<%=request.getContextPath()%>/Main_viewInstitutionMainPage.action" class="more">更多</a>
						</div>
						<div class="art-hezuo">	
							<s:iterator id="institutions" value="#request.institutions">
								<div class="hz hz2">
									<div class="hz-img">
										<img src="<%=request.getContextPath()%>/upload/<s:property value="#institutions.imageUrl"/>">
										<div class="hz-caption">
											<p><s:property value="#institutions.instituName"/></p>
											<a href="<s:property value="#institutions.url"/>" class="hezuo-logo" target="_bank">more</a>
										</div>
									</div>
									<div class="hz-content">
										<p>
											<s:property value="#institutions.instroduce"/>	
										</p>
									</div>
								</div>	
							</s:iterator>
							
						</div>
					</div>

					<div>
						<div class="clearfix">
							<h2>关于嗨语</h2>
							<a href="<%=request.getContextPath()%>/haiyu/about-haiyu.jsp" class="more">更多</a>
						</div>
						<div class="art-about">
							<div class="abt">
								<a href="<%=request.getContextPath()%>/haiyu/about-haiyu.jsp#about-haiyu" class="h4">项目介绍</a>
								<div class="abt-p p1">
									<div class="p">
										<p>
											团队各成员为来自西华大学2013级汉语国际教育专业、2014级计算机科学与技术专业本科学生，具有一定对外汉语教学、中国文化、外语交流等知识储备，长期从事对外汉语辅助教学、文化交流课、留（游）学生汉语实践教学等。多名成员分别将赴捷克、泰国等国从事对外汉语教师工作。对于国内对外汉语教师从业、外国学生学习需求有一定了解。同时，团队成员各具能力，如新媒体制作、项目运营、文字编辑、平台宣传、网站制作等，成员在长期从事学生工作、社会实践中，均具备较强的团队协作能力与执行能力。
										</p>
									</div>
								</div>
							</div>
							<div class="abt">
								<a href="<%=request.getContextPath()%>/haiyu/about-haiyu.jsp#about-haiyu" class="h4">核心文化</a>
								<div class="abt-p p2">
									<div class="p">
										<p>
											“嗨语”包含多重寓意：一为Hello Chinese；二为点燃学习汉语的激情；三为嗨语谐音为外国人念汉语；四为嗨语网站始终以向上洋溢热情的态度进行汉语教学。
											Logo中间以“嗨语”拼音缩写“hy”为主体，配以汉英双语全称。
											1、“嗨语”拼音缩写“hy”交融，形成一个变体的“汉”字，以表现对外汉语教学这一核心；“h”可以看成一个昂首向上追求知识的学生，“y”寓意本平台为追求知识的学生作支持。
										</p>
									</div>
								</div>
							</div>
							<div class="abt">
								<a href="<%=request.getContextPath()%>/haiyu/about-haiyu.jsp#about-haiyu" class="h4">发展规划</a>
								<div class="abt-p p3">
									<div class="p">
										<p>
											为了保证本项目顺利实施，拟成立项目公司，进行公司化运作。项目公司的发展战略可以概括为：经营动态化、发展相关化、管理人本化。经营动态化是指，我们将根据市场的需求来调整生产经营的产品，市场的需求就是我们的选择；发展相关化是指，我们会抓住市场的机遇加快自身发展的步伐，但我们的发展必须与网络应用具有密切的相关性，我们不做毫无关联的发展。管理人本化是指，我们将坚持“以人为本”的管理方针，充分地激励员工、鼓舞员工，推行柔性管理，发挥员工的主动性和积极性。
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
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
					</div>
					<div class="teacher-pic">
						<div class="teacher">
							<ul class="clearfix">
								<li><a href="<%=request.getContextPath()%>/Main_viewTeacher.action#ll">
									<div class="pic">
										<img src="<%=request.getContextPath()%>/haiyu/images/th1.jpg">
									</div>
									<button>刘林</button>
								</a></li>
								<li><a href="<%=request.getContextPath()%>/Main_viewTeacher.action#zyr">
									<div class="pic">
										<img src="<%=request.getContextPath()%>/haiyu/images/th2.jpg">
									</div>
									<button>赵佑瑞</button>
								</a></li>
								<li><a href="<%=request.getContextPath()%>/Main_viewTeacher.action#yf">
									<div class="pic">
										<img src="<%=request.getContextPath()%>/haiyu/images/th3.jpg">
									</div>
									<button>杨帆</button>
								</a></li>
								<li><a href="<%=request.getContextPath()%>/Main_viewTeacher.action#nmz">
									<div class="pic">
										<img src="<%=request.getContextPath()%>/haiyu/images/th4.jpg">
									</div>
									<button>廖梦铮</button>
								</a></li>
								<li><a href="<%=request.getContextPath()%>/Main_viewTeacher.action#xzy">
									<div class="pic">
										<img src="<%=request.getContextPath()%>/haiyu/images/th5.jpg">
									</div>
									<button>谢章元</button>
								</a></li>
								
								<!--添加教师照片-->

								<li><a href="<%=request.getContextPath()%>/Main_viewTeacher.action#ll">
									<div class="pic">
										<img src="<%=request.getContextPath()%>/haiyu/images/th1.jpg">
									</div>
									<button>刘林</button>
								</a></li>
								<li><a href="<%=request.getContextPath()%>/Main_viewTeacher.action#zyr">
									<div class="pic">
										<img src="<%=request.getContextPath()%>/haiyu/images/th2.jpg">
									</div>
									<button>赵佑瑞</button>
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
									<p><s:property value="#historys.video.title"/><s:property value="#historys.article.title"/></p><span>[<s:date name="#historys.time" format="dd/MM/yyyy"/>  <s:property value="#historys.time"/>]</span>
								</a>
							</s:if>
							<s:else>
								<s:if test="#historys.article.type=='文章'">
									<a href="<%=request.getContextPath()%>/Main_viewArticleDetials.action?articleId=<s:property value="#historys.article.id"/>&viewType=article" class="clearfix">
										<p><s:property value="#historys.article.title"/></p><span>[<s:property value="#historys.time"/>]</span>
									</a>	
								</s:if>
								<s:else>
									<a href="<%=request.getContextPath()%>/Main_playVideo.action?videoId=<s:property value="#historys.video.id"/>&type=2" class="clearfix">
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

<script type="text/javascript">
$(document).ready(function(){
	var load=document.getElementById("loading");
	$("body").removeClass("body");
	load.style.display="none";
})

</script>
</html>