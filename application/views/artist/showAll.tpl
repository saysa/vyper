<header class="archive-header">
	<h2 class="archive-title">Artistes</h2>
</header><!-- /archive-header -->

<div class="archive-postlist">

    {% for artist in artists %}
    <div class="one-fourth{% if loop.index%4==0 %} last{% endif %}">
        <article class="post type-post status-publish format-standard hentry">
            <div class="thumb-wrap">
                <div class="thumb artist-thumbnail">
                    <a href="{{ base_url }}artist/{{ artist.getId }}/{{ artist.getStringUrl(artist.getId) }}.html"><img  src="{{ base_url }}uploads/pic/{{ artist.getRelatedPicture }}" class="wp-post-image artists-img" alt=""></a>
                    <div class="ribbon-caption">
                        <a href="{{ base_url }}artist/{{ artist.getId }}/{{ artist.getStringUrl(artist.getId) }}.html" class="ribbon-caption-title">
                            <span>{{ artist.getName }}</span>
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
