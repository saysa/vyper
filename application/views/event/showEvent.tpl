<div class="post-wrap">
	<article id="post-28" class="post-28 post type-post status-publish format-standard hentry category-entertainment category-games tag-characters tag-villain">
		<header class="entry-header">
			<h1>{{ event.getTitle }}</h1>
		
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
					<span class="date"><i class="icon-calendar"></i> {{ event.getDate }}</span>
					
					<span class="comments">
							<i class="icon-comments"></i>
                            <a href="{{ base_url }}event/{{ event.getId }}/{{ event.getStringURL }}.html#comments"><fb:comments-count href="{{ base_url }}event/{{ event.getId }}/{{ event.getStringURL }}.html"></fb:comments-count> réactions</a>
					</span>		

					<span class="category">
						<i class="icon-folder-close-alt"></i>									
						<a href="http://demo.fairpixels.com/discover/category/entertainment/" title="View all posts in Entertainment" rel="category tag">Entertainment</a>, <a href="http://demo.fairpixels.com/discover/category/games/" title="View all posts in Games" rel="category tag">Games</a>					</span>

				</div>
				

							</div>
		</header>
	
	
		<div class="entry-content-wrap">	
			{% if event_reladtedPicture %}	
			<div class="entry-image">
                <img  src="{{ base_url }}uploads/pic/{{ event.getRelatedPicture }}" class="attachment-fp780_400 wp-post-image" alt="{{ event.getTitle }}">
            </div>
			{% endif %}
						
			<div class="entry-content">
				<p>
				{{ event.getDescription }}
                </p>
                <div class="cat-header">
                    <div class="cat-title second-color-bg">
                        <div class="cat-icon">
                            <i class="icon-rocket"></i>
                        </div>
                        <h4>Plan</h4>
                    </div>
                </div>

                <div class="map">
                    <iframe width="100%" scrolling="no" height="270" frameborder="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q={{ googlemap }}&amp;z=14&amp;iwloc=near&amp;output=embed" marginwidth="0" marginheight="0"></iframe>
                </div>

			</div>
			<!-- /entry-content -->
		
		</div>
		<!-- /entry-content-wrap -->
		
	</article>
</div>
<!-- /post-wrap -->
<div id="comments">

    <div class="cat-header">
        <div class="cat-title second-color-bg">
            <div class="cat-icon">
                <i class="icon-rocket"></i>
            </div>
            <h4>Donnez votre avis</h4>
        </div>
    </div>


</div>
<!-- /comments -->




<div class="fb-comments" data-href="{{ base_url }}{{ server_request_uri }}" data-numposts="15" data-colorscheme="light" data-width="780"></div>
