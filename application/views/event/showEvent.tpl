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
					<span class="date"><i class="icon-calendar"></i> {{ event.getDateEvent(event.getId) }}</span>
					
					<span class="comments">
							<i class="icon-comments"></i>
                            <a href="{{ base_url }}event/{{ event.getId }}/{{ event.getStringUrl(event.getId) }}.html#comments"><fb:comments-count href="{{ base_url }}event/{{ event.getId }}/{{ event.getStringUrl(event.getId) }}.html"></fb:comments-count> réactions</a>
					</span>		

					<span class="category">
						<i class="icon-folder-close-alt"></i>
                        {{ event.getTown(event.getId) }}, {{ event.getCountry(event.getId)|upper }}
				    </span>

				</div>
				

							</div>
		</header>
	
	
		<div class="entry-content-wrap">	
			{% if event_reladtedPicture %}	
			<div class="entry-image">
                <img  src="{{ base_url }}uploads/pic/{{ event.getRelatedPicture }}" alt="{{ event.getTitle }}">
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

                   <div class="add_468">
                   <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                   <!-- un_artist -->
                   <ins class="adsbygoogle"
                   style="display:inline-block;width:468px;height:60px"
                   data-ad-client="ca-pub-3070362287154347"
                   data-ad-slot="6183315514"></ins>
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
                               <h4>Donnez votre avis</h4>
                           </div>
                       </div>


                   </div>
                   <!-- /comments -->




                   <div class="fb-comments" data-href="{{ base_url }}{{ server_request_uri }}" data-numposts="15" data-colorscheme="light" data-width="780"></div>
