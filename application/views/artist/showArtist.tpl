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
							<a href="{{ base_url }}artist/{{ artist.getId }}/{{ artist.getStringUrl(artist.getId) }}.html#comments"><fb:comments-count href="{{ base_url }}artist/{{ artist.getId }}/{{ artist.getStringUrl(artist.getId) }}.html"></fb:comments-count> réactions</a>

					</span>		

									</div>
				

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

{% if artist.getBiography %}
<div class="cat-header">
        <div class="cat-title second-color-bg">
        <div class="cat-icon">
        <i class="icon-rocket"></i>
</div>
        <h4>Biographie</h4>
</div>
</div>

<div class="entry-content">
    {{ artist.getBiography }}
                </div>
{% endif %}

<!-- /entry-content -->

{% if discos %}
    <div class="cat-header">
        <div class="cat-title second-color-bg">
            <div class="cat-icon">
                <i class="icon-rocket"></i>
            </div>
            <h4>Discographie</h4>
        </div>
    </div>

    <div class="column">
	<div class="listing-block">
		<div class="releases-listing">
            {% set iterate = 0 %}
			{% for key, disco in discos %}
				<div class="one-fourth column{% if iterate==2 %} last{% set iterate = -1 %}{% endif %}">
					<div class="release-thumbnail">
						<div class="release-cover">
							<a href="#"><img src="{{ base_url }}uploads/pic/{{ disco.getRawFile(disco.getId) }}" class="fullwidth" alt=""></a>
						</div>
					
						<h4 class="release-title"><a href="#">{{ disco.getTitle }}</a></h4>
						<h6 class="release-artist">{{ artist.getName }}</h6>
						<div class="release-meta">
							{% if disco.getCdJapan %}
							<div class="button-container tip-container">
								<a href="http://www.cdjapan.co.jp/aff/click.cgi/e86NDzbdSLQ/4902/A640425/detailview.html?KEY={{ disco.getCdJapan }}" class="button small" target="_blank"><span>Acheter</span></a>
								<div class="tip-cloud">
									<div class="tip-corner"></div>
									<div class="tip-content">
										<ul>
											<li><a href="http://www.cdjapan.co.jp/aff/click.cgi/e86NDzbdSLQ/4902/A640425/detailview.html?KEY={{ disco.getCdJapan }}" target="_blank">CDJapan</a></li>
										</ul>
									</div>
								</div>
							</div>
							{% endif %}
							<div class="release-info">{{ disco.getDateRelease(disco.getId) }}</div>
							<div class="clear"></div>

						</div>
					</div>
				</div>
                    {% set iterate = iterate+1 %}
                {% endfor %}


                <div class="clear"></div>
            </div>

    </div><!--/ listing block-->
    </div>
{% endif %}
<div class="clear"></div>
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
                        <a href="{{ base_url }}event/{{ event.getId }}/{{ event.getStringUrl(event.getId) }}.html">
                            <img src="{{ base_url }}uploads/pic/{{ event.getRawPicture(event.getId) }}" class="attachment-fp239_130 wp-post-image" alt="">									</a>
                    </div>

                <h5>
                    <a href="{{ base_url }}event/{{ event.getId }}/{{ event.getStringUrl(event.getId) }}.html">
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
    <div class="cat-header">
        <div class="cat-title second-color-bg">
            <div class="cat-icon">
                <i class="icon-rocket"></i>
            </div>
            <h4>Articles</h4>
        </div>
    </div>

    <ul class="list">
    {% for key, article in articles %}
        <li class="one-third{% if key==2 %} last{% endif %}">
            <div class="thumbnail">
                <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html">
                    <img src="{{ base_url }}uploads/pic/{{ article.getRawPicture(article.getId) }}" class="attachment-fp239_130 wp-post-image" alt="">
                </a>
            </div>

            <h5>
                <a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html">
                    {{ article.getTitle }}
                </a>
            </h5>

            <div class="entry-meta">
                <span class="date">
                    <i class="icon-calendar"></i>
                    {{ article.getReleaseDate }}
                </span>
            </div>
        </li>
    {% endfor %}
    </ul>
{% endif %}

{% if albums %}
    <div class="cat-header">
        <div class="cat-title second-color-bg">
            <div class="cat-icon">
                <i class="icon-rocket"></i>
            </div>
            <h4>Galerie</h4>
        </div>
    </div>

    <ul class="list">
    {% for key, album in albums %}
        <li class="one-third{% if key==2 %} last{% endif %}">
            <div class="thumbnail">
                <a href="{{ base_url }}album/{{ album.getId }}/{{ album.getStringURL }}.html">
                    <img src="{{ base_url }}uploads/pic/{{ album.getCover }}" class="attachment-fp239_130 wp-post-image" alt="">
                </a>
            </div>

            <h5>
                <a href="{{ base_url }}album/{{ album.getId }}/{{ album.getStringURL }}.html">
                    {{ album.getTitle }}
                </a>
            </h5>

        </li>
    {% endfor %}
    </ul>
{% endif %}




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

                <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
                        <script>

                $(document).ready(function() {

                    $(".tip-container").on("click", ".buy", function() {
                        $(".tip-cloud").hide();
                        var tipcloud = $(this).next();
                        tipcloud.show();
                    });



                });


                </script>