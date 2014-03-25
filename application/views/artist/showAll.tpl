<header class="archive-header">
	<h2 class="archive-title">Artistes</h2>
</header><!-- /archive-header -->

<div class="archive-postlist">

    {% for artist in artists %}
    <div class="one-fourth{% if loop.index%4==0 %} last{% endif %}">
        <article class="post type-post status-publish format-standard hentry">
            <div class="thumb-wrap">
                <div class="thumb artist-thumbnail">
                    <a href="{{ base_url }}artist/{{ artist.getId }}/{{ artist.getStringURL }}.html"><img  src="{{ base_url }}uploads/pic/{{ artist.getRelatedPicture }}" class="wp-post-image artists-img" alt=""></a>
                    <div class="ribbon-caption">
                        <a href="{{ base_url }}artist/{{ artist.getId }}/{{ artist.getStringURL }}.html" class="ribbon-caption-title">
                            <span>{{ artist.getName }}</span>
                            <span class="ribbon-caption-background"></span>
                        </a>
                    </div>
                </div>
            </div>
        </article>
    </div>
    {% endfor %}




{% for article in articles %}
	<div class="one-half{% if loop.index%2==0 %} last{% endif %}">
		<article class="post type-post status-publish format-standard hentry category-graphics tag-cars tag-characters tag-girl tag-man">	
			<div class="thumb-wrap">
				<div class="thumb">
					<a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html"><img src="{{ base_url }}uploads/pic/{{ article.getRelatedPicture }}" class="attachment-fp374_200 wp-post-image" alt=""></a>
				</div>
				
								<span class="comments main-color-bg">
						<i class="icon-comments"></i>
						<a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html#respond" title="Comment on Ellie looks younger than before">no comments</a>				</span>		
							
				
				<div class="overlay">									
					<a class="post-link" href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html"><i class="icon-link"></i></a>	
				</div>
			</div>
			
			<header class="entry-header">							
				<h3><a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringURL }}.html">{{ article.getTitle }}</a></h3>
				<div class="entry-meta">
					<span class="date"><i class="icon-calendar"></i> {{ article.getReleaseDate }}</span>
					
										
							<span class="category">
								<i class="icon-folder-close"></i>
								<a href="http://demo.fairpixels.com/discover/category/graphics/">Graphics</a>					</span>					
											
					
				</div>		
			</header>
	
			<div class="entry-excerpt">
				<p>{{ article.getDescription }}</p>
			</div>
		</article>
	</div>
{% endfor %}
</div>

{{ pagination }}
