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
			<div class="juanzhan" id="section"></div>
			<!-- 主体正文部分 -->
			<div class="article clearfix">
				<div class="vedio">
					<div class="xiangqi">
						<h3>中国象棋</h3>
						<img src="images/xiangqi2.jpg">
						<p>中国象棋是一种古老的智力游戏，人们往往通过对弈来参透一些人生的一些哲理，来提高自己的觉悟能力、思维能力和生活乐趣。 一、中国象棋的起源 中国象棋是起源于中国的一种棋戏，产生的年代不详。象棋在中国有着悠久的历史。在春秋战国时代文化名著的《楚辞. 招魂》中就有：“蔽象棋，有六博兮。”的词句。说明在当时已经有了“象棋”这个名词，当然那时的象棋不是现在的象棋，王逸注《楚辞》云“博，著也，行六棋，故曰六博。”。司马迁在《史记》中也提到了六博。据《史记.第六十九卷.苏秦列传》中记载：当时齐地的居民安居乐业“斗鸡走狗，六博蹋鞠”。可见象棋在当时已经开始在民间广泛流行。那时的棋，大概是一方为六子，叫“六博”。另据《说苑》记载：雍门子周以琴见孟尝君，曾说“足下......燕则斗象棋而舞郑女。”。可见当时，在达官权贵和士大夫中，已经很流行下棋了。 棋盘里的河界，又名“楚河汉界”。
						</p>
					</div>
					<div class="xiangqi">
						<h3>中国书法</h3>
						<img src="images/shufa1.jpg">
						<img src="images/shufa2.jpg" style="float: right;margin-left: 10px;margin-right: 0;">
						<p>书法，
						在汉字书写中，书法与中国的历史同兴衰。它是中国最高的艺术形式，它传达思想的同时，也表现了线条的美。书法是中国四大技艺——琴、棋、书、画之一。然而，比起其他三种，书法更多地体现了韵律、线条和结构的完美。书法是汉字的书写艺术。它不仅是中华民族的文化瑰宝，而且在世界文化艺术宝库中独放异采。汉字在漫长的演变发展的历史长河中，一方面起着思想交流、文化继承等重要的社会作用， 另一方面它本身又形成了一种独特的造型艺术。近代经过考证，关于中国文字起源，一般认为在距今约5000-6000年左右中国黄河中游的“仰韶文化时期”，已经创造了文字。仰韶文化因1921年首先在河南渑池仰韶村发现而得名的。近40余年，又陆续有许多发现。 世界上各民族的文字，概括起来有三大类型，即表形文字；表意文字；表音文字。汉字则是典型的在表形文字基础上发展起来的表意文字。象形的造字方法即是把实物画出来。不过画图更趋于简单化、抽象化，成为突出实物特点的一种符号，代表一定的意义，有一定的读音。我们的汉字，从图画、符号到创造、定型，由古文大篆到小篆，由篆而隶、楷、行、草，各种形体逐渐形成。在书写应用汉字的过程中，逐渐产生了世界各民族文字中独一的、可以独立门类的书法艺术。
						</p>
					</div>
					<div class="xiangqi">
						<h3>太极拳</h3>
						<img src="images/taiji.jpg">
						<p>太极起源于中国古代，现代它被人们作为一种强身健体的运动。
						---它几乎适合每个人。<br/>
						---它能够强身健体。<br/>
						---它有温和，圆润的招式。<br/>
						---它能够使身心结合。<br/>
						---它有很多不同的招式。<br/>
						---它能够使人通过运动感到愉悦。<br/>
						---它从几世纪前就被人们认识到可以治疗关节炎。
						太极拳注重正确的招式和呼吸的调整，太极拳的招式是流动的，优雅的，有很好的平衡性。能够完全调和身心结合。在当今高压的生活下，太极拳可以提供精神的放松和肉体的舒适。
						太极和我们通常认为的加强肌肉力量的想法完全不同，它强调由内向外，以柔克刚，以圆周运动比直线运动要好，以退为进。它和西方的运动尤其不一样，比如橄榄球要求运动员动作越有力越快就越好。太极是一种由内同时增强人的意志和肉体的运动。
						</p>
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

					

					<div class="caption">
						<h3>联系我们</h3>
					</div>
					<div class="contactus clearfix">
						<p>TEL：18228075165</p>
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
			<li><span>联系电话：</span><a href="javascript:void(0)">18228075165</a></li>
			<li><span>邮箱地址：</span><a href="javascript:void(0)">haiyu-dwhyzj@foxmail.com</a></li>
		</ul>
		<p>&copy;成都市郫县红光镇西华大学对外汉语之家<a href="#">www.haiyu.com</a></p>
	</footer>
</body>
<script type="text/javascript" src="<%=request.getContextPath()%>/haiyu/js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/haiyu/js/index.js"></script>
</html>