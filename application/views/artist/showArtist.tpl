<div class="post-wrap">
	<article id="post-28" class="post-28 post type-post status-publish format-standard hentry category-entertainment category-games tag-characters tag-villain">
		<header class="entry-header">
			<h1>{{ artist.getName }}</h1>
		
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

					
					<span class="comments">
							<i class="icon-comments"></i>
							<a href="http://demo.fairpixels.com/discover/2013/09/villain/#comments" title="Comment on A new female villain">1 comment</a>						
					</span>		

					
					<span class="category">
						<i class="icon-folder-close-alt"></i>									
						<a href="http://demo.fairpixels.com/discover/category/entertainment/" title="View all posts in Entertainment" rel="category tag">Entertainment</a>, <a href="http://demo.fairpixels.com/discover/category/games/" title="View all posts in Games" rel="category tag">Games</a>					</span>
											
					<span class="tags"><i class="icon-tags"></i><a href="http://demo.fairpixels.com/discover/tag/characters/" rel="tag">characters</a> , <a href="http://demo.fairpixels.com/discover/tag/villain/" rel="tag">villain</a></span>				</div>
				

							</div>
		</header>
	
	
		<div class="entry-content-wrap">

                <div class="one-half">
                    <img  src="{{ base_url }}uploads/pic/{{ artist.getRelatedPicture }}" class="wp-post-image" alt="">
                </div>
                <div class="one-half last">
                    {{ artist.getProfile }}
                </div>


		</div>
		<!-- /entry-content-wrap -->

	</article>



</div>
<!-- /post-wrap -->

<div class="entry-content">
    {{ artist.getBiography }}
</div>
<!-- /entry-content -->

{% if events %}
    <div class="cat-header">
        <div class="cat-title second-color-bg">
            <div class="cat-icon">
                <i class="icon-rocket"></i>
            </div>
            <h4>événements</h4>
        </div>
    </div>

    <ul class="list">

        {% for key, event in events %}
            <li class="one-third{% if key==2 %} last{% endif %}">
                <div class="thumbnail">
                        <a href="{{ base_url }}event/{{ event.getId }}/{{ event.getStringURL }}.html">
                            <img src="{{ base_url }}uploads/pic/{{ event.getRawPicture(event.getId) }}" class="attachment-fp239_130 wp-post-image" alt="">									</a>
                    </div>

                <h5>
                    <a href="{{ base_url }}event/{{ event.getId }}/{{ event.getStringURL }}.html">
                        {{ event.getTitle }}
                    </a>
                </h5>

                <div class="entry-meta">
                    <span class="date">
                        <i class="icon-calendar"></i>
                        {{ event.getDate }}
                    </span>
                </div>
            </li>
        {% endfor %}


								</ul>

{% endif %}

{% if articles %}
    ARTTICLE
{% endif %}


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


