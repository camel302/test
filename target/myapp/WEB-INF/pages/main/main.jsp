<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
		<meta name="description" content="BS实例demo">
		<meta name="author" content="mySong">
		<link rel="shortcut icon" href="./assets/images/favicon.png" type="image/png">
		<title>mysong</title>
		<link rel="stylesheet" href="./assets/lib/fontawesome/css/font-awesome.css"/>
		<link rel="stylesheet" href="./assets/css/quirk.css"/>
		<link rel="stylesheet" href="./assets/css/main.css"/>
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
  			<script src="./assets/lib/html5shiv/html5shiv.js"></script>
 			<script src="./assets/lib/respond/respond.src.js"></script>
 		 <![endif]-->
	</head>

	<body>

		<div class="headerpanel">
			<div class="logopanel">
				<h2><a href="index.html">${appName } - ${version }</a></h2>
			</div>
			<!-- logopanel -->
			<div class="headerbar">
				<a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
				<div class="searchpanel">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search for.">
						<span class="input-group-btn">
            				<button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
          				</span>
					</div>
					<!-- input-group -->
				</div>
				<div class="header-right">
					<ul class="headermenu">
						<li>
							<div id="noticePanel" class="btn-group">
								<button class="btn btn-notice alert-notice" data-toggle="dropdown">
									<i class="fa fa-globe"></i>
								</button>
								<div id="noticeDropdown" class="dropdown-menu dm-notice pull-right">
									<div role="tabpanel">
										<!-- Nav tabs -->
										<ul class="nav nav-tabs nav-justified" role="tablist">
											<li class="active"><a data-target="#notification" data-toggle="tab">站内信箱(2)</a></li>
											<li><a data-target="#reminders" data-toggle="tab">及时消息 (4)</a></li>
										</ul>

										<!-- Tab panes -->
										<div class="tab-content">
											<div role="tabpanel" class="tab-pane active" id="notification">
												<ul class="list-group notice-list">
													<li class="list-group-item unread">
														<div class="row">
															<div class="col-xs-2">
																<i class="fa fa-envelope"></i>
															</div>
															<div class="col-xs-10">
																<h5><a href="">New message from Weno Carasbong</a></h5>
																<small>June 20, 2015</small>
																<span>Soluta nobis est eligendi optio cumque...</span>
															</div>
														</div>
													</li>

												</ul>
												<a class="btn-more" href="">查看更多... <i class="fa fa-long-arrow-right"></i></a>
											</div>
											<!-- tab-pane -->
											<div role="tabpanel" class="tab-pane" id="reminders">
												<a class="btn-more" href="">查看更多... <i class="fa fa-long-arrow-right"></i></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="btn-group">
								<button type="button" class="btn btn-logged" data-toggle="dropdown">
									<img src="./assets/images/photos/loggeduser.png" alt="" /> mySong
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu pull-right">
									<li><a href="profile.html"><i class="glyphicon glyphicon-user"></i> 个人信息</a></li>
									<li><a href="#"><i class="glyphicon glyphicon-cog"></i> 账户设置</a></li>
									<li><a href="#"><i class="glyphicon glyphicon-question-sign"></i> 帮助？</a></li>
									<li><a href="signin.html"><i class="glyphicon glyphicon-log-out"></i> 退出</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
				<!-- header-right -->
			</div>
			<!-- headerbar -->
		</div>
		<!-- header-->

		<div class="leftpanel">
			<div class="leftpanelinner">
				<div class="media leftpanel-profile">
					<div class="media-left">
						<a href="#">
							<img src="./assets/images/photos/loggeduser.png" alt="" class="media-object img-circle">
						</a>
					</div>
					<div class="media-body">
						<h4 class="media-heading" style="cursor:pointer;" data-toggle="collapse" 
							data-target="#loguserinfo" >mySong
							<a class="pull-right"> <i class="fa fa-angle-down"></i></a>
						</h4>
						<h5 class="media-heading">@软件工程师
							<a class="pull-right" style="cursor:pointer;"> <i class="fa fa-lock tooltips" title="锁定"></i></a>
						</h5>
					</div>
				</div>
				<!-- leftpanel-profile -->

				<div class="leftpanel-userinfo collapse" id="loguserinfo">
					<h5 class="sidebar-title">地址：</h5>
					<address>重庆江北</address>
					<h5 class="sidebar-title">联系方式：</h5>
					<ul class="list-group">
						<li class="list-group-item">
							<label class="pull-left">Email</label>
							<span class="pull-right">me@themepixels.com</span>
						</li>
						<li class="list-group-item">
							<label class="pull-left">Home</label>
							<span class="pull-right">(032) 1234 567</span>
						</li>
						<li class="list-group-item">
							<label class="pull-left">Mobile</label>
							<span class="pull-right">+63012 3456 789</span>
						</li>
						<li class="list-group-item">
							<label class="pull-left">Social</label>
							<div class="social-icons pull-right">
								<a href="#"><i class="fa fa-facebook-official"></i></a>
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-pinterest"></i></a>
							</div>
						</li>
					</ul>
				</div>
				<!-- leftpanel-userinfo -->
				<ul class="nav nav-tabs nav-justified nav-sidebar">
					<li class="tooltips active" data-toggle="tooltip" title="主菜单">
						<a data-toggle="tab" data-target="#mainmenu">
							<i class="tooltips fa fa-home"></i>
						</a>
					</li>
					<li class="tooltips" data-toggle="tooltip" title="个人邮箱">
						<a data-toggle="tab" data-target="#emailmenu">
							<i class="tooltips fa fa-envelope"></i>
							<span class="badge badge-warning" style="background-color: #259dab;top: 1px;right:1px;float: left;position: absolute;">10</span>
						</a>
					</li>
					<li class="tooltips" data-toggle="tooltip" title="通讯录">
						<a data-toggle="tab" data-target="#contactmenu">
							<i class="fa fa-user"></i>
						</a>
					</li>
					<li class="tooltips" data-toggle="tooltip" title="系统设置">
						<a data-toggle="tab" data-target="#settings">
							<i class="fa fa-cog"></i>
						</a>
					</li>
					<li class="tooltips" data-toggle="tooltip" title="更多">
						<a data-toggle="tab" data-target="#more">
							<i class="fa fa-ellipsis-h"></i>
						</a>
					</li>
				</ul>

				<div class="tab-content">
					<!-- ################# MAIN MENU ################### -->
					<div class="tab-pane active" id="mainmenu">
						<div class="input-group" style="padding: 0px 5px 5px 5px;">
							<input type="text" class="form-control" placeholder="菜单搜索...">
							<span class="input-group-btn">
	            				<button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
	          				</span>
						</div>
						<div class="nav-wrapper white">
	              			<ul class="nav nav-pills nav-stacked nav-quirk nav-quirk-primary">
				                <li><a href="#"><i class="fa fa-home"></i> <span>首页</span></a></li>
				                <li class="nav-parent">
				                	<a href="#"><i class="fa fa-cogs"></i> <span>系统管理</span></a>
				                	<ul class="children">
					                    <li><a href="www.baid.com">组织管理</a></li>
					                    <li><a href="">人员管理</a></li>
				                  	</ul>
				                </li>
				                <li class="nav-parent">
				                	<a href="#"><i class="fa fa-home"></i> <span>门户管理</span></a>
				                	<ul class="children">
					                    <li><a href="">菜单管理</a></li>
					                    <li><a href="">porlet管理</a></li>
				                  	</ul>
				                </li>
				                <li class="nav-parent active">
				                  <a href=""><i class="fa fa-star"></i> <span>安全管理</span></a>
				                  <ul class="children active">
				                  	<li class="active"><a href="">用户管理</a></li>
				                    <li ><a href="">权限管理</a></li>
				                    <li ><a href="">用户角色</a></li>
				                  </ul>
				                </li>
				                <li class="nav-parent">
				                  <a href=""><i class="fa fa-file"></i> <span>Blog</span></a>
				                  <ul class="children">
				                    <li><a href="">Recent</a></li>
				                    <li><a href="">Popular</a></li>
				                  </ul>
				                </li>
				                <li><a href="#"><i class="fa fa-envelope"></i> <span>Contact Us</span></a></li>
				             </ul>
            			</div>
					</div>
					<!-- tab-pane -->

					<!-- ######################## EMAIL MENU ##################### -->

					<div class="tab-pane" id="emailmenu">
						<div class="sidebar-btn-wrapper">
							<a href="compose.html" class="btn btn-primary"><i class="fa fa-pencil"></i><span style="margin-left: 5px;;">写信</span></a>
						</div>

						<h5 class="sidebar-title">邮箱</h5>
						<ul class="nav nav-pills nav-stacked nav-quirk nav-mail">
							<li><a href="email.html"><i class="fa fa-pencil"></i> <span>发件箱 (3)</span></a></li>
							<li><a href="email.html"><i class="fa fa-inbox"></i> <span>收件箱 (2)</span></a></li>
							<li><a href="email.html"><i class="fa fa-paper-plane"></i> <span>草稿</span></a></li>
						</ul>

						<h5 class="sidebar-title">标签</h5>
						<ul class="nav nav-pills nav-stacked nav-quirk nav-label">
							<li><a href="#"><i class="fa fa-tags primary"></i> <span>重要</span></a></li>
							<li><a href="#"><i class="fa fa-tags success"></i> <span>紧急</span></a></li>
							<li><a href="#"><i class="fa fa-tags warning"></i> <span>关键</span></a></li>
							<li><a href="#"><i class="fa fa-tags danger"></i> <span>普通</span></a></li>
						</ul>
					</div>
					<!-- tab-pane -->

					<!-- ################### CONTACT LIST ################### -->

					<div class="tab-pane" id="contactmenu">
						<div class="input-group" style="padding: 0px 5px 5px 5px;">
							<input type="text" class="form-control" placeholder="人员搜索...">
							<span class="input-group-btn">
	            				<button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
	          				</span>
						</div>
						<h5 class="sidebar-title"></h5>
						<div role="tabpanel " class="dm-notice" style="padding: 0px 5px;">
							<!-- Nav tabs -->
							<ul class="nav nav-tabs nav-line" role="tablist">
								<li class="active">
									<a data-target="#allContacts" style="cursor:pointer;" data-toggle="tab">通讯录</a>
								</li>
								<li>
									<a data-target="#personToContacts" style="cursor:pointer;" data-toggle="tab">个人收藏</a>
								</li>
							</ul>
									<!-- Tab panes -->
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active" id="allContacts">
									<ul class="media-list user-list">
										<li class="media">
											<a href="#">
												<div class="media-left">
													<img class="media-object img-circle" src="./assets/images/photos/user1.png" alt="">
												</div>
												<div class="media-body">
													<h4 class="media-heading">张三</h4>
													<span><i class="fa fa-phone"></i> 386-752-1860</span>
												</div>
											</a>
										</li>
										<li class="media">
											<a href="#">
												<div class="media-left">
													<img class="media-object img-circle" src="./assets/images/photos/user2.png" alt="">
												</div>
												<div class="media-body">
													<h4 class="media-heading">李四</h4>
													<span><i class="fa fa-mobile"></i> +1614-650-8281</span>
												</div>
											</a>
										</li>
									</ul>
								</div>
								<!-- tab-pane -->
								<div role="tabpanel" class="tab-pane" id="personToContacts">
									<ul class="media-list user-list">
										<li class="media">
											<a href="#">
												<div class="media-left">
													<img class="media-object img-circle" src="./assets/images/photos/user1.png" alt="">
												</div>
												<div class="media-body">
													<h4 class="media-heading">张三</h4>
													<span><i class="fa fa-phone"></i> 386-752-1860</span>
												</div>
											</a>
										</li>
										<li class="media">
											<a href="#">
												<div class="media-left">
													<img class="media-object img-circle" src="./assets/images/photos/user2.png" alt="">
												</div>
												<div class="media-body">
													<h4 class="media-heading">王五</h4>
													<span><i class="fa fa-mobile"></i> +1614-650-8281</span>
												</div>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- tab-pane -->

					<!-- #################### SETTINGS ################### -->

					<div class="tab-pane" id="settings">
						<h5 class="sidebar-title">常用系统设置</h5>
						<ul class="list-group list-group-settings">
							<li class="list-group-item">
								<h5>Daily Newsletter</h5>
								<small>Get notified when someone else is trying to access your account.</small>
								<div class="toggle-wrapper">
									<div class="leftpanel-toggle toggle-light success"></div>
								</div>
							</li>
							<li class="list-group-item">
								<h5>Call Phones</h5>
								<small>Make calls to friends and family right from your account.</small>
								<div class="toggle-wrapper">
									<div class="leftpanel-toggle-off toggle-light success"></div>
								</div>
							</li>
						</ul>
					</div>
					<div class="tab-pane" id="more">
						<h5 class="sidebar-title">其他...</h5>
					</div>
					<!-- tab-pane -->
				</div>
				<!-- tab-content -->
			</div>
			<!-- leftpanelinner -->
		</div>
		<!-- leftpanel -->

		<div class="mainpanel">
			<div class="contentpanel" style="padding: 2px;">
				<div class="row">
					<div class="col-md-10 col-lg-9 dash-left">
						<!-- panel -->
						<div class="panel panel-announcement">
				            <ul class="panel-options">
				              <li><a><i class="fa fa-refresh"></i></a></li>
				              <li><a class="panel-remove"><i class="fa fa-remove"></i></a></li>
				            </ul>
				            <div class="panel-heading">
				              <h4 class="panel-title">系统公告:</h4>
				            </div>
				            <div class="panel-body">
				              <h2><img src="http://www.ten28.com/fref.jpg"><br>
							  A new admin template has been released by <span class="text-primary">ThemePixels</span> with a name <span class="text-success">Quirk</span> is now live and available for purchase!</h2>
				              <h4>Explore this new template and see the beauty of Quirk! <a href="">Take a Tour!</a></h4>
				            </div>
				        </div>
						<!-- row -->

						<div class="row panel-quick-page">
							<div class="col-xs-4 col-sm-5 col-md-4 page-user">
								<div class="panel">
									<div class="panel-heading">
										<h4 class="panel-title">用户管理</h4>
									</div>
									<div class="panel-body">
										<div class="page-icon"><i class="icon ion-person-stalker"></i></div>
									</div>
								</div>
							</div>
							<div class="col-xs-4 col-sm-4 col-md-4 page-products">
								<div class="panel">
									<div class="panel-heading">
										<h4 class="panel-title">Manage Products</h4>
									</div>
									<div class="panel-body">
										<div class="page-icon"><i class="fa fa-shopping-cart"></i></div>
									</div>
								</div>
							</div>
							<div class="col-xs-4 col-sm-3 col-md-2 page-events">
								<div class="panel">
									<div class="panel-heading">
										<h4 class="panel-title">Events</h4>
									</div>
									<div class="panel-body">
										<div class="page-icon"><i class="icon ion-ios-calendar-outline"></i></div>
									</div>
								</div>
							</div>
							<div class="col-xs-4 col-sm-3 col-md-2 page-messages">
								<div class="panel">
									<div class="panel-heading">
										<h4 class="panel-title">Messages</h4>
									</div>
									<div class="panel-body">
										<div class="page-icon"><i class="icon ion-email"></i></div>
									</div>
								</div>
							</div>
							<div class="col-xs-4 col-sm-5 col-md-2 page-reports">
								<div class="panel">
									<div class="panel-heading">
										<h4 class="panel-title">Reports</h4>
									</div>
									<div class="panel-body">
										<div class="page-icon"><i class="icon ion-arrow-graph-up-right"></i></div>
									</div>
								</div>
							</div>
							<div class="col-xs-4 col-sm-4 col-md-2 page-statistics">
								<div class="panel">
									<div class="panel-heading">
										<h4 class="panel-title">Statistics</h4>
									</div>
									<div class="panel-body">
										<div class="page-icon"><i class="icon ion-ios-pulse-strong"></i></div>
									</div>
								</div>
							</div>
							<div class="col-xs-4 col-sm-4 col-md-4 page-support">
								<div class="panel">
									<div class="panel-heading">
										<h4 class="panel-title">Manage Support</h4>
									</div>
									<div class="panel-body">
										<div class="page-icon"><i class="icon ion-help-buoy"></i></div>
									</div>
								</div>
							</div>
							<div class="col-xs-4 col-sm-4 col-md-2 page-privacy">
								<div class="panel">
									<div class="panel-heading">
										<h4 class="panel-title">Privacy</h4>
									</div>
									<div class="panel-body">
										<div class="page-icon"><i class="icon ion-android-lock"></i></div>
									</div>
								</div>
							</div>
							<div class="col-xs-4 col-sm-4 col-md-2 page-settings">
								<div class="panel">
									<div class="panel-heading">
										<h4 class="panel-title">Settings</h4>
									</div>
									<div class="panel-body">
										<div class="page-icon"><i class="icon ion-gear-a"></i></div>
									</div>
								</div>
							</div>
						</div>
						<!-- row -->

					</div>
					<!-- col-md-9 -->
					<div class="col-md-2 col-lg-3 dash-right">
						<div class="row">
								<div class="panel panel-danger panel-weather">
									<div class="panel-heading">
										<h4 class="panel-title">天气预报</h4>
									</div>
									<div class="panel-body inverse">
										<div class="row mb10">
											<div class="col-xs-6">
												<h2 class="today-day">星期五</h2>
												<h3 class="today-date">2016-02-05</h3>
											</div>
											<div class="col-xs-6">
												<i class="wi wi-hail today-cloud"></i>
											</div>
										</div>
										<p class="nomargin">天气多云转晴，适合外出小恬，漫步!</p>
										<div class="row mt10">
											<div class="col-xs-7">
												<strong>气温:</strong>+12
											</div>
											<div class="col-xs-5">
												<strong>湿度:</strong> +30 mph
											</div>
										</div>
									</div>
								</div>
								
								<div class="panel panel-primary list-announcement">
									<div class="panel-heading">
										<h4 class="panel-title">工作任务清单</h4>
									</div>
									<div class="panel-body">
										<ul class="list-unstyled mb20">
											<li>
												<a href="">预算管理系统升级...</a>
												<small>June 30, 2015 <a href="">7 shares</a></small>
											</li>
											<li>
												<a href="">内部银行系统升级...</a>
												<small>June 15, 2015 &nbsp; <a href="">11 shares</a></small>
											</li>
											<li>
												<a href="">系统检测...</a>
												<small>June 15, 2015 &nbsp; <a href="">2 shares</a></small>
											</li>
										</ul>
									</div>
									<div class="panel-footer">
										<button class="btn btn-primary btn-block">跟多任务跟踪 <i class="fa fa-arrow-right"></i></button>
									</div>
								</div>
								
								
								<div class="panel panel-success">
									<div class="panel-heading">
										<h4 class="panel-title">Recent User Activity</h4>
									</div>
									<div class="panel-body">
										<ul class="media-list user-list">
											<li class="media">
												<div class="media-left">
													<a href="#">
														<img class="media-object img-circle" src="./assets/images/photos/user2.png" alt="">
													</a>
												</div>
												<div class="media-body">
													<h4 class="media-heading nomargin"><a href="">Floyd M. Romero</a></h4> is now following <a href="">Christina R. Hill</a>
													<small class="date"><i class="glyphicon glyphicon-time"></i> Just now</small>
												</div>
											</li>
											
											<li class="media">
												<div class="media-left">
													<a href="#">
														<img class="media-object img-circle" src="./assets/images/photos/user3.png" alt="">
													</a>
												</div>
												<div class="media-body">
													<h4 class="media-heading nomargin"><a href="">Jennie S. Gray</a></h4> posted a video on <a href="">The Discovery</a>
													<small class="date"><i class="glyphicon glyphicon-time"></i> June 25, 2015</small>
												</div>
											</li>
											<li class="media">
												<div class="media-left">
													<a href="#">
														<img class="media-object img-circle" src="./assets/images/photos/user5.png" alt="">
													</a>
												</div>
												<div class="media-body">
													<h4 class="media-heading nomargin"><a href="">Nicholas T. Hinkle</a></h4> liked your video on <a href="">The Discovery</a>
													<small class="date"><i class="glyphicon glyphicon-time"></i> June 24, 2015</small>
												</div>
											</li>
											<li class="media">
												<div class="media-left">
													<a href="#">
														<img class="media-object img-circle" src="./assets/images/photos/user2.png" alt="">
													</a>
												</div>
												<div class="media-body">
													<h4 class="media-heading nomargin"><a href="">Floyd M. Romero</a></h4> liked your photo on <a href="">My Life Adventure</a>
													<small class="date"><i class="glyphicon glyphicon-time"></i> June 24, 2015</small>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
				</div>
					<!-- col-md-3 -->
			</div>
				<!-- row -->
		</div>
			<!-- contentpanel -->

		<script src="./assets/lib/jquery/jquery.js"></script>
		<script src="./assets/lib/bootstrap/js/bootstrap.js"></script>
		<script src="./assets/lib/jquery-toggles/toggles.js"></script>
		
		<script src="./assets/js/quirk.js?V=2"></script>
	</body>

</html>