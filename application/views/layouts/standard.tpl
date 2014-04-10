<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>{% if soe_title %}{{ soe_title }} | {% endif %}Visual kei - JPop - Jrock - Jmusic - VYPER Japanese Music{% if front_page_index %} | Toute la Jmusic, toutes les news en temps réels{% endif %}</title>
 
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        {% if google_description %}
		    <meta name="description" content="{{ google_description|escape }}" />
        {% else %}
            <meta name="description" content="L'actualité de la musique japonaise, visual kei, jrock, jpop au travers de news, live reports, vidéos, interviews, commentaires et plus encore." />
        {% endif %}

        {% if meta_keywords %}
            <meta name="keywords" content="{{ meta_keywords }}" />
        {% else %}
            <meta name="keywords" content="actu, jmusic, j-music, jpop, j-pop, jrock, j-rock, visual kei, visu, oshare kei, oshare, actu jmusic, actu jpop, musique japonaise, youtube, forum, vyper" />
        {% endif %}
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






            <script type='text/javascript' src='{{ path_js }}discover/jquery.js?ver=1.10.2'></script>
            <script type='text/javascript' src='{{ path_js }}discover/jquery-migrate.min.js?ver=1.2.1'></script>
        
        
        <script>window.jQuery || document.write('<script src="{{ path_js }}vendor/jquery-1.10.1.min.js"><\/script>')</script>

        <script src="{{ path_js }}plugins.js"></script>
        <script src="{{ path_js }}main.js"></script>


        <script src="{{ path_js }}plugins/cleditor/jquery.cleditor.min.js"></script>

        <script src="{{ path_js }}owl-carousel/owl.carousel.js"></script>
        <script src="{{ path_js }}liscroll.js"></script>


        
    </head>
    <body>
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-49860128-1', 'vyper-jmusic.com');
        ga('send', 'pageview');

    </script>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->

        	<div id="fb-root"></div>
			<script>(function(d, s, id) {
			  var js, fjs = d.getElementsByTagName(s)[0];
			  if (d.getElementById(id)) return;
			  js = d.createElement(s); js.id = id;
			  js.src = "//connect.facebook.net/fr_FR/all.js#xfbml=1&appId=1470537739827941";
			  fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'facebook-jssdk'));</script>



        
        <header id="header">
        	<div class="top main-color-bg">
			<div class="content-wrap">
								
					<div class="left">
						<ul class="list">
							<li>
								<i class="icon-home"></i>
								<a href="{{ base_url }}">Accueil</a>
							</li>
														
							<li>
								<i class="icon-star"></i>
								<a href="{{ base_url }}a_propos">A propos</a>
							</li>

							<li>
								<i class="icon-envelope"></i>
								<a href="{{ base_url }}contact">Contact</a>
							</li>							
														
						</ul>
					</div> 
					<div class="social">
						<ul class="list">
							<li class="twitter"><a href="{{ vyper_twitter }}"><i class="icon-twitter"></i></a></li>
							<li class="fb"><a href="{{ vyper_facebook }}"><i class="icon-facebook"></i></a></li>
							<li class="gplus"><a href="{{ vyper_google_plus }}"><i class="icon-google-plus"></i></a></li>

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
									<a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html">{{ article.getTitle }}</a>
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
							<a href="{{ base_url }}" title="Vyper Japanese Music">
								<img src="{{ base_url }}/assets/img/LogoVYPER.png" alt="Vyper Japanese Music" width="250" >
							</a>
					</h1>	
						
				</div>
				
				<div class="banner">
                <a href="https://www.facebook.com/vypermusicjapan" title="Suivez-nous sur Facebook"><img src="{{ path_img }}suivez-nous.jpg" alt="Suivez-nous sur Facebook"></a>
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
					<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home{% if front_page_index %} current_page_item{% endif %}"><a href="{{ base_url }}">Home</a></li>
					<li class="menu-item menu-item-type-post_type{% if current_article %} current_page_item{% endif %}"><a href="{{ base_url }}news">News</a></li>
					<li class="menu-item menu-item-type-post_type{% if current_interview %} current_page_item{% endif %}"><a href="{{ base_url }}interviews">Interviews</a></li>
					<li class="menu-item menu-item-type-post_type{% if current_live_report %} current_page_item{% endif %}"><a href="{{ base_url }}live-reports">Live Reports</a></li>
					<li class="menu-item menu-item-type-post_type{% if current_chronique %} current_page_item{% endif %}"><a href="{{ base_url }}chroniques">Chroniques</a></li>
					<li class="menu-item menu-item-type-post_type{% if current_album %} current_page_item{% endif %}"><a href="{{ base_url }}galerie">Galerie</a></li>
					<li class="menu-item menu-item-type-post_type{% if current_artist %} current_page_item{% endif %}"><a href="{{ base_url }}artists">Artistes</a></li>

                    {% if themes_showInMenu %}
                    <li class="menu-item menu-item-type-post_type"><a href="#">Themes<span class="sf-sub-indicator"> »</span></a>
                        <ul class="sub-menu">
                        {% for theme in themes_showInMenu %}
                            <li class="menu-item menu-item-type-post_type"><a href="{{ base_url }}theme/{{ theme.getId }}/1/{{ theme.getTitleUrlFormat(theme.getId) }}">{{ theme.getTitle }}</a></li>
                        {% endfor %}
                        </ul>
                    </li>
                    {% endif %}
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
							
							{% for article in mini_carousel %}
        						<div class="item">
									<div class="thumbnail overlay">
										<a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html">
											<img src="{{ base_url }}uploads/pic/{{ article.getRelatedPicture }}" class="attachment-fp374_200 wp-post-image" alt="5">
										</a>
									</div>
									
									
									<div class="post-details">
										<div class="post-wrap">
										<div class="post-title">
											<div class="post-icon"><i class="icon-file-text-alt"></i></div>
											<h4><a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html">
												{{ article.getTitle }} 										
												</a>
											</h4>
										</div>
										
										<div class="post-desc">
											<div class="excerpt">
												{{ article.getDescription }} 											
											</div>
											<div class="more">
												<a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html">En savoir plus</a>
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
								<a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html" >
									<img src="{{ base_url }}uploads/pic/{{ article.getRelatedPicture }}" class="attachment-fp780_400 wp-post-image" alt="{{ article.getTitle }}" />								
								</a>
									
								<div class="post-info">
									<div class="post-excerpt">
										<div class="title">
											<h2><a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html">{{ article.getTitle }}</a></h2>
											<div class="sep"></div>
										</div>								
										
										<div class="main-slider-description">
											{{ article.getDescription }} 										
										</div>
										
										<div class="read-more">
											<a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html">En savoir plus</a>
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
										<h4><a href="{{ base_url }}news">Dernières News</a></h4>	
									</div>
								</div>



				                {% for article in recent_articles %}
				                {% if loop.index == 1 %}


                				<div class="main-post">
                    				
                    				{% if article.getYoutube %}
                    					<div class="thumb-wrap video-thumb">
	                        				<iframe width="560" height="315" src="//www.youtube.com/embed/{{ article.getYoutube }}?wmode=transparent" frameborder="0" allowfullscreen=""></iframe>
	                        			</div>

                                    {% else %}
                                        <div class="thumb-wrap">
                                        <div class="thumb">
                                        <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html"><img src="{{ base_url }}uploads/pic/{{ article.getRawPicture(article.getId) }}" class="attachment-fp374_200 wp-post-image" alt=""></a>
                                        </div>

                                        <span class="comments main-color-bg">
                                            <i class="icon-comments"></i>
                                            <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html" title="Comment on Ellie looks younger than before">no comments</a>
                                        </span>

                                        <div class="overlay">
                                            <a class="post-link" href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html"><i class="icon-link"></i></a>
                                        </div>
                                        </div>
                    				{% endif %}



                    				<div class="post-details">
				                        <h3>
				                            <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html">{{ article.getTitle }}</a>
				                        </h3>

				                        <div class="entry-meta">
				                            <span class="date"><i class="icon-calendar"></i> {{ article.getReleaseDate }}</span>

                                            {% if article.getRelatedTheme.getTitle %}
				                            <span class="category">
				                                <i class="icon-folder-close"></i>
				                                <a href="{{ base_url }}theme/{{ article.getRelatedTheme.getId }}/1/{{ article.getRelatedTheme.getTitleUrlFormat(article.getRelatedTheme.getId) }}">{{ article.getRelatedTheme.getTitle }}</a>
				                            </span>
                                            {% endif %}

				                        </div>
                        				<p>{{ article.getDescription }}</p>
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
			                                <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html"><img src="{{ base_url }}uploads/pic/{{ article.getMini75Picture(article.getId) }}" class="attachment-fp75_75 wp-post-image" alt="3"></a>
			                            </div>

			                            <div class="post-right">
			                                <h5>
			                                    <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html" rel="bookmark">{{ article.getTitle }}</a>
			                                </h5>

			                                <div class="entry-meta">
			                                    <span class="date">
			                                        <i class="icon-calendar"></i>
			                                        {{ article.getReleaseDate }}
			                                    </span>

			                                    <span class="comments">
			                                        <i class="icon-comments"></i>
                                                    <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html#comments" title="{{ article.getTitle }}"><fb:comments-count href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html"></fb:comments-count> réactions</a>
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
	                                	<h4>événements</h4>
	    							</div>
	    						</div>

            					{% for event in latest_events %}
				                {% if loop.index == 1 %}


                				<div class="main-post">
                    				

                                        <div class="thumb-wrap">
                                        <div class="thumb">
                                        <a href="{{ base_url }}event/{{ event.getId }}/{{ event.getStringUrl(event.getId) }}.html"><img src="{{ base_url }}uploads/pic/{{ event.getRawPicture(event.getId) }}" class="attachment-fp374_200 wp-post-image" alt=""></a>
                                        </div>

                                        <span class="comments main-color-bg">
                                            <i class="icon-comments"></i>
                                            <a href="{{ base_url }}event/{{ event.getId }}/{{ event.getStringUrl(event.getId) }}.html" title="{{ event.getTitle|escape }}">no comments</a>
                                        </span>

                                        <div class="overlay">
                                            <a class="post-link" href="{{ base_url }}event/{{ event.getId }}/{{ event.getStringUrl(event.getId) }}.html"><i class="icon-link"></i></a>
                                        </div>
                                        </div>




                    				<div class="post-details">
				                        <h3>
				                            <a href="{{ base_url }}event/{{ event.getId }}/{{ event.getStringUrl(event.getId) }}.html">{{ event.getTitle|escape }}</a>
				                        </h3>

				                        <div class="entry-meta">
				                            <span class="date"><i class="icon-calendar"></i> {{ event.getDateEvent(event.getId) }}</span>




				                        </div>
                        				<p>{{ article.getDescription }}</p>
                    				</div>
                				</div>
                				<!-- /one-half -->

                				{% endif %}
                				{% endfor %}

                                <div class="post-list">

                					{% for key, event in latest_events %}
				                    {% if key>0 and key<4 %}

							        <div class="item-post">
			                            <div class="thumb">
			                                <a href="{{ base_url }}event/{{ event.getId }}/{{ event.getStringUrl(event.getId) }}.html"><img src="{{ base_url }}uploads/pic/{{ event.getMini75Picture(event.getId) }}" class="attachment-fp75_75 wp-post-image" alt="3"></a>
			                            </div>

			                            <div class="post-right">
			                                <h5>
			                                    <a href="{{ base_url }}event/{{ event.getId }}/{{ event.getStringUrl(event.getId) }}.html" rel="bookmark">{{ event.getTitle }}</a>
			                                </h5>

			                                <div class="entry-meta">
			                                    <span class="date">
			                                        <i class="icon-calendar"></i>
			                                        {{ event.getDateEvent(event.getId) }}
			                                    </span>

			                                    <span class="comments">
			                                        <i class="icon-comments"></i>
                                                    {{ event.getTown(event.getId) }}, {{ event.getCountry(event.getId)|upper }}
			                                    </span>
			                                </div>
			                            </div>
			                        </div>


			                        {% endif %}
			                        {% endfor %}

                        		</div><!-- /one-half -->



						    </div><!-- /section1-cat -->
						    <!-- /category2 -->





    </div>



    						<div class="add_468">

                            </div>

    						<div id="feat-categories">
	
								<!-- category1 -->	
								<div class="feat-cat section">
				
									<div class="cat-header">
										<div class="cat-title second-color-bg">
											<div class="cat-icon">					
												<i class="icon-bookmark"></i>					
											</div>					
											<h4><a href="{{ base_url }}interviews">Interviews</a></h4>
										</div>
									</div>
				
									<div class="one-half main-post">

										{% for article in latest_interviews %}
						                {% if loop.index == 1 %}


		                    				
		                    				{% if article.getYoutube %}
		                    					<div class="thumb-wrap video-thumb">
			                        				<iframe width="560" height="315" src="//www.youtube.com/embed/{{ article.getYoutube }}?wmode=transparent" frameborder="0" allowfullscreen=""></iframe>
			                        			</div>

		                                    {% else %}
		                                        <div class="thumb-wrap">
		                                        <div class="thumb">
		                                        <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html"><img src="{{ base_url }}uploads/pic/{{ article.getRawPicture(article.getId) }}" class="attachment-fp374_200 wp-post-image" alt=""></a>
		                                        </div>

		                                        <span class="comments main-color-bg">
		                                            <i class="icon-comments"></i>
		                                            <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html" title="Comment on Ellie looks younger than before">no comments</a>
		                                        </span>

		                                        <div class="overlay">
		                                            <a class="post-link" href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html"><i class="icon-link"></i></a>
		                                        </div>
		                                        </div>
		                    				{% endif %}



		                    				<div class="post-details">
						                        <h3>
						                            <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html">{{ article.getTitle }}</a>
						                        </h3>

						                        <div class="entry-meta">
						                            <span class="date"><i class="icon-calendar"></i> {{ article.getReleaseDate }}</span>
                                                    {% if article.getRelatedTheme.getTitle %}
						                            <span class="category">
						                                <i class="icon-folder-close"></i>
						                                <a href="{{ base_url }}theme/{{ article.getRelatedTheme.getId }}/1/{{ article.getRelatedTheme.getTitleUrlFormat(article.getRelatedTheme.getId) }}">{{ article.getRelatedTheme.getTitle }}</a>
						                            </span>
                                                    {% endif %}

						                        </div>
		                        				<p>{{ article.getDescription }}</p>
		                    				</div>
		                			

		                				{% endif %}
		                				{% endfor %}
	
									</div><!-- /one-half -->
							
									
									<div class="one-half last">
										
										{% for key, article in latest_interviews %}
					                    {% if key>0 and key<5 %}

								        <div class="item-post">
				                            <div class="thumb">
				                                <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html"><img src="{{ base_url }}uploads/pic/{{ article.getMini75Picture(article.getId) }}" class="attachment-fp75_75 wp-post-image" alt="3"></a>
				                            </div>

				                            <div class="post-right">
				                                <h5>
				                                    <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html" rel="bookmark">{{ article.getTitle }}</a>
				                                </h5>

				                                <div class="entry-meta">
				                                    <span class="date">
				                                        <i class="icon-calendar"></i>
				                                        {{ article.getReleaseDate }}
				                                    </span>

				                                    <span class="comments">
                                                        <i class="icon-comments"></i>
                                                        <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html#comments" title="{{ article.getTitle }}"><fb:comments-count href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html"></fb:comments-count> réactions</a>
                                                    </span>
				                                </div>
				                            </div>
				                        </div>


				                        {% endif %}
				                        {% endfor %}
								
										
								
									</div><!-- /one-half -->
										
				
								
								</div><!-- /feat-cat -->
								<!-- /category1 -->

        

								<!-- category2 -->	
								<div class="feat-cat section">
				
									<div class="cat-header">
										<div class="cat-title second-color-bg">
											<div class="cat-icon">					
												<i class="icon-leaf"></i>					
											</div>					
									
											<h4><a href="{{ base_url }}live-reports">Live Reports</a></h4>
										</div>
									</div>
											
				
							
									<div class="one-half main-post">
						
													
										{% for article in latest_live_reports %}
						                {% if loop.index == 1 %}


		                    				
		                    				{% if article.getYoutube %}
		                    					<div class="thumb-wrap video-thumb">
			                        				<iframe width="560" height="315" src="//www.youtube.com/embed/{{ article.getYoutube }}?wmode=transparent" frameborder="0" allowfullscreen=""></iframe>
			                        			</div>

		                                    {% else %}
		                                        <div class="thumb-wrap">
		                                        <div class="thumb">
		                                        <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html"><img src="{{ base_url }}uploads/pic/{{ article.getRawPicture(article.getId) }}" class="attachment-fp374_200 wp-post-image" alt=""></a>
		                                        </div>

		                                        <span class="comments main-color-bg">
		                                            <i class="icon-comments"></i>
		                                            <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html" title="Comment on Ellie looks younger than before">no comments</a>
		                                        </span>

		                                        <div class="overlay">
		                                            <a class="post-link" href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html"><i class="icon-link"></i></a>
		                                        </div>
		                                        </div>
		                    				{% endif %}



		                    				<div class="post-details">
						                        <h3>
						                            <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html">{{ article.getTitle }}</a>
						                        </h3>

						                        <div class="entry-meta">
						                            <span class="date"><i class="icon-calendar"></i> {{ article.getReleaseDate }}</span>
                                                    {% if article.getRelatedTheme.getTitle %}
						                            <span class="category">
						                                <i class="icon-folder-close"></i>
                                                        <a href="{{ base_url }}theme/{{ article.getRelatedTheme.getId }}/1/{{ article.getRelatedTheme.getTitleUrlFormat(article.getRelatedTheme.getId) }}">{{ article.getRelatedTheme.getTitle }}</a>

						                            </span>
                                                    {% endif %}

						                        </div>
		                        				<p>{{ article.getDescription }}</p>
		                    				</div>
		                			

		                				{% endif %}
		                				{% endfor %}
	
									</div><!-- /one-half -->
							
									
							
									<div class="one-half last">
										
										{% for key, article in latest_live_reports %}
					                    {% if key>0 and key<5 %}

								        <div class="item-post">
				                            <div class="thumb">
				                                <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html"><img src="{{ base_url }}uploads/pic/{{ article.getMini75Picture(article.getId) }}" class="attachment-fp75_75 wp-post-image" alt="3"></a>
				                            </div>

				                            <div class="post-right">
				                                <h5>
				                                    <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html" rel="bookmark">{{ article.getTitle }}</a>
				                                </h5>

				                                <div class="entry-meta">
				                                    <span class="date">
				                                        <i class="icon-calendar"></i>
				                                        {{ article.getReleaseDate }}
				                                    </span>

				                                    <span class="comments">
                                                        <i class="icon-comments"></i>
                                                        <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html#comments" title="{{ article.getTitle }}"><fb:comments-count href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html"></fb:comments-count> réactions</a>
                                                    </span>
				                                </div>
				                            </div>
				                        </div>


				                        {% endif %}
				                        {% endfor %}
												
								
									</div><!-- /one-half -->
										
				
								
								</div><!-- /feat-cat -->
								<!-- /category2 -->
	
	<!-- category3 -->	
		<!-- /category3 -->
	
	<!-- category4 -->	
		<!-- /category4 -->
	
	<!-- category5 -->	
		<!-- /category5 -->
	
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
								<li class="active"><h5><a href="#widget-tab1-content">Récents</a></h5></li>
								<li class=""><h5><a href="#widget-tab2-content">Populaires</a></h5></li>
								<li class=""><h5><a href="#widget-tab3-content">Evénements</a></h5></li>
							</ul>
						</div> 
						<div class="tabs-content-container">
			
							<div id="widget-tab1-content" class="tab-content" style="display: block;">
								<ul class="list post-list">
								
									{% for article in recent_articles %}
									<li>
										<div class="thumbnail">
											<img src="{{ base_url }}uploads/pic/{{ article.getMini75Picture(article.getId) }}" class="attachment-fp75_75 wp-post-image" alt="{{ article.getTitle|escape }}">
										</div>
										<div class="post-right">
											<h5><a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html">{{ article.getTitle }}</a></h5>
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

                            {% for article in popular_articles %}
                                <li>
                                    <div class="thumbnail">
                                        <img src="{{ base_url }}uploads/pic/{{ article.getMini75Picture(article.getId) }}" class="attachment-fp75_75 wp-post-image" alt="{{ article.getTitle|escape }}">
                                    </div>
                                    <div class="post-right">
                                        <h5><a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html">{{ article.getTitle }}</a></h5>
                                        <div class="entry-meta">
                                            <span class="date"><i class="icon-calendar"></i> {{ article.getReleaseDate }}</span>
                                        </div>
                                    </div>
                            </li>
                            {% endfor %}
								</ul>
							</div>
			
							<div id="widget-tab3-content" class="tab-content">
								<ul class="list comment-list">
                                    {% for event in popular_events %}
                                    <li>
                                        <div class="thumbnail">
                                            <img src="{{ base_url }}uploads/pic/{{ event.getMini75Picture(event.getId) }}" class="attachment-fp75_75 wp-post-image" alt="{{ event.getTitle|escape }}">
                                        </div>
                                        <div class="post-right">
                                            <h5><a href="{{ base_url }}event/{{ event.getId }}/{{ event.getStringUrl(event.getId) }}.html">{{ event.getTitle }}</a></h5>
                                            <div class="entry-meta">
                                                <span class="date"><i class="icon-calendar"></i> {{ event.getDateEvent(event.getId) }}</span>
                                            </div>
                                        </div>
                                    </li>
                                    {% endfor %}
												   
								</ul>
							</div>
						</div>

						<div id="widget-posts-tiles">
			
						</div><!-- /tiles -->
	   				</aside>
	   				
	   				{% if nextEvent_exists %}
	   				<aside class="widget widget_flickr">
	   					<div class="widget-title"><h4>Prochain événement</h4></div>


                            <div class="featured-event">
                            <div class="event-date">
                            <div class="event-date-holder">
                            <div class="event-date-number">{{ nextEvent_dateDay }}</div>
                            <div class="event-month">{{ nextEvent_dateMonth }}</div>
                            </div>
                            <div class="clear"></div>
                            </div>
                            <div class="event-details">
                            <h5 class="event-title"><a href="{{ base_url }}event/{{ nextEvent_id }}/{{ nextEvent_stringURL }}.html">{{ nextEvent_title }}</a></h5>
                            <div class="event-place">{{ nextEvent_town }}, {{ nextEvent_country|upper }}</div>
                            <div>{{ nextEvent_remainingDays }} jours restant(s)</div>

                            </div>
                            </div>


	   					
	   					
	   				</aside>
	   				{% endif %}
	   				
	   				<aside id="fairpixels_flickr_widget-2" class="widget widget_flickr">
	   					<div class="widget-title"><h4>Galerie</h4></div>		
	   					
						<div class="flickr_stream">  
							
							               
                			<ul id="flickr_thumbs" class="list flickr_thumbs">

                                {% for picture in recent_pictures %}
                                    <li>
                                        <div class="widget-overlay">
                                        <a rel="lightbox[flickr-gallery]" href="{{ base_url }}uploads/pic/{{ picture.getFilename }}" title=""><img src="{{ base_url }}uploads/pic/{{ picture.getName }}" alt="" width="75" height="75"></a>
                                        </div>
                                    </li>
                                {% endfor %}


                			</ul>
            			</div>
			
					</aside>

                        <aside class="widget widget_partners">
                            <div class="widget-title"><h4>Partenaires</h4></div>
                                <ul>
                                    <li><a href="http://www.japanfm.fr/radio/"><img src="{{ path_img }}partners/japan-fm.jpg" alt="japan fm" /></a></li>
                                    <li><a href="http://ramenevents.wordpress.com/"><img src="{{ path_img }}partners/ramen-events.jpg" alt="ramen events" /></a></li>

                                    <li><a href="https://hollyhockya.wordpress.com/"><img src="{{ path_img }}partners/hollyhock-ya.jpg" alt="hollyhock ya" /></a></li>
                                    <li><a href="http://www.giza-shoko.net/"><img src="{{ path_img }}partners/gizashoko.jpg" alt="gizashoko" /></a></li>
                                    <li><a href="https://www.facebook.com/GazettEFrance"><img src="{{ path_img }}partners/the-gazette-france.jpg" alt="the gazette france" /></a></li>
                                </ul>


                        </aside>
	   				
				</div>	
				<!-- /sidebar -->
			</div>
		</div>
		<!-- /container -->
		
        <footer id="footer">
        	<div class="footer-widgets main-color-bg">
                <div class="content-wrap">
                    <a href="{{ base_url }}recrutement">Recrutement</a> -
                    <a href="{{ base_url }}partenariat">Partenariat</a> -
                    <a href="{{ base_url }}conditions_utilisation">Conditions d'utilisation</a>
                </div>

            </div>
        	<!-- /footer-widgets -->
        	<div class="footer-info">
        		<div class="content-wrap">
        			<div class="footer-left">©2014 Vyper Japanese Music</div>
        			<div class="footer-right">
        				<ul class="list">
        					<li class="twitter">
        						<a href="{{ vyper_twitter }}"><i class="icon-twitter"></i></a>
        					</li>
        					<li class="fb">
        						<a href="{{ vyper_facebook }}"><i class="icon-facebook"></i></a>
        					</li>
                            <li class="gplus">
                                <a href="{{ vyper_google_plus }}" rel="publisher"><i class="icon-google-plus"></i></a>
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

        <script>


        </script>

        <script src="{{ path_js }}discover/superfish.js"></script>
        <script src="{{ path_js }}discover/flexslider-min.js"></script>
        <script src="{{ path_js }}discover/lightbox.js"></script>
        <script src="{{ path_js }}discover/script.js"></script>


		

    </body>
</html>

