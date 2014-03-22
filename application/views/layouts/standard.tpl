<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>{% if front_page_article %}{{ article.getTitle }} | {% endif %}Visual kei - JPop - Jrock - Jmusic - VYPER Music Japan{% if front_page_index %} | Toute la Jmusic, toutes les news en temps réels{% endif %}</title>
 
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="L'actualité de la musique japonaise au travers de news, live reports, vidéos, interviews, commentaires et plus encore." />
		<meta name="keywords" content="vyperjmusic, actu, jmusic, j-music, jpop, j-pop, jrock, j-rock, visual kei, visu, oshare kei, oshare, actu jmusic, actu jpop, musique japonaise, youtube, forum, vyper" />
		
		<meta name="author" content="vyper-jmusic.com" />
		<meta name="ROBOTS" content="index,follow" />
		
		<!--  Theme -->
		<link rel='stylesheet' id='fp-style-css'  href='{{ path_css }}portal.css' type='text/css' media='all' />
		<link rel='stylesheet' id='fp-font-awesome-css'  href='{{ path_css }}fonts/font-awesome/css/font-awesome.min.css' type='text/css' media='all' />
        
       
        
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
        {% if front_page_article %}
        	<div id="fb-root"></div>
			<script>(function(d, s, id) {
			  var js, fjs = d.getElementsByTagName(s)[0];
			  if (d.getElementById(id)) return;
			  js = d.createElement(s); js.id = id;
			  js.src = "//connect.facebook.net/fr_FR/all.js#xfbml=1&appId=1470537739827941";
			  fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'facebook-jssdk'));</script>
        {% endif %}
        
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
							<li class="twitter"><a href="{{ vyper_twitter }}"><i class="icon-twitter"></i></a></li>
							<li class="fb"><a href="{{ vyper_facebook }}"><i class="icon-facebook"></i></a></li>
							<li class="gplus"><a href="#"><i class="icon-google-plus"></i></a></li>
							<li class="pinterest"><a href="#"><i class="icon-pinterest"></i></a></li>
							<li class="youtube"><a href="{{ vyper_youtube }}"><i class="icon-youtube"></i></a></li>										
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
						<h6>En ce moment</h6>
					</div>		
			
					<div class="tickercontainer"><div class="mask">
						<ul id="ticker-posts" class="newsticker" >
							
							{% for article in ticker_articles %}
								<li>
									<a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html">{{ article.getTitle }}</a>
									<div class="sep"></div>
								</li>
							{% endfor %}
							
										
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
					<li id="menu-item-44" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-44 current_page_item"><a href="{{ base_url }}">Home</a></li>
					<li class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-5 current_page_item"><a href="{{ base_url }}news">News</a></li>
					<li id="menu-item-11" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-11"><a href="{{ base_url }}interviews" class="sf-with-ul">Interviews<span class="sf-sub-indicator"> »</span></a>
						<ul class="sub-menu" style="visibility: hidden; display: none;">
							<li id="menu-item-12" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-12"><a href="http://newwp.dev/?page_id=2">Page d’exemple</a></li>
						</ul>
					</li>
					<li class="menu-item menu-item-type-post_type menu-item-object-page"><a href="{{ base_url }}live-reports">Live Reports</a></li>
					<li class="menu-item menu-item-type-post_type menu-item-object-page"><a href="{{ base_url }}chroniques">Chroniques</a></li>
					<li class="menu-item menu-item-type-post_type menu-item-object-page"><a href="#">Galerie</a></li>
					<li class="menu-item menu-item-type-post_type menu-item-object-page"><a href="#">Artistes</a></li>
				</ul>							
			</div>
			</nav>
			
			<div class="clearfix"></div>
			
			{% if is_carousel %}
			
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
			
					</div>
				</div>
			
			</div>
			{% endif %}

        </header>
        
		
		
		<div id="container" class="hfeed">
			<div id="main">
				
				
			
				<div id="content" class="single-post">
				
					{% if front_page_index %}
				<div id="content" class="homepage">
					<script>
						jQuery(document).ready(function($) {
							$(".main-slider").show();
							$(".main-slider").owlCarousel({ 
								navigation : true,
								pagination: false,
								autoPlay : 5000,
								slideSpeed : 400,
								paginationSpeed : 400,
								singleItem: true 
							});
						});
					</script>
					<div class="main-slider section">
					
						{% for article in articles %}
						<div class="item">
								<a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html" >
									<img src="{{ base_url }}uploads/pic/{{ article.getRelatedPicture }}" class="attachment-fp780_400 wp-post-image" alt="5" />								</a>
								
								<div class="post-info">
									
									<div class="post-excerpt">
													
										<div class="title">
											<h2><a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html">{{ article.getTitle }}</a></h2>
											<div class="sep"></div>
										</div>								
									
										<div class="main-slider-description">
										{{ article.getDescription }} 										
										</div>
									
										<div class="read-more">
											<a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html">En savoir plus</a>
										</div>
									
									</div>
									
								</div>	
									
							</div>				
						
						
						{% endfor %}
					
						
						
					</div>
					<!-- /main-slider -->
					
					<div id="single-cats" class="section">
						<!-- category1 -->
					
						<div class="feat-cat one-half">
						
			
							<div class="cat-header">
								<div class="cat-title second-color-bg">
					
											<div class="cat-icon"><i class="icon-bell-alt"></i></div>					
											<h4>Dernières News</h4>	
								</div>
							</div>



                {% for article in recent_articles %}
                {% if loop.index == 1 %}


                <div class="main-post">
                    <div class="thumb-wrap">
                        <div class="thumb">
                            <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html"><img src="{{ base_url }}uploads/pic/{{ article.getRelatedPicture }}" class="attachment-fp374_200 wp-post-image" alt=""></a>
                        </div>

                        <span class="comments main-color-bg">
                            <i class="icon-comments"></i>
                            <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html" title="Comment on Ellie looks younger than before">no comments</a>
                        </span>

                        <div class="overlay">
                            <a class="post-link" href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html"><i class="icon-link"></i></a>
                        </div>


                    </div>

                    <div class="post-details">
                        <h3>
                            <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html">{{ article.getTitle }}</a>
                        </h3>

                        <div class="entry-meta">
                            <span class="date"><i class="icon-calendar"></i> {{ article.getReleaseDate }}</span>

                            <span class="category">
                                <i class="icon-folder-close"></i>
                                <a href="http://demo.fairpixels.com/discover/category/graphics/">Graphics</a>
                            </span>

                            <span class="views">
                                <i class="icon-eye-open"></i> 6549
                            </span>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi adipiscing augue quis augue egestas, sed gravida diam viverra. Ut vehicula quis nisi consequat rutrum. Morbi pulvinar arcu vel pellentesque dictum. Donec et placerat nunc. Integer…</p>
                    </div>
                </div>
                <!-- /one-half -->

                {% endif %}
                {% endfor %}



                <div class="post-list">

                    {% for key, article in recent_articles %}
                    {% if key>0 and key<4 %}



				        <div class="item-post">
                            <div class="thumb">
                                <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html"><img width="75" height="75" src="{{ base_url }}uploads/pic/{{ article.getRelatedPicture }}" class="attachment-fp75_75 wp-post-image" alt="3"></a>
                            </div>

                            <div class="post-right">
                                <h5>
                                    <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html" rel="bookmark">
                                        {{ article.getTitle }} {{ key }}
                                    </a>
                                </h5>

                                <div class="entry-meta">
                                    <span class="date">
                                        <i class="icon-calendar"></i>
                                        {{ article.getReleaseDate }}
                                    </span>

                                    <span class="comments">
                                        <i class="icon-comments"></i>
                                        <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html" title="Comment on A new female villain">1 comment</a>
                                    </span>
                                </div>
                            </div>
                        </div>


                        {% endif %}
                        {% endfor %}





                        </div><!-- /one-half -->



    </div><!-- /section1-cat -->
    <!-- /category1 -->

    <!-- category2 -->

    <div class="feat-cat one-half last">


    <div class="cat-header">
    <div class="cat-title second-color-bg">

                                <div class="cat-icon">
                <i class="icon-rocket"></i>
            </div>

                                <h4><a href="http://demo.fairpixels.com/discover/category/entertainment/">Entertainment</a></h4>


    </div>
    </div>



            <div class="main-post">
                                                <div class="thumb-wrap video-thumb">
                        <iframe width="560" height="315" src="//www.youtube.com/embed/Mef-OEmw9vI?wmode=transparent" frameborder="0" allowfullscreen=""></iframe>								</div>

                                            <div class="post-details">
                    <h3>
                        <a href="http://demo.fairpixels.com/discover/2013/09/villain/">
                            A new female villain									</a>
                    </h3>
                    <div class="entry-meta">
                        <span class="date">
                            <i class="icon-calendar"></i>
                            September 25, 2013									</span>


                                <span class="category">
                                    <i class="icon-folder-close"></i>
                                    <a href="http://demo.fairpixels.com/discover/category/entertainment/">Entertainment</a>											</span>

                        <span class="views">
                            <i class="icon-eye-open"></i>
                            5833									</span>
                    </div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi adipiscing augue quis augue egestas, sed gravida diam viverra. Ut vehicula quis nisi consequat rutrum. Morbi pulvinar arcu vel pellentesque dictum. Donec et placerat nunc. Integer…</p>
                </div>
            </div><!-- /one-half -->









                                <div class="post-list">


                <div class="item-post">
                                                        <div class="thumb">
                            <a href="http://demo.fairpixels.com/discover/2013/09/hallway/"><img width="75" height="75" src="http://demo.fairpixels.com/discover/wp-content/uploads/2013/09/7-75x75.jpg" class="attachment-fp75_75 wp-post-image" alt="7"></a>
                        </div>

                    <div class="post-right">
                        <h5>
                            <a href="http://demo.fairpixels.com/discover/2013/09/hallway/" rel="bookmark">
                                The clogged hallway
                            </a>
                        </h5>

                        <div class="entry-meta">
                            <span class="date">
                                <i class="icon-calendar"></i>
                                September 25, 2013										</span>

                                                                        <span class="comments">
                                    <i class="icon-comments"></i>
                                    <a href="http://demo.fairpixels.com/discover/2013/09/hallway/#comments" title="Comment on The clogged hallway">1 comment</a>											</span>

                        </div>

                    </div>

                </div>









                <div class="item-post">
                                                        <div class="thumb">
                            <a href="http://demo.fairpixels.com/discover/2013/09/fortune/"><img width="75" height="75" src="http://demo.fairpixels.com/discover/wp-content/uploads/2013/09/8-75x75.jpg" class="attachment-fp75_75 wp-post-image" alt="8"></a>
                        </div>

                    <div class="post-right">
                        <h5>
                            <a href="http://demo.fairpixels.com/discover/2013/09/fortune/" rel="bookmark">
                                Drake’s Fortune screenshot
                            </a>
                        </h5>

                        <div class="entry-meta">
                            <span class="date">
                                <i class="icon-calendar"></i>
                                September 25, 2013										</span>

                                                                        <span class="comments">
                                    <i class="icon-comments"></i>
                                    <a href="http://demo.fairpixels.com/discover/2013/09/fortune/#comments" title="Comment on Drake’s Fortune screenshot">5 comments</a>											</span>

                        </div>

                    </div>

                </div>









                <div class="item-post">
                                                        <div class="thumb">
                            <a href="http://demo.fairpixels.com/discover/2013/09/so-real/"><img width="75" height="75" src="http://demo.fairpixels.com/discover/wp-content/uploads/2013/09/2-75x75.jpg" class="attachment-fp75_75 wp-post-image" alt="2"></a>
                        </div>

                    <div class="post-right">
                        <h5>
                            <a href="http://demo.fairpixels.com/discover/2013/09/so-real/" rel="bookmark">
                                She looks so real
                            </a>
                        </h5>

                        <div class="entry-meta">
                            <span class="date">
                                <i class="icon-calendar"></i>
                                September 25, 2013										</span>

                                                                        <span class="comments">
                                    <i class="icon-comments"></i>
                                    <a href="http://demo.fairpixels.com/discover/2013/09/so-real/#respond" title="Comment on She looks so real">no comments</a>											</span>

                        </div>

                    </div>

                </div>


                        </div><!-- /one-half -->



    </div><!-- /section1-cat -->
    <!-- /category2 -->



    </div>

    </div>
    {% endif %}

        <!-- Start template -->
        {{ template }}
					<!-- End template -->
				</div>	
				<!-- /content -->
				<div id="sidebar">
					<aside id="fairpixels_recent_popular_widget-2" class="widget widget_tabs">		
						<script>
							jQuery(document).ready(function($) {				
								$(".widget-tab-titles li").click(function() {
									$(".widget-tab-titles li").removeClass('active');
									$(this).addClass("active");
									$(".tab-content").hide();
									var selected_tab = $(this).find("a").attr("href");
									$(selected_tab).fadeIn();
									return false;
								});
							});
						</script>

						<div class="widget-tabs-title-container">
							<ul class="widget-tab-titles">
								<li class="active"><h5><a href="#widget-tab1-content">Recent</a></h5></li>
								<li class=""><h5><a href="#widget-tab2-content">Popular</a></h5></li>
								<li class=""><h5><a href="#widget-tab3-content">Comments</a></h5></li>
							</ul>
						</div> 
						<div class="tabs-content-container">
			
							<div id="widget-tab1-content" class="tab-content" style="display: block;">	
								<ul class="list post-list">
								
									{% for article in recent_articles %}
									<li>
										<div class="thumbnail">
											<img src="{{ base_url }}uploads/pic/{{ article.getRelatedPicture }}" class="attachment-fp75_75 wp-post-image" alt="{{ article.getTitle }}">							
										</div>
										<div class="post-right">
											<h5><a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html">{{ article.getTitle }}</a></h5>
											<div class="entry-meta">
												<span class="date"><i class="icon-calendar"></i> {{ article.getReleaseDate }}</span>						 
											</div>
										</div>
									</li>
									{% endfor %}
						
								</ul>
							</div>
			
							<div id="widget-tab2-content" class="tab-content">
								<ul class="list post-list">
										
									<li>
										<div class="thumbnail">
											<img width="75" height="75" src="http://demo.fairpixels.com/discover/wp-content/uploads/2013/09/8-75x75.jpg" class="attachment-fp75_75 wp-post-image" alt="8">							
										</div>
										<div class="post-right">
											<h5><a href="http://demo.fairpixels.com/discover/2013/09/fortune/">Drake’s Fortune screenshot</a></h5>
											<div class="entry-meta">
												<span class="date"><i class="icon-calendar"></i>September 25, 2013</span>
												<span class="comments"><i class="icon-comments"></i><a href="http://demo.fairpixels.com/discover/2013/09/fortune/#comments" title="Comment on Drake’s Fortune screenshot">5</a>										</span>		
											</div>
										</div>
									</li>
								</ul>
							</div>
			
							<div id="widget-tab3-content" class="tab-content">
								<ul class="list comment-list">
									<li>
										<div class="thumbnail">
											<img alt="" src="http://0.gravatar.com/avatar/a8e47f4f1b687bafa83a75fa8a644bd0?s=70&amp;d=http%3A%2F%2F0.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D70&amp;r=G" class="avatar avatar-70 photo" height="70" width="70">									</div>
											<div class="post-right">
												<div class="comment-author"><h5>Jack</h5></div>
												<div class="comment-text">
													<a class="first" href="http://demo.fairpixels.com/discover/2013/09/villain/#comment-10">Quisque risus eros, congue at libero at, aliquet ...</a>
												</div>
												<div class="entry-meta">
													<span class="date"><i class="icon-calendar"></i>September 25, 2013</span>
												</div>
											</div>
									</li>		   
												   
								</ul>
							</div>
						</div>

						<div id="widget-posts-tiles">
			
						</div><!-- /tiles -->
	   				</aside>
	   				
	   				{% if nextEvent_exists %}
	   				<aside class="widget widget_flickr">
	   					<div class="widget-title"><h4>Prochain événement</h4></div>
	   					
	   					
	   						<div class="next_event">  
		   						<h4><a href="{{ base_url }}event/{{ nextEvent_id }}/{{ nextEvent_stringURL }}.html">{{ nextEvent_title }}</a></h4>
		   						<span class="difference"><a href="{{ base_url }}event/{{ nextEvent_id }}/{{ nextEvent_stringURL }}.html">{{ nextEvent_remainingDays }}</a></span>
		   						jours restant(s)
	   						</div>		
	   					
	   					
	   				</aside>
	   				{% endif %}
	   				
	   				<aside id="fairpixels_flickr_widget-2" class="widget widget_flickr">
	   					<div class="widget-title"><h4>Galerie</h4></div>		
	   					
						<div class="flickr_stream">  
							
							               
                			<ul id="flickr_thumbs" class="list flickr_thumbs">
                				<li>
                					<div class="widget-overlay">
                						<a rel="lightbox[flickr-gallery]" href="http://farm8.staticflickr.com/7373/12880818725_c24a0589f7.jpg" title="Ragazze di Gavoi"><img src="http://farm8.staticflickr.com/7373/12880818725_c24a0589f7_s.jpg" alt="Ragazze di Gavoi" width="75" height="75"></a>
                					</div>
                				</li>
                				<li>
                					<div class="widget-overlay">
                						<a rel="lightbox[flickr-gallery]" href="http://farm4.staticflickr.com/3759/12881191404_ab5c8338a1.jpg" title="El Diablo"><img src="http://farm4.staticflickr.com/3759/12881191404_ab5c8338a1_s.jpg" alt="El Diablo" width="75" height="75"></a>
                					</div>
                				</li>
                				<li>
                					<div class="widget-overlay">
                						<a rel="lightbox[flickr-gallery]" href="http://farm4.staticflickr.com/3698/12880825873_1946a79ff6.jpg" title="Tumbarinos"><img src="http://farm4.staticflickr.com/3698/12880825873_1946a79ff6_s.jpg" alt="Tumbarinos" width="75" height="75"></a>
                					</div>
                				</li>
                				<li>
                					<div class="widget-overlay">
                						<a rel="lightbox[flickr-gallery]" href="http://farm8.staticflickr.com/7293/12880812933_38cf513267.jpg" title="Sardinia is my Nation"><img src="http://farm8.staticflickr.com/7293/12880812933_38cf513267_s.jpg" alt="Sardinia is my Nation" width="75" height="75"></a>
                					</div>
                				</li>
                				<li>
                					<div class="widget-overlay">
                						<a rel="lightbox[flickr-gallery]" href="http://farm3.staticflickr.com/2827/12880703455_844ac15168.jpg" title="Tumbarino"><img src="http://farm3.staticflickr.com/2827/12880703455_844ac15168_s.jpg" alt="Tumbarino" width="75" height="75"></a>
                					</div>
                				</li>
                				<li>
                					<div class="widget-overlay">
                						<a rel="lightbox[flickr-gallery]" href="http://farm3.staticflickr.com/2856/12880850443_8a3a29876c.jpg" title="Generations"><img src="http://farm3.staticflickr.com/2856/12880850443_8a3a29876c_s.jpg" alt="Generations" width="75" height="75"></a>
                					</div>
                				</li>
                			</ul>
            			</div>
			
					</aside>
	   				
				</div>	
				<!-- /sidebar -->
			</div>
		</div>
		<!-- /container -->
		
        <footer id="footer">
        	<div class="footer-widgets main-color-bg"></div>
        	<!-- /footer-widgets -->
        	<div class="footer-info">
        		<div class="content-wrap">
        			<div class="footer-left">©2014 Vyper Music Japan</div>
        			<div class="footer-right">
        				<ul class="list">
        					<li class="twitter">
        						<a href="{{ vyper_twitter }}"><i class="icon-twitter"></i></a>
        					</li>
        					<li class="fb">
        						<a href="{{ vyper_facebook }}"><i class="icon-facebook"></i></a>
        					</li>
        					<li class="youtube">
        						<a href="{{ vyper_youtube }}"><i class="icon-youtube"></i></a>
        					</li>
        				</ul>
        			</div>
        		</div>
        		<!-- /inner-wrap -->
        	</div>
        	<!--/footer-info -->
        </footer>
		<!-- /footer -->
		<script type="text/javascript" src="http://demo.fairpixels.com/discover/wp-content/themes/fp_discover/js/hoverIntent.js?ver=3.6.1"></script>
		<script type="text/javascript" src="http://demo.fairpixels.com/discover/wp-includes/js/hoverIntent.min.js?ver=r7"></script>
		<script type="text/javascript" src="http://demo.fairpixels.com/discover/wp-content/themes/fp_discover/js/superfish.js?ver=3.6.1"></script>
		<script type="text/javascript" src="http://demo.fairpixels.com/discover/wp-content/themes/fp_discover/js/flexslider-min.js?ver=3.6.1"></script>
		<script type="text/javascript" src="http://demo.fairpixels.com/discover/wp-content/themes/fp_discover/js/lightbox.js?ver=3.6.1"></script>
		
		
		
		
        <script>
            var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
            (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
            g.src='//www.google-analytics.com/ga.js';
            s.parentNode.insertBefore(g,s)}(document,'script'));
        </script>
    </body>
</html>

