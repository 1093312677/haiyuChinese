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
			<div class="juanzhan" id="section"></div>
			<!-- 主体正文部分 -->
			<div class="article clearfix">
				<div class="vedio">
					<div class="xiangqi clearfix">
						<h3>饺子</h3>
						<img src="images/meishi1.jpg">
						<p>饺子是中国人最喜欢的食物之一。它通常是有馅的半圆形的麦制食品。在中国大多数地方，当人们庆祝春节或其他节日和招待亲朋好友的时候就会包饺子。 <br>作为一个文化的载体，饺子是中国传统饮食文化的象征。它不同于西方的食物。一个汉堡包，夹着牛肉或鸡蛋，从外面就能够清楚地看到。但饺子是颇为不同。从外面你不知道它的馅是什么，只有当你吃的时候你才知道。它就等同中国的传统精神文化，尤其是被儒家思想保留和培养出来的性格。 
						饺子，可能不是中国美味食物的代表，但心灵上的享受即使不是更多，还是有这等同的重要。这观点不能被其他食物所代替。饺子在众多的吉祥场合和人们在一起，它已经成为中华菜肴最具代表性的例子。
						</p>
					</div>
					<div class="xiangqi clearfix">
						<h3>汤圆</h3>
						<img src="images/meishi2.jpg">
						<p>汤圆是中国传统小吃的代表之一，是由糯米粉等做的球形食品，一般有馅料，煮熟带汤吃，同时也是元宵节最具有特色的食物。历史十分悠久。据传，汤圆起源于宋朝。当时明州（现浙江省宁波市）兴起吃一种新奇食品，即用黑芝麻、猪油做馅、加入少许白砂糖，外面用糯米粉搓成圆形，煮熟后，吃起来香甜可口，饶有风趣。因为这种糯米汤圆煮在锅里又浮又沉，所以它最早叫“浮元子”，后来有的地区把“浮元子”改称汤团，而在广东被称为汤丸。[1]  据说汤团象征合家团圆更美好，吃汤圆意味新的一年合家幸福、团团圆圆，所以正月十五元宵节必备美食。
						</p>
					</div>
					<div class="xiangqi clearfix">
						<h3>火锅</h3>
						<img src="images/meishi3.jpg">
						<p>火锅，古称“古董羹”，因食物投入沸水时发出的“咕咚”声而得名，它是中国独创的美食，历史悠久，是一种老少皆宜的食物。据考证，西汉时期即有火锅，到宋代，火锅的吃法在民间已十分常见，南宋林洪的《山家清供》食谱中，便有同友人吃火锅的介绍。元代，火锅流传到蒙古一带，用来煮牛羊肉。至清代，火锅不仅在民间盛行，而且成了一道著名的“宫廷菜”，用料是山鸡等野味。
						火锅一般而言，是以锅为器具，以热源烧锅，以水或汤烧开，来涮煮食物的烹调方式，同时亦可指这种烹调方式所用的锅具。其特色为边煮边吃，或是锅本身具有保温效果，吃的时候食物仍热气腾腾，汤物合一。世界各地均有类似的料理，但主要在东亚地方特别盛行。火锅现吃现烫，辣咸鲜，油而不腻，暴汗淋漓，酣畅之极，解郁除湿，适于山川之气候，今发展为鸳鸯锅，麻辣清淡各别，各取所需，老少咸宜，至冬之佳品。
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
			<li><span>技术支持：</span><a href="http://git-sublime.github.io/test/weily">微力实验室</a></li>
			<li><span>联系电话：</span><a href="javascript:void(0)">18408243115</a></li>
			<li><span>邮箱地址：</span><a href="javascript:void(0)">haiyu-dwhyzj@foxmail.com</a></li>
		</ul>
		<p>&copy;成都市郫县红光镇西华大学对外汉语之家<a href="#">www.haiyuchinese.cn</a></p>
	</footer>
</body>
<script type="text/javascript" src="<%=request.getContextPath()%>/haiyu/js/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/haiyu/js/index.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/haiyu/js/myfocus-2.0.4.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/haiyu/js/mF_fancy.js"></script>

</html>