<!DOCTYPE html>
<html lang="en">
<head>
	
	<!-- start: Meta -->
	<meta charset="utf-8">
	<title>Vyper Back office</title>
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link href="{{ path_css }}acme/css/bootstrap.min.css" rel="stylesheet">
	<link href="{{ path_css }}acme/css/style.min.css" rel="stylesheet">
	<link href="{{ path_css }}acme/css/retina.css" rel="stylesheet">
	<!-- end: CSS -->

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="css/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="css/ie9.css" rel="stylesheet">
	<![endif]-->
	
	<!-- start: Favicon and Touch Icons -->
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
	<link rel="shortcut icon" href="ico/favicon.png">
	<!-- end: Favicon and Touch Icons -->
	
		
		
		
</head>

<body>
		<!-- start: Header -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container">
				<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".sidebar-nav.nav-collapse">
				      <span class="icon-bar"></span>
				      <span class="icon-bar"></span>
				      <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"><span>Vyper Jmusic</span></a>
								
				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav">
					<ul class="nav pull-right">
						<li class="dropdown hidden-xs">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white warning-sign"></i>
							</a>
							<ul class="dropdown-menu notifications">
								<li>
									<span class="dropdown-menu-title">You have 11 notifications</span>
								</li>	
                            	<li>
                                    <a href="#">
										+ <i class="halflings-icon white user"></i> <span class="message">New user registration</span> <span class="time">1 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										+ <i class="halflings-icon white comment"></i> <span class="message">New comment</span> <span class="time">7 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										+ <i class="halflings-icon white comment"></i> <span class="message">New comment</span> <span class="time">8 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										+ <i class="halflings-icon white comment"></i> <span class="message">New comment</span> <span class="time">16 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										+ <i class="halflings-icon white user"></i> <span class="message">New user registration</span> <span class="time">36 min</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										+ <i class="halflings-icon white cart"></i> <span class="message">2 items sold</span> <span class="time">1 hour</span> 
                                    </a>
                                </li>
								<li class="warning">
                                    <a href="#">
										- <i class="halflings-icon white user"></i> <span class="message">User deleted account</span> <span class="time">2 hour</span> 
                                    </a>
                                </li>
								<li class="warning">
                                    <a href="#">
										- <i class="halflings-icon white shopping-cart"></i> <span class="message">Transaction was canceled</span> <span class="time">6 hour</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										+ <i class="halflings-icon white comment"></i> <span class="message">New comment</span> <span class="time">yesterday</span> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										+ <i class="halflings-icon white user"></i> <span class="message">New user registration</span> <span class="time">yesterday</span> 
                                    </a>
                                </li>
                                <li>
                            		<a class="dropdown-menu-sub-footer">View all notifications</a>
								</li>	
							</ul>
						</li>
						<!-- start: Notifications Dropdown -->
						<li class="dropdown hidden-xs">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white tasks"></i>
							</a>
							<ul class="dropdown-menu tasks">
								<li>
									<span class="dropdown-menu-title">You have 17 tasks in progress</span>
                            	</li>
								<li>
                                    <a href="#">
										<span class="header">
											<span class="title">iOS Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim progressBlue">80</div> 
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="header">
											<span class="title">Android Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim progressBlue">47</div> 
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="header">
											<span class="title">Django Project For Google</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim progressBlue">32</div> 
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										<span class="header">
											<span class="title">SEO for new sites</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim progressBlue">63</div> 
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="header">
											<span class="title">New blog posts</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim progressBlue">80</div> 
                                    </a>
                                </li>
								<li>
                            		<a class="dropdown-menu-sub-footer">View all tasks</a>
								</li>	
							</ul>
						</li>
						<!-- end: Notifications Dropdown -->
						<!-- start: Message Dropdown -->
						<li class="dropdown hidden-xs">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white envelope"></i>
							</a>
							<ul class="dropdown-menu messages">
								<li>
									<span class="dropdown-menu-title">You have 9 messages</span>
								</li>	
                            	<li>
                                    <a href="#">
										
										<span class="header">
											<span class="from">
										    	Łukasz Holeczek
										     </span>
											<span class="time">
										    	6 min
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										
										<span class="header">
											<span class="from">
										    	Megan Abott
										     </span>
											<span class="time">
										    	56 min
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										
										<span class="header">
											<span class="from">
										    	Kate Ross
										     </span>
											<span class="time">
										    	3 hours
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
								<li>
                                    <a href="#">
										
										<span class="header">
											<span class="from">
										    	Julie Blank
										     </span>
											<span class="time">
										    	yesterday
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										
										<span class="header">
											<span class="from">
										    	Jane Sanders
										     </span>
											<span class="time">
										    	Jul 25, 2012
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>  
                                    </a>
                                </li>
								<li>
                            		<a class="dropdown-menu-sub-footer">View all messages</a>
								</li>	
							</ul>
						</li>
						<!-- end: Message Dropdown -->
						<li>
							<a class="btn" href="#">
								<i class="halflings-icon white wrench"></i>
							</a>
						</li>
						<!-- start: User Dropdown -->
						<li class="dropdown">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white user"></i> Łukasz Holeczek
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="halflings-icon white user"></i> Profile</a></li>
								<li><a href="login.html"><i class="halflings-icon white off"></i> Logout</a></li>
							</ul>
						</li>
						<!-- end: User Dropdown -->
					</ul>
				</div>
				<!-- end: Header Menu -->
				
			</div>
		</div>
	</div>
	<!-- start: Header -->
	
		<div class="container">
		<div class="row">

				
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="col-sm-1">
				<div class="nav-collapse sidebar-nav collapse navbar-collapse bs-navbar-collapse">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li{% if active_article %} class="active"{% endif %}><a href="{{ base_url ~ link_admin_show_article }}"><i class="icon-book"></i><span class="hidden-sm"> Articles</span></a></li>
						<li{% if active_picture %} class="active"{% endif %}><a href="{{ base_url ~ link_admin_show_picture }}"><i class="icon-picture"></i><span class="hidden-sm"> Pictures</span></a></li>
						<li{% if active_artist %} class="active"{% endif %}><a href="{{ base_url ~ link_admin_show_artist }}"><i class="icon-star"></i><span class="hidden-sm"> Artists</span></a></li>
						<li{% if active_event %} class="active"{% endif %}><a href="{{ base_url ~ link_admin_show_event }}"><i class="icon-star"></i><span class="hidden-sm"> Events</span></a></li>
						<li>
							<a class="dropmenu" href="#"><i class="icon-star"></i><span class="hidden-sm"> Icons</span><span class="badge badge-important">3</span></a>
							<ul>
								<li><a class="submenu" href="halflings.html"><i class="icon-star"></i><span class="hidden-sm"> Halflings</span></a></li>
								<li><a class="submenu" href="glyphiconspro.html"><i class="icon-star"></i><span class="hidden-sm"> Glyphicons PRO</span></a></li>
								<li><a class="submenu" href="fontawesome.html"><i class="icon-star"></i><span class="hidden-sm"> Font Awesome</span></a></li>
							</ul>
						</li>
						<li><a href="login.html"><i class="icon-lock"></i><span class="hidden-sm"> Login Page</span></a></li>
					</ul>
				</div>
			</div>
			<a id="main-menu-toggle" class="hidden-xs open"><i class="icon-reorder"></i></a>
			<!-- end: Main Menu -->

			
			<!-- start: Content -->
			<div id="content" class="col-sm-11">
			
			
			<div class="row">
				<div class="box span12">
					{{ template }}
				</div><!--/col-->
			</div><!--/row-->
    
					
			</div>
			<!-- end: Content -->
			
			<!-- start: Widgets Area -->
<div id="widgets-area" class="col-sm-2">
	
	<ul class="nav tab-menu nav-tabs" id="myTab">
		<li class="active"><a href="#charts"><i class="icon-bar-chart"></i></a></li>
		<li><a href="#users"><i class="icon-group"></i></a></li>
		<li><a href="#messages"><i class="icon-envelope"></i></a></li>
		<li><a id="close-widgets-area" href="#"><i class="icon-signin"></i></a></li>
	</ul>
	 
	<div id="myTabContent" class="tab-content">
		<div class="tab-pane active" id="charts">
			
			<div class="bar-stat">
				<span class="title">Account balance</span>
				<span class="value">$19 999,99</span>
				<span class="chart green">7,3,2,6,6,3,9,0,1,4</span>
			</div>

			<hr>

			<div class="bar-stat">
				<span class="title">Clients</span>
				<span class="value">1278</span>
				<span class="chart yellow">8,2,5,4,7,4,7,2,5,9</span>
			</div>

			<hr>

			<div class="bar-stat">
				<span class="title">Orders</span>
				<span class="value">5876</span>
				<span class="chart blue">2,4,6,8,3,5,9,3,2,2</span>
			</div>

			<hr>

			<div class="bar-stat">
				<span class="title">Messages</span>
				<span class="value">673</span>
				<span class="chart red">0,3,3,8,3,3,2,7,8,4</span>
			</div>
			
			<hr>
			
			<div id="cpu-usage"></div>
			
			<ul class="progress-bars">
				
				<li>
					<span class="title">Free Memory</span>
					<span class="percent"></span>
					<div class="taskProgress progressSlim progressGreen">80</div>
				</li>
				
				<li>
					<span class="title">Free HDD Drive</span>
					<span class="percent"></span>
					<div class="taskProgress progressSlim progressYellow">20</div>
				</li>
				
				<li>
					<span class="title">Free SSD Drive</span>
					<span class="percent"></span>
					<div class="taskProgress progressSlim progressBlue">57</div>
				</li>
				
				<li>
					<span class="title">Transfer</span>
					<span class="percent"></span>
					<div class="taskProgress progressSlim progressRed">45</div>
				</li>	
				
			</ul>	

		</div>
		<div class="tab-pane" id="users">
			
			<ul class="users-list">
            	<li>
                    <a href="#">
						<span class="status active"></span>
						
						<span class="name">Łukasz Holeczek</span>
                    </a>
                </li>
                <li>
                    <a href="#">
						<span class="status busy"></span>
						
						<span class="name">Megan Abott</span>
                    </a>
                </li>
                <li>
                    <a href="#">
						<span class="status disable"></span>
					
						<span class="name">Kate Ross</span>
                    </a>
                </li>
				<li>
                    <a href="#">
						<span class="status active"></span>
						
						<span class="name">Julie Blank</span>
                    </a>
                </li>
                <li>
                    <a href="#">
						<span class="status"></span>
					
						<span class="name">Jane Sanders</span>
                    </a>
                </li>
				<li>
            		<a href="#">View all users</a>
				</li>	
			</ul>

		</div>
		<div class="tab-pane" id="messages">
			
			<ul class="messages-list">
            	<li>
                    <a href="#">
					
						<span class="name">Łukasz Holeczek</span>
						<span class="date">25/6/2013</span>
						<span class="title">Custom Bootstrap design for new client</span>
                    </a>
                </li>
                <li>
                    <a href="#">
						
						<span class="name">Megan Abott</span>
						<span class="date">25/6/2013</span>
						<span class="title">Custom Bootstrap design for new client</span>
                    </a>
                </li>
                <li>
                    <a href="#">
					
						<span class="name">Kate Ross</span>
						<span class="date">25/6/2013</span>
						<span class="title">Custom Bootstrap design for new client</span>
                    </a>
                </li>
				<li>
                    <a href="#">
						
						<span class="name">Julie Blank</span>
						<span class="date">25/6/2013</span>
						<span class="title">Custom Bootstrap design for new client</span>
                    </a>
                </li>
                <li>
                    <a href="#">
					
						<span class="name">Jane Sanders</span>
						<span class="date">25/6/2013</span>
						<span class="title">Custom Bootstrap design for new client</span>
                    </a>
                </li>
				<li>
            		<a href="#">View all messages</a>
				</li>	
			</ul>

		</div>
	</div>
			
</div>
<!-- end: Widgets Area -->

<a id="widgets-area-button" class="hidden-sm hidden-xs open"><i class="icon-reorder"></i></a>				
				</div><!--/row-->
		
	</div><!--/container-->
	
		
	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>Settings</h3>
		</div>
		<div class="modal-body">
			<p>Here settings can be configured...</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Close</a>
			<a href="#" class="btn btn-primary">Save changes</a>
		</div>
	</div>
	
	<div class="clearfix"></div>
	
	<footer>
		<div class="container">
				<span style="text-align:left;float:left">&copy; 2013 <a href="http://bootstrapmaster.com" alt="Twitter Bootstrap Themes">creativeLabs</a></span>
				<span class="hidden-phone" style="text-align:right;float:right">Powered by: <a href="http://admintemplates.co" alt="Bootstrap Admin Templates">ACME Dashboard</a></span>
		</div>
	</footer>
	
	<!-- start: JavaScript-->

		<script src="{{ path_js }}acme/js/jquery-1.10.2.min.js"></script>
	<script src="{{ path_js }}acme/js/jquery-migrate-1.2.1.min.js"></script>
	
		<script src="{{ path_js }}acme/js/jquery-ui-1.10.3.min.js"></script>
	
		<script src="{{ path_js }}acme/js/jquery.ui.touch-punch.js"></script>
	
		<script src="{{ path_js }}acme/js/modernizr.js"></script>
	
		<script src="{{ path_js }}acme/js/bootstrap.min.js"></script>
		
		<script src='{{ path_js }}acme/js/fullcalendar.min.js'></script>
	
		<script src='{{ path_js }}acme/js/jquery.dataTables.min.js'></script>
	<script src='{{ path_js }}acme/js/dataTables.bootstrap.min.js'></script>

		<script src="{{ path_js }}acme/js/excanvas.js"></script>
	<script src="{{ path_js }}acme/js/jquery.flot.js"></script>
	<script src="{{ path_js }}acme/js/jquery.flot.pie.js"></script>
	<script src="{{ path_js }}acme/js/jquery.flot.stack.js"></script>
	<script src="{{ path_js }}acme/js/jquery.flot.resize.min.js"></script>
	
		<script src="{{ path_js }}acme/js/jquery.chosen.min.js"></script>
	
		<script src="{{ path_js }}acme/js/jquery.uniform.min.js"></script>
		
		<script src="{{ path_js }}acme/js/jquery.cleditor.min.js"></script>
	
		<script src="{{ path_js }}acme/js/jquery.noty.js"></script>
	
		<script src="{{ path_js }}acme/js/jquery.elfinder.min.js"></script>
	
		<script src="{{ path_js }}acme/js/jquery.raty.min.js"></script>
	
		<script src="{{ path_js }}acme/js/jquery.iphone.toggle.js"></script>
	
		<script src="{{ path_js }}acme/js/jquery.uploadify-3.1.min.js"></script>
	
		<script src="{{ path_js }}acme/js/jquery.gritter.min.js"></script>
	
		<script src="{{ path_js }}acme/js/jquery.masonry.min.js"></script>
	
		<script src="{{ path_js }}acme/js/jquery.knob.modified.js"></script>
	
		<script src="{{ path_js }}acme/js/jquery.sparkline.min.js"></script>
	
		<script src="{{ path_js }}acme/js/counter.js"></script>
	
		<script src="{{ path_js }}acme/js/raphael.2.1.0.min.js"></script>
	<script src="{{ path_js }}acme/js/justgage.1.0.1.min.js"></script>
	
		<script src="{{ path_js }}acme/js/wizard.min.js"></script>
	
		<script src="{{ path_js }}acme/js/retina.js"></script>

		<script src="{{ path_js }}acme/js/core.min.js"></script>
	
		<script src="{{ path_js }}acme/js/charts.min.js"></script>
		
		<script src="{{ path_js }}timepicker-ui.js"></script>
		
		<script src="{{ path_js }}acme/js/custom.min.js"></script>
		
		
	<!-- end: JavaScript-->
	
</body>
</html>