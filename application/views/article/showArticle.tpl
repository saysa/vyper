<div class="post-wrap">
	<article id="post-28" class="post-28 post type-post status-publish format-standard hentry category-entertainment category-games tag-characters tag-villain">
		<header class="entry-header">
			<h1>{{ article.getTitle }}</h1>
		
			<div class="entry-meta">
                <!-- AddThis Button BEGIN -->
                <div class="addthis_toolbox addthis_default_style ">
                    <a class="addthis_button_preferred_1"></a>
                    <a class="addthis_button_preferred_2"></a>
                    <a class="addthis_button_preferred_3"></a>
                    <a class="addthis_button_preferred_4"></a>
                    <a class="addthis_button_compact"></a>
                    <a class="addthis_counter addthis_bubble_style"></a>
                </div>
                <script type="text/javascript">var addthis_config = {"data_track_addressbar":true};</script>
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-533aac5d5a5f5a91"></script>
<!-- AddThis Button END -->
				<div class="left">
					<span class="date"><i class="icon-calendar"></i> {{ article.getReleaseDateFrontFormat(article.getId) }}</span>
					
					<span class="comments">
							<i class="icon-comments"></i>
							<a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html#comments"><fb:comments-count href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html"></fb:comments-count> réactions</a>
					</span>

                    {% if article.getRelatedTheme.getTitle %}

                        <span class="category">
                            <i class="icon-folder-close-alt"></i>
                            <a href="{{ base_url }}theme/{{ article.getRelatedTheme.getId }}/1/{{ article.getRelatedTheme.getTitleUrlFormat(article.getRelatedTheme.getId) }}">{{ article.getRelatedTheme.getTitle }}</a>
                        </span>
                    {% endif %}

                   				</div>


                                </div>
            </header>


            <div class="entry-content-wrap">
                <div class="entry-image">
                    {% if img_type_news %}
                        <img src="{{ base_url }}uploads/pic/{{ article.getRelatedPicture }}" class="wp-post-image" alt="{{ article.getTitle|escape }}">
                {% else %}
                    {% if article_horizontal_image %}
                        <img  src="{{ base_url }}uploads/pic/{{ article.getRelatedPicture }}" class="attachment-fp780_400 wp-post-image" alt="{{ article.getTitle|escape }}">
                    {% else %}
                        <img src="{{ base_url }}uploads/pic/{{ article.getRelatedPicture }}" class="wp-post-image" alt="{{ article.getTitle|escape }}">
                    {% endif %}
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





<div class="add_468">
                            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                <!-- un_article -->
                <ins class="adsbygoogle"
                     style="display:inline-block;width:468px;height:60px"
                     data-ad-client="ca-pub-3070362287154347"
                     data-ad-slot="4706582311"></ins>
                <script>
                    (adsbygoogle = window.adsbygoogle || []).push({});
</script>
</div>







<div id="comments">
    <div class="cat-header">
        <div class="cat-title second-color-bg">
            <div class="cat-icon">
                <i class="icon-rocket"></i>
            </div>
            <h4>Réagir</h4>
        </div>
    </div>
</div>
<!-- /comments -->



<div class="fb-comments" data-href="{{ base_url }}{{ server_request_uri }}" data-numposts="15" data-colorscheme="light" data-width="780"></div>

