<header class="archive-header">
    <h2 class="archive-title">{{ theme.getTitle }}</h2>
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
						<a href="{{ base_url }}articles/{{ article.getId }}/{{ article.getStringUrl(article.getId) }}.html#respond" title="Comment on Ellie looks younger than before">no comments</a>
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


							<span class="category">
								<i class="icon-folder-close"></i>
								<a href="{{ base_url }}theme/{{ article.getRelatedTheme.getId }}/1/{{ article.getRelatedTheme.getTitleUrlFormat(article.getRelatedTheme.getId) }}">{{ article.getRelatedTheme.getTitle }}</a>					</span>


</div>
</header>

<div class="entry-excerpt">
    <p>{{ article.getDescription }}</p>
</div>
</article>
</div>
{% if loop.index==4 %}
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
{% endif %}
{% endfor %}
</div>

{{ pagination }}
