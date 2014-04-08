<header class="archive-header">
	<h2 class="archive-title">{{ category }}</h2>			
</header><!-- /archive-header -->

<div class="archive-postlist">
{% for article in articles %}
	<div class="one-half{% if loop.index%2==0 %} last{% endif %}">
		<article class="post type-post status-publish format-standard hentry category-graphics tag-cars tag-characters tag-girl tag-man">	
			
			{% if article.getYoutube %}
				<div class="thumb-wrap video-thumb">
	            	<iframe width="560" height="315" src="//www.youtube.com/embed/{{ article.getYoutube }}?wmode=transparent" frameborder="0" allowfullscreen=""></iframe>
	            </div>
			{% else %}
				<div class="thumb-wrap">
					<div class="thumb">
						<a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html"><img src="{{ base_url }}uploads/pic/{{ article.getRelatedPicture }}" class="attachment-fp374_200 wp-post-image" alt=""></a>
					</div>
				
					<span class="comments main-color-bg">
						<i class="icon-comments"></i>
						<a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html#comments" title=""><fb:comments-count href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html"></fb:comments-count> réactions</a>
					</span>		
				
					<div class="overlay">									
						<a class="post-link" href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html"><i class="icon-link"></i></a>
					</div>
				</div>
			{% endif %}


			<header class="entry-header">							
				<h3><a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html">{{ article.getTitle }}</a></h3>
				<div class="entry-meta">
					<span class="date"><i class="icon-calendar"></i> {{ article.getReleaseDate }}</span>

                    {% if article.getRelatedTheme.getTitle %}

							<span class="category">
								<i class="icon-folder-close"></i>
								<a href="{{ base_url }}theme/{{ article.getRelatedTheme.getId }}/1/{{ article.getRelatedTheme.getTitleUrlFormat(article.getRelatedTheme.getId) }}">{{ article.getRelatedTheme.getTitle }}</a>
                            </span>
                    {% endif %}
					
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
