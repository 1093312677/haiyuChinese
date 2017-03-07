<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title> 后台管理</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
     <link href="<%=request.getContextPath() %>/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/animate.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body>
<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
    <div id="wrapper">
        <!--左侧导航开始-->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="nav-close"><i class="fa fa-times-circle"></i>
            </div>
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                                    <span class="block m-t-xs" style="font-size:20px;">
                                        <i class="fa fa-area-chart"></i>
                                        <strong class="font-bold">后台管理</strong>
                                    </span>
                                </span>
                            </a>
                        </div>
                        <div class="logo-element">后台管理
                        </div>
                    </li>
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">管理</span>
                    </li>
                    <li>
                        <a class="J_menuItem" href="Account_mainNotify.action">
                            <i class="fa fa-home"></i>
                            <span class="nav-label">主页</span>
                        </a>
                    </li>
                    
                    
                     
                    <li>
                        <a href="#">
                            <i class="fa fa fa-filter"></i>
                            <span class="nav-label">审核</span>
                            <span class="fa arrow"></span>
                        </a>
                    	 <ul class="nav nav-second-level">
                             <li>
		                        <a class="J_menuItem" href="Main_viewVieoAudited.action"><i class="fa fa-video-camera"></i> <span class="nav-label">审核视频</span></a>
		                    </li>
                              <li>
			                       <a class="J_menuItem" href="Main_viewArticleAudited.action"><i class="fa fa-file-text-o"></i> <span class="nav-label">审核文章</span></a>
			                  </li>
			                 <li>
			                     <a class="J_menuItem" href="<%=request.getContextPath() %>/Teach_viewTeachAudited.action"><i class="fa fa-file-text-o"></i> <span class="nav-label">审核课件</span></a>
			                 </li>   
			                  
                       </ul>
                    </li>
                    
                    <li>
                        <a href="#">
                            <i class="fa fa-users"></i>
                            <span class="nav-label">用户</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a class="J_menuItem" href="Account_viewAccount.action">查看用户</a>
                            </li>
                             <li>
                                <a class="J_menuItem" href="page/addUser.jsp">添加用户</a>
                            </li>
                        </ul>
                    </li>
               
                    <li>
                        <a href="#"><i class="fa fa-upload"></i> <span class="nav-label">上传</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                            	<a class="J_menuItem" href="page/uploadVideo.jsp">上传视频</a>
                            </li>
                            
                            <li>
                            	<a class="J_menuItem" href="<%=request.getContextPath() %>/page/article/uploadArticlePPT.jsp">上传课文/教案/讲义</a>
                            </li>
                            <!-- 
                            <li>
                                <a href="#">上传课件 <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                    	<a class="J_menuItem" href="page/uploadArticle.jsp">上传课文</a>
                                    </li>
                                    <li>
                                    	<a class="J_menuItem" href="<%=request.getContextPath() %>/page/article/uploadArticleWord.jsp">上传教案</a>
                                    </li>
                                    <li>
                                    	<a class="J_menuItem" href="<%=request.getContextPath() %>/page/article/uploadArticlePPT.jsp">上传讲义</a>
                                    </li>
                                </ul>
                            </li>
                             -->
                             <li>
                            	<a class="J_menuItem" href="page/institution/uploadInstitution.jsp">上传机构</a>
                            </li>
                           	 <li>
                            	<a class="J_menuItem" href="page/teacher/uploadTeacher.jsp">上传教师</a>
                            </li>
                            
                            <li>
                            	<a class="J_menuItem" href="page/activity/uploadActivity.jsp">上传活动</a>
                            </li>
                           <!-- 
                            <li>
                                <a href="#">上传视频 <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li><a class="J_menuItem" href="page/uploadVideo.jsp">上传第三方视频</a>
                                    </li>
                                    <li><a class="J_menuItem" href="page/uploadVideoLocal.jsp">上传本地视频</a>
                                    </li>
                                </ul>
                            </li>
                             -->
                          
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-eye"></i> <span class="nav-label">查看</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                            	<a class="J_menuItem" href="Main_viewVieo.action">查看视频</a>
                            </li>
                             
                            <li>
                                <a href="#">查看课件 <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                   <li>
		                            	<a class="J_menuItem" href="<%=request.getContextPath() %>/Teach_viewFile.action?type=lesson">查看课文</a>
		                            </li>
		                            <li>
		                            	<a class="J_menuItem" href="<%=request.getContextPath() %>/Teach_viewFile.action?type=teach">查看教案</a>
		                            </li>
                                   <li>
		                            	<a class="J_menuItem" href="<%=request.getContextPath() %>/Teach_viewFile.action?type=ppt">查看讲义</a>
		                            </li>
		                           
                                </ul>
                            </li>
                             <li>
                            	<a class="J_menuItem" href="Main_viewInstitution.action">查看机构</a>
                            </li>
                            
                            <!--  
                            <li>
                            	<a class="J_menuItem" href="Main_viewHistory.action">查看历史</a>
                            </li>
                            -->
                            <li>
                            	<a class="J_menuItem" href="Teach_viewTeacher.action">查看教师</a>
                            </li>
                             <li>
                            	<a class="J_menuItem" href="Activity_viewActivitysBg.action">查看活动</a>
                            </li>
                           
                        </ul>
                    </li>
                    <li class="line dk"></li>
                    <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">账户</span>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-user"></i> <span class="nav-label">账户</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                            	<a class="J_menuItem" href="Account_viewOneEntity.action?id=${id }">查看账户</a>
                            </li>
                             <li>
                            	<a class="J_menuItem" href="page/account/changePassword.jsp">修改密码</a>
                             </li>
                             <li>
                            	<a class="J_menuItem" href="Account_loginOut.action">退出</a>
                            </li>
                            
                          
                    <li class="line dk"></li>
                   
					 </ul>
                </ul>
            </div>
        </nav>

        <!--左侧导航结束-->
        <!--右侧部分开始-->
        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header"><a class="navbar-minimalize minimalize-styl-2 btn btn-info " href="#"><i class="fa fa-bars"></i> </a>
                        <form role="search" class="navbar-form-custom" method="post" action="https://www.baidu.com">
                            <div class="form-group">
                                <!-- <input type="text" placeholder="请输入您需要查找的内容 …" class="form-control" name="top-search" id="top-search"> -->
                            </div>
                        </form>
                    </div>
                    <div style="text-align:center;line-height:50px;">
                    	欢迎！${account.username }
                    </div>
                </nav>
            </div>
            <div class="row J_mainContent" id="content-main">
                <iframe id="J_iframe" width="100%" height="100%" src="backMain.jsp" frameborder="0" data-id="index_v1.html" seamless></iframe>
            </div>
        </div>
        <!--右侧部分结束-->
    </div>

    <!-- 全局js -->
    <script src="<%=request.getContextPath() %>/js/jquery.min.js?v=2.1.4"></script>
    <script src="<%=request.getContextPath() %>/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="<%=request.getContextPath() %>/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="<%=request.getContextPath() %>/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/plugins/layer/layer.min.js"></script>

    <!-- 自定义js -->
    <script src="<%=request.getContextPath() %>/js/hAdmin.js?v=4.1.0"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/index.js"></script>

    <!-- 第三方插件 -->
    <script src="<%=request.getContextPath() %>/js/plugins/pace/pace.min.js"></script>
<div style="text-align:center;">

</div>
</body>
</html>