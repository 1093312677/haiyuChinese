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
			<div class="article clearfix">
				<div class="vedio">
					<div class="contact">
						<h3>教师简介</h3>
						<div class="Teacher clearfix" id="zyr">
							<div class="l-img">
								<img src="<%=request.getContextPath()%>/haiyu/images/th2.jpg" alt="头像">
							</div>
							<div class="r-content">
								<p><b>姓名：</b>赵佑瑞</p>
								<p><b>性别：</b>男</p>
								<p><b>专业：</b>汉语国际教育</p>
								<p><b>职务：</b>总经理、汉语教师</p>
								<p><b>主要教学课程：</b>汉语综合课、中国传统文化课</p>
								<p><b>教学风格：</b>生动诙谐、启发式教学、理论联系实际</p>
								<p><b>教师格言：</b>人应该永远拥有两样东西：一盏永不熄灭的灯--希望之灯，一扇长开的窗--接纳之窗。</p>
							</div>
						</div><!-- Teacher -->
						<div class="Teacher clearfix" id="ll">
							<div class="l-img">
								<img src="<%=request.getContextPath()%>/haiyu/images/th1.jpg" alt="头像">
							</div>
							<div class="r-content">
								<p><b>姓名：</b>刘林</p>
								<p><b>性别：</b>女</p>
								<p><b>专业：</b>汉语国际教育</p>
								<p><b>职务：</b>市场总监、汉语教师</p>
								<p><b>主要教学课程：</b>汉语口语课、中国传统书法课</p>
								<p><b>教学风格：</b>自然、感染力强、善于引导学生思考</p>
								<p><b>教师格言：</b>美是一种形式，也是一种价值，更是一种生命的体验；美是生命的源泉，也是人生的最高境界。</p>
							</div>
						</div><!-- Teacher -->
						<div class="Teacher clearfix" id="yf">
							<div class="l-img">
								<img src="<%=request.getContextPath()%>/haiyu/images/th3.jpg" alt="头像">
							</div>
							<div class="r-content">
								<p><b>姓名：</b>杨帆</p>
								<p><b>性别：</b>女</p>
								<p><b>专业：</b>汉语国际教育</p>
								<p><b>职务：</b>技术总监、汉语教师</p>
								<p><b>主要教学课程：</b>汉语读写课、中国传统乐曲课</p>
								<p><b>教学风格：</b>活泼、高效率、注重发散性思维培养</p>
								<p><b>教师格言：</b>用教师的智慧点燃学生的智慧火花，努力使学生得法于课内，得益于课外。</p>
							</div>
						</div><!-- Teacher -->
						<div class="Teacher clearfix" id="nmz">
							<div class="l-img">
								<img src="<%=request.getContextPath()%>/haiyu/images/th4.jpg" alt="头像">
							</div>
							<div class="r-content">
								<p><b>姓名：</b>廖梦铮</p>
								<p><b>性别：</b>女</p>
								<p><b>专业：</b>汉语国际教育</p>
								<p><b>职务：</b>行政总监、汉语教师</p>
								<p><b>主要教学课程：</b>汉语听说课、中国传统美食课</p>
								<p><b>教学风格：</b>活泼、高效率、注重发散性思维培养</p>
								<p><b>教师格言：</b>语言作为工作对我们之重要，正如骏马对于骑士的重要；课堂教学成功与否，在于作为骑士的教师驾驭骏马的能力高低。</p>
							</div>
						</div><!-- Teacher -->
						<div class="Teacher clearfix" id="xzy">
							<div class="l-img">
								<img src="<%=request.getContextPath()%>/haiyu/images/th5.jpg" alt="头像">
							</div>
							<div class="r-content">
								<p><b>姓名：</b>谢章元</p>
								<p><b>性别：</b>女</p>
								<p><b>专业：</b>汉语国际教育</p>
								<p><b>职务：</b>教学总监、汉语教师</p>
								<p><b>主要教学课程：</b>汉语阅读课、中国传统文学课</p>
								<p><b>教学风格：</b>简洁明了、严谨、技巧丰富</p>
								<p><b>教师格言：</b>教给学生能借助已有的知识去获取新的知识，这是最高的教学技巧之所在。</p>
							</div>
						</div><!-- Teacher -->
						
						<s:iterator id="item" value="#request.teachers">
							<div class="Teacher clearfix" id="xzy">
							<div class="l-img">
								<img src="<%=request.getContextPath()%>/upload/<s:property value='#item.head'/>" alt="头像">
							</div>
							<div class="r-content">
								<p><b>姓名：</b><s:property value="#item.name"/></p>
								<p><b>性别：</b><s:property value="#item.sex"/></p>
								<p><b>专业：</b><s:property value="#item.major"/></p>
								<p><b>职务：</b><s:property value="#item.job"/></p>
								<p><b>主要教学课程：</b><s:property value="#item.mianClass"/></p>
								<p><b>教学风格：</b><s:property value="#item.teachStyle"/></p>
								<p><b>教师格言：</b><s:property value="#item.motto"/></p>
							</div>
						</div><!-- Teacher -->
						</s:iterator>
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
</html>