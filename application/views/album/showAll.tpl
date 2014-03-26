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

{{ pagination }}
