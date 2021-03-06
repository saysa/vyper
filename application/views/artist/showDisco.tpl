
	<article>
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
			
				

							</div>
		</header>
	
	
		

	</article>






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

   
	<div class="listing-block">
		<div class="releases-listing">
            {% set iterate = 0 %}
			{% for key, disco in discos %}
				<div class="one-fourth column{% if iterate==3 %} last{% set iterate = -1 %}{% endif %}">
					<div class="release-thumbnail">
						<div class="release-cover">
							<a href="{{ base_url }}disco/{{ disco.getId }}/{{ disco.getStringUrl(disco.getId) }}.html"><img src="{{ base_url }}uploads/pic/{{ disco.getRawFile(disco.getId) }}" class="fullwidth" alt=""></a>
						</div>
					
						<h4 class="release-title"><a href="#">{{ disco.getTitle }}</a></h4>
						<h6 class="release-artist">{{ artist.getName }}</h6>
						<div class="release-meta">
							{% if disco.getCdJapan or disco.getItunes or disco.getAmazon %}
							<div class="button-container tip-container">
								<a href="javascript: void(0);" class="button small buy" target="_blank"><span>Acheter</span></a>
								<div class="tip-cloud">
									<div class="tip-corner"></div>
									<div class="tip-content">
										<ul>
											{% if disco.getCdJapan %}
                                            <li><a href="http://www.cdjapan.co.jp/aff/click.cgi/e86NDzbdSLQ/4902/A640425/detailview.html?KEY={{ disco.getCdJapan }}" target="_blank">CDJapan</a></li>
                                            {% endif %}
                                            {% if disco.getItunes %}
                                            <li><a href="{{ disco.getItunes }}">iTunes</a></li>
                                            {% endif %}
                                            {% if disco.getAmazon %}
                                            <li><a href="{{ disco.getAmazon }}" target="_blank">Amazon</a></li>
                                            {% endif %}
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
  
{% endif %}
<div class="clear"></div>




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