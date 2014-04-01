<div class="post-wrap">
	<article id="post-28" class="post-28 post type-post status-publish format-standard hentry category-entertainment category-games tag-characters tag-villain">
		<header class="entry-header">
			<h1>{{ article.getTitle }}</h1>
		
			<div class="entry-meta">
				
				<div class="left">
					<span class="date"><i class="icon-calendar"></i> {{ article.getReleaseDate }}</span>
					
					<span class="comments">
							<i class="icon-comments"></i>
							<a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html#comments"><fb:comments-count href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html"></fb:comments-count> réactions</a>
					</span>		
						

					<span class="category">
						<i class="icon-folder-close-alt"></i>
                        <a href="{{ base_url }}theme/{{ article.getRelatedTheme.getId }}/1/{{ article.getRelatedTheme.getTitleUrlFormat(article.getRelatedTheme.getId) }}">{{ article.getRelatedTheme.getTitle }}</a>
                    </span>
											
					<span class="tags"><i class="icon-tags"></i><a href="http://demo.fairpixels.com/discover/tag/characters/" rel="tag">characters</a> , <a href="http://demo.fairpixels.com/discover/tag/villain/" rel="tag">villain</a></span>				</div>
				
									<div class="social">
						<span class="fb">
							<a href="http://facebook.com/share.php?u={{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html&amp;t={{ article.getTitle }}" target="_blank"><i class=" icon-facebook-sign"></i></a>
						</span>				
						
						<span class="twitter">
							<a href="http://twitter.com/home?status={{ article.getTitle }} {{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html" target="_blank"><i class="icon-twitter"></i></a>
						</span>
						
						<span class="gplus">
							<a href="https://plus.google.com/share?url={{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html&amp;t={{ article.getTitle }}" target="_blank"><i class="icon-google-plus-sign"></i></a>
						</span>
						
						<span class="pinterest">
						    <a href="http://pinterest.com/pin/create/button/?url={{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html&amp;media={{ base_url }}uploads/pic/{{ article.getRelatedPicture }}&amp;description={{ article.getTitle }}" target="_blank">
							<i class="icon-pinterest"></i>					
							</a>					
						</span>				
					</div>
							</div>
		</header>
	
	
		<div class="entry-content-wrap">		
			<div class="entry-image">
				{% if article_horizontal_image %}
					<img  src="{{ base_url }}uploads/pic/{{ article.getRelatedPicture }}" class="attachment-fp780_400 wp-post-image" alt="">
				{% else %}
					<img src="{{ base_url }}uploads/pic/{{ article.getRelatedPicture }}" class="wp-post-image" alt="">
				{% endif %}					
			</div>					
						
			<div class="entry-content">			
				{{ article.getText }}
			</div>
			<!-- /entry-content -->
		
		</div>
		<!-- /entry-content-wrap -->
		
	</article>
</div>
<!-- /post-wrap -->
<div id="comments">
</div>
<!-- /comments -->

<div class="add_468">
<script type="text/javascript"><!--
     						google_ad_client = "pub-2203599332195876";
     						/* 468x60, date de création 24/09/08 */
     						google_ad_slot = "8274791547";
    						google_ad_width = 468;
     						google_ad_height = 60;
     						//-->
     						</script>
  						<script type="text/javascript"
 						src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
 						</script>
</div>

<div class="fb-comments" data-href="{{ base_url }}{{ server_request_uri }}" data-numposts="15" data-colorscheme="light" data-width="780"></div>

