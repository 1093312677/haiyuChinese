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
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/haiyu/css/mF_fancy.css">
    <link rel="Shortcut Icon" href="<%=request.getContextPath()%>/haiyu/images/ico.png">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/haiyu/css/public.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/haiyu/css/index.css">
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
			<!-- 轮播图 -->
			<div id="boxID">
				<div class="loading"><img style="margin:0 auto;margin-top:100px; display:block;" src="<%=request.getContextPath()%>/haiyu/images/loading.gif" alt="请稍候..." /></div>
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
			<!-- 主体正文部分 -->
			<div class="article clearfix" id="about-haiyu">
				<div class="vedio">
					<div class="hezuo">
						<div class="items items-height">
							<h3>项目介绍</h3>
							<!-- <a href="http://www.hanban.edu.cn/" class="hezuo-logo">
								<img src="images/hezuo1.jpg">
							</a> -->
							<div class="content" id="about-p">
								<p><b>一、概况</b></p>
								<p style="text-indent: 2em">
									本项目是一个真正推动用户现实发展的互动教育交易应用平台。嗨语平台以网络教育为主体，其核心功能包括汉语学习、网络交友、个人的人脉、行程、项目和学习计划管理、远程教学、产品资源网络交易、用户发展测评；嗨语平台整合了传统的和主流的WEB应用形式，将严肃性与游戏性、虚拟性与实用性、感性与理性融为一体。嗨语平台的目标客户覆盖了具有发展需求、可以上网的各年龄层人群；嗨语平台的盈利模式主要有享受教学资源销售、广告服务等。嗨语平台以推动汉语的现实发展为目标，结合将汉语作为第二语言的学习者的实际需求而设计的趣味汉语教学，同时展现汉语的适用性和趣味性，超越了当前已有的互联网应用形式，并形成了独特的用户应用发展模式——嗨语发展模式，可望成为个性化学习的样板应用和学校教育的积极有益的补充。
								</p><br>
								<p><b>二、内容</b></p>
								<p>
									1、一个网站：本项目由一个互联网网站通过教师、学生实名认证注册，建立教师、学生资源库，实现师生资源共享、在线学习交流汉语。
								</p>
								<p>
									2、两类用户：汉语国际教育教师和汉语学习爱好者。本项目以汉语国际教育教师和汉语学习爱好者为主要用户群体目标。
								</p>
								<p style="text-indent: 2em">
									汉语国际教育教师通过“嗨语”网站认证成功后，可在线自主选择汉语学习爱好者为学生，进行汉语教学；可在线分享教学视频、课件等相关资源。
								</p>
								<p style="text-indent: 2em">
									汉语学习爱好者通过“嗨语”网站注册认证成功后，可在线自主选择汉语国际教育教师为自己的教师，进行汉语学习；同时可在线学习使用、分享汉语教学视频、课件；可与其他汉语学习爱好者交流分享汉语学习经验。
								</p><br>
								<p><b>三、特点</b></p>
								<p style="text-indent: 2em">
									目前大部分汉语国教育专业的从业人员要从事本专业的对口工作，需要通过中介机构或通过国家汉办机构到国外从事汉语教学活动。本项目特色在于通过“嗨语”网站为汉语国际教育教师提供一个学生资源信息交互的网络平台，让汉语国际教育教师无需通过中介机构、国家汉办机构寻得工作机会。网站通过教师、学生实名认证注册，建立教师、学生资源库，实现师生资源共享。师生可以通过平台进行交流联系，建立汉语教学、学习关系，实现师生资源共惠，让汉语国际教育教师能够在国内也可以进行本专业的对口工作，让国外汉语爱好者能够寻得专业的汉语教师。另外网站与其他对外汉语网站进行对接，为汉语国际教育教师、汉语爱好者提供更多的信息交流资源。
								</p>
								<p><b>四、创业者简介</b></p>
								<p style="text-indent: 2em">
									我团队各成员为来自西华大学2013级汉语国际教育专业本科学生，具有一定对外汉语教学、中国文化、外语交流等知识储备，长期从事对外汉语辅助教学、文化交流课、留（游）学生汉语实践教学等。多名成员分别将赴捷克、泰国等国从事对外汉语教师工作。对于国内对外汉语教师从业、外国学生学习需求有一定了解。同时，团队成员各具能力，如新媒体制作、项目运营、文字编辑、平台宣传、网站制作等，成员在长期从事学生工作、社会实践中，均具备较强的团队协作能力与执行能力。
								</p>
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
							<button class="btn" style="width: 116px;">查看更多&gt;&gt;</button>
						</div>
						<div class="items items-height">
							<h3>核心文化</h3>
							<!-- <a href="http://www.hanban.edu.cn/" class="hezuo-logo">
								<img src="images/hezuo1.jpg">
							</a> -->
							<div class="content" id="about-p">
								<p>
									<img src="images/haiyu-logo.jpg" style="float: left; margin: 0 10px 0px 0">
									“嗨语”包含多重寓意：一为Hello Chinese；二为点燃学习汉语的激情；三为嗨语谐音为外国人念汉语；四为嗨语网站始终以向上洋溢热情的态度进行汉语教学。
								</p>
								<p>
									1、“嗨语”拼音缩写“hy”交融，形成一个变体的“汉”字，以表现对外汉语教学这一核心；“h”可以看成一个昂首向上追求知识的学生，“y”寓意本平台为追求知识的学生作支持。
								</p>
								<p>
									2、周边围以“祥云”图案，“中国红”为logo主色，以表现“嗨语”立足于中国传统文化的特点。
								</p>
								<p style="text-indent: 2em">
									Logo中间以“嗨语”拼音缩写“hy”为主体，配以汉英双语全称。
								</p>
								<p style="text-indent: 2em">
									Logo整体体现了“嗨语”对外汉语之家教学资源平台立足传统、面向世界，以活泼、开放的姿态为广大学生、教师、机构提供一个专业的对外汉语交流平台。
								</p>
							</div>
							<button class="btn" style="width: 111px;">查看更多&gt;&gt;</button>
						</div>
						<div class="items items-height">
							<h3>发展规划</h3>
							<!-- <a href="http://www.hanban.edu.cn/" class="hezuo-logo">
								<img src="images/hezuo1.jpg">
							</a> -->
							<div class="content" id="about-p">
								<p style="text-indent: 2em">
									为了保证本项目顺利实施，拟成立项目公司，进行公司化运作。项目公司的发展战略可以概括为：经营动态化、发展相关化、管理人本化。经营动态化是指，我们将根据市场的需求来调整生产经营的产品，市场的需求就是我们的选择；发展相关化是指，我们会抓住市场的机遇加快自身发展的步伐，但我们的发展必须与网络应用具有密切的相关性，我们不做毫无关联的发展。管理人本化是指，我们将坚持“以人为本”的管理方针，充分地激励员工、鼓舞员工，推行柔性管理，发挥员工的主动性和积极性。
								</p>
								<p style="text-indent: 2em">
									为实现项目公司的发展战略，我们将重点推进低成本市场竞争战略，即通过实施严格的成本控制，形成对其他竞争对手的比较优势，保持公司的盈利能力。具体措施为：一是树立创新服务的观念，在加大对网站服务功能开发投入的同时，将线上服务延伸到线下服务，扩大服务功能，扩大市场占有率，形成规模效益，从而增强自己的竞争优势。二是加强管理，建立严密的经营和成本控制责任体系，不断提高经营效益，降低服务成本。
								</p>
								<p style="text-indent: 2em">
									总之，嗨语网站以推动人的现实发展、推广汉语为目标，超越了当前已有的互联网应用形式，并形成了独特的用户应用发展模式，采用教学一对一模式，可望成为个性化学习的样板应用和汉语国际教育事业的积极有益的补充。随着党的十七大提出的“发展远程教育和继续教育，建设全民学习、终身学习的学习型社会”的要求的贯彻落实与网络使用的普及，我国网络教育市场规模将进一步发展，因此，项目的实施将会带来巨大的经济效益与社会效益，必将有着更为广阔的市场前景。
								</p>
							</div>
							<button class="btn" style="width: 116px;">查看更多&gt;&gt;</button>
						</div>
					</div>
				</div>

				<!-- 侧边栏 -->
				<div class="side-right">
					<div style="margin-bottom: 50px;">
						<a href="trwenhua.html#section" class="side side1" title="立刻来感受中华传统文化博大精深">
							<p>传统文化</p>
							<p>立刻来感受中华传统文化博大精深</p>
						</a>
						<a href="trjieri.html#section" class="side side2" title="切身体会中华传统节日的欢乐沸腾">
							<p>传统节日</p>
							<p>切身体会中华传统节日的欢乐沸腾</p>
						</a>
						<a href="trmeishi.html#section" class="side side3" title="中华传统美食给你舌尖上的诱惑">
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
</html>