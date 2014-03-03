<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>{% if front_page_article %}{{ article.getTitle }} | {% endif %}Visual kei - JPop - Jrock{% if front_page_index %} | Toute la Jmusic, toutes les news en temps réels{% endif %}</title>
 
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="L'actualité de la musique japonaise au travers de news, commentaires, vidéos, interviews et plus encore." />
		<meta name="keywords" content="vyperjmusic, jmusic, j-music, jpop, j-pop, jrock, j-rock, visual kei, visu, oshare kei, oshare, youtube, forum, vyper" />
		
		<meta name="author" content="vyper-jmusic.com" />
		<meta name="ROBOTS" content="index,follow" />
		
		<!--  Theme -->
		<link rel='stylesheet' id='fp-style-css'  href='{{ path_css }}portal.css' type='text/css' media='all' />
		<link rel='stylesheet' id='fp-font-awesome-css'  href='http://newwp.dev/wp-content/themes/fp_discover/css/fonts/font-awesome/css/font-awesome.min.css?ver=3.8.1' type='text/css' media='all' />
        
       
        
        <!--  components -->
        <link rel="stylesheet" href="{{ path_css }}components/auth/auth.css">
        <link rel="stylesheet" href="{{ path_css }}components/news/news.css">
        <!-- cleditor -->
        <link rel="stylesheet" href="{{ path_css }}plugins/cleditor/jquery.cleditor.css">

        <!--[if lt IE 9]>
            <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
            <script>window.html5 || document.write('<script src="assets/js/vendor/html5shiv.js"><\/script>')</script>
        <![endif]-->
        
   
        
        
        
        
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="{{ path_js }}vendor/jquery-1.10.1.min.js"><\/script>')</script>

        <script src="{{ path_js }}plugins.js"></script>
        <script src="{{ path_js }}main.js"></script>
		
		<script src="{{ path_js }}bootstrap/bootstrap.min.js"></script>
        <script src="{{ path_js }}plugins/cleditor/jquery.cleditor.min.js"></script>
        
        <script src="{{ path_js }}owl-carousel/owl.carousel.js"></script>
        <script src="{{ path_js }}liscroll.js"></script>
        
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
        
        
        <header id="header">
        	<div class="top main-color-bg">
			<div class="content-wrap">
								
					<div class="left">
						<ul class="list">
							<li>
								<i class="icon-home"></i>
								<a href="http://demo.fairpixels.com/discover">Home</a>
							</li>
														
							<li>
								<i class="icon-star"></i>
								<a href="#">About us</a>			
							</li>
														
							<li>
								<i class="icon-leaf"></i>
								Some text							
							</li>
														
							<li>
								<i class="icon-envelope"></i>
								<a href="http://demo.fairpixels.com/discover/contact/">Contact us</a>
							</li>							
														
						</ul>
					</div> 
					<div class="social">
						<ul class="list">
							<li class="twitter"><a href="#"><i class="icon-twitter"></i></a></li>
							<li class="fb"><a href="#"><i class="icon-facebook"></i></a></li>
							<li class="gplus"><a href="#"><i class="icon-google-plus"></i></a></li>
							<li class="linkedin"><a href="#"><i class="icon-linkedin"></i></a></li>
							<li class="pinterest"><a href="#"><i class="icon-pinterest"></i></a></li>
							<li class="instagram"><a href="#"><i class="icon-instagram"></i></a></li>
							<li class="dribbble"><a href="#"><i class="icon-dribbble"></i></a></li>
							<li class="youtube"><a href="#"><i class="icon-youtube"></i></a></li>										
						</ul>
					</div>
			</div>
			</div>
			
			<script>
				jQuery(document).ready(function($) {
					$(".ticker").show();
					$("ul#ticker-posts").liScroll({travelocity: 0.05});
				});
			</script>
			
			<div class="ticker-section">
			<div class="content-wrap">
				<div class="ticker" style="display: block;">
			
					<div class="title second-color-bg">
						<div class="ticker-icon">					
							<i class="icon-rocket"></i>					
						</div>								
						<h6>Latest</h6>
					</div>		
			
					<div class="tickercontainer"><div class="mask">
						<ul id="ticker-posts" class="newsticker" style="width: 1711px; left: -600.1500000000001px;">
							<li>
								<a href="http://demo.fairpixels.com/discover/2013/09/ellie/" rel="bookmark">Ellie looks younger than before</a>
								<div class="sep"></div>
							</li>							
							<li>
								<a href="http://demo.fairpixels.com/discover/2013/09/villain/" rel="bookmark">A new female villain</a>
								<div class="sep"></div>
							</li>							
							<li>
								<a href="http://demo.fairpixels.com/discover/2013/09/hallway/" rel="bookmark">The clogged hallway</a>
								<div class="sep"></div>
							</li>							
							<li>
								<a href="http://demo.fairpixels.com/discover/2013/09/fortune-2/" rel="bookmark">Drake’s Fortune hunting</a>
								<div class="sep"></div>
							</li>							
							<li>
								<a href="http://demo.fairpixels.com/discover/2013/09/fortune/" rel="bookmark">Drake’s Fortune screenshot</a>
								<div class="sep"></div>
							</li>							
							<li>
								<a href="http://demo.fairpixels.com/discover/2013/09/so-real/" rel="bookmark">She looks so real</a>
								<div class="sep"></div>
							</li>							
							<li>
								<a href="http://demo.fairpixels.com/discover/2013/09/amazing-graphics/" rel="bookmark">Amazing graphics in the game</a>
								<div class="sep"></div>
							</li>							
						</ul>
					</div></div>

				</div>
		
				<div class="search">
						<form method="get" id="searchform" class="search-form" action="">
						<input type="text" class="search-field" name="s" id="s" placeholder="Search">
	    				<button class="search-submit"><i class="icon-search"></i></button>
						</form>
				</div>
				
			</div>
			</div>
			<!-- /ticker-section -->
			
			<div class="logo-section">
			<div class="content-wrap">
				<div class="logo">			
					<h1>
							<a href="http://newwp.dev" title="Discover">
								<img src="http://newwp.dev/wp-content/themes/fp_discover/images/logo.png" alt="Discover">
							</a>
					</h1>	
						
				</div>
				
				<div class="banner">	
						<a href="http://newwp.dev"><img src="http://newwp.dev/wp-content/themes/fp_discover/images/ad728.png"></a>	
				</div>
						
			</div>
			</div>
			
			
			<nav class="primary-menu clearfix">
			<div class="content-wrap">
				
				<div class="mobile-menu">
					<a class="menu-slide" href="#">
						<span class="title">Menu</span>
						<span class="icon"><i class="icon-list"></i></span>
					</a>
				</div>
				
				<ul id="menu-primary-menu" class="sf-menu sf-js-enabled sf-shadow">
					<li id="menu-item-10" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-5 current_page_item menu-item-10"><a href="http://newwp.dev/">Homepage</a></li>
					<li id="menu-item-11" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-11"><a href="http://newwp.dev/?page_id=2" class="sf-with-ul">Page d’exemple<span class="sf-sub-indicator"> »</span></a>
						<ul class="sub-menu" style="visibility: hidden; display: none;">
							<li id="menu-item-12" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12"><a href="http://newwp.dev/?page_id=2">Page d’exemple</a></li>
						</ul>
					</li>
				</ul>							
			</div>
			</nav>
			
			<div class="clearfix"></div>
			
			<script>
				jQuery(document).ready(function($) {
					$("#carousel-posts").owlCarousel({
						slideSpeed: 200,					//Slide speed in milliseconds
						paginationSpeed: 800,				//Pagination speed in milliseconds
						autoPlay: 5000,						//Autoplay every 5 seconds. 
						stopOnHover: true,					//Stop autoplay on mouse hover
						navigation: true,					//Display "next" and "prev" buttons.
						pagination: false,					//Display pagination
						items : 3,							//Number of items to display	
						itemsDesktop : [1199,3],			//Number of slides visible with a particular browser width.
						itemsTablet: [736,2],
						itemsMobile: [462,1]	
					});
				});
			</script>
			
			
			{% if is_carousel %}
			<div class="header-carousel section main-color-bg">
		
				<div class="content-wrap">
					<div id="carousel-posts" class="owl-carousel">
							
							{% for article in articles %}
        						<div class="item">
									<div class="thumbnail overlay">
										<a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html">
											<img width="374" height="200" src="{{ base_url }}uploads/pic/{{ article.getRelatedPicture }}" class="attachment-fp374_200 wp-post-image" alt="5">									
										</a>
									</div>
									
									
									<div class="post-details">
										<div class="post-wrap">
										<div class="post-title">
											<div class="post-icon"><i class="icon-file-text-alt"></i></div>
											<h4><a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html">																				
												{{ article.getTitle }} 										
												</a>
											</h4>
										</div>
										
										<div class="post-desc">
											<div class="excerpt">
												{{ article.getDescription }} 											
											</div>
											<div class="more">
												<a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html">En savoir plus</a>
											</div>
										</div>	
										
										</div>
									</div>
									
								</div>
        					{% endfor %}						
			
						<div class="owl-controls clickable"><div class="owl-buttons"><div class="owl-prev">prev</div><div class="owl-next">next</div></div></div>
					</div>
				</div>
			
			</div>
			{% endif %}

        </header>
        
		
		<!-- top black -->
		<div id="bandeauTop">
			<div class="container">
			</div>
		</div>
		
		<!-- top bandeau -->
		<div id="bandeauIdentification">
			<div class="container">
			</div>
		</div>
		
		<!-- header -->
		<header id="header">
			<div class="container">
				<div id="banniere-pub-normale">
					
					{{ script_add_728_90 }}			
					
				</div>
			</div>
		</header>
		
        <!-- container -->
		<section id="container">
			<div class="container">
				
		
				
				<!-- sous-navigation -->
				<div id="sous-navigation">
                		
                        <div style="line-height:26px; color:#FFF; float:left; position:relative; margin-left:15px;">
                        		
                                                                
                        </div>
                </div>
         
                
				<!-- Start template -->
				{{ template }}
				<!-- End template -->
			</div>
		</section>

        
		
		
		
        <script>
            var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
            (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
            g.src='//www.google-analytics.com/ga.js';
            s.parentNode.insertBefore(g,s)}(document,'script'));
        </script>
    </body>
</html>

