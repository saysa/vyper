<header class="archive-header">
	<h2 class="archive-title">Galerie</h2>
</header><!-- /archive-header -->

<div class="archive-postlist">

    {% for album in albums %}
    <div class="one-fourth{% if loop.index%4==0 %} last{% endif %}">
        <article class="post type-post status-publish format-standard hentry">
            <div class="thumb-wrap">
                <div class="thumb artist-thumbnail">
                    <a href="{{ base_url }}album/{{ album.getId }}/{{ album.getStringURL }}.html"><img  src="{{ base_url }}uploads/pic/{{ album.getCover }}" class="wp-post-image artists-img" alt=""></a>
                    <div class="ribbon-caption">
                        <a href="{{ base_url }}album/{{ album.getId }}/{{ album.getStringURL }}.html" class="ribbon-caption-title">
                            <span>{{ album.getTitle }}</span>
                            <span class="ribbon-caption-background"></span>
                        </a>
                    </div>
                </div>
            </div>
        </article>
    </div>
    {% endfor %}

</div>

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

{{ pagination }}
