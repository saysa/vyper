<header class="archive-header">
	<h2 class="archive-title">{{ category }}</h2>			
</header><!-- /archive-header -->

<div class="archive-postlist">
{% for article in articles %}
	<div class="one-half{% if loop.index%2==0 %} last{% endif %}">
		<article class="post type-post status-publish format-standard hentry category-graphics tag-cars tag-characters tag-girl tag-man">	
			<div class="thumb-wrap">
				<div class="thumb">
					<a href="http://demo.fairpixels.com/discover/2013/09/ellie/"><img src="{{ base_url }}uploads/pic/{{ article.getRelatedPicture }}" class="attachment-fp374_200 wp-post-image" alt=""></a>
				</div>
				
								<span class="comments main-color-bg">
						<i class="icon-comments"></i>
						<a href="http://demo.fairpixels.com/discover/2013/09/ellie/#respond" title="Comment on Ellie looks younger than before">no comments</a>				</span>		
							
				
				<div class="overlay">									
					<a class="post-link" href="http://demo.fairpixels.com/discover/2013/09/ellie/"><i class="icon-link"></i></a>	
				</div>
			</div>
			
			<header class="entry-header">							
				<h3><a href="http://demo.fairpixels.com/discover/2013/09/ellie/">{{ article.getTitle }}</a></h3>
				<div class="entry-meta">
					<span class="date"><i class="icon-calendar"></i> {{ article.getReleaseDate }}</span>
					
										
							<span class="category">
								<i class="icon-folder-close"></i>
								<a href="http://demo.fairpixels.com/discover/category/graphics/">Graphics</a>					</span>					
											
					
				</div>		
			</header>
	
			<div class="entry-excerpt">
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi adipiscing augue quis augue egestas, sed gravida diam viverra. Ut vehicula quis nisi consequat rutrum. Morbi pulvinar arcu vel pellentesque dictum. Donec et placerat nunc. Integer…</p>
			</div>
		</article>
	</div>
{% endfor %}
</div>
