<header class="archive-header">
	<h2 class="archive-title">{{ album.getTitle }}</h2>
</header><!-- /archive-header -->

<div class="entry-content-wrap">

    <script>
        jQuery(document).ready(function($) {

            $('.entry-slider').show();
            $('.entry-slider-nav').flexslider({
                animation: "slide",
                controlNav: false,
                animationLoop: true,
                slideshow: false,
                itemWidth: 190,
                itemMargin: 0,
                asNavFor: '.entry-slider-main'
            });

            $('.entry-slider-main').flexslider({
                animation: "slide",
                controlNav: false,
                animationLoop: true,
                slideshow: true,
                sync: ".entry-slider-nav"
            });
        });
    </script>

    <div class="entry-slider">
        <div class="entry-slider-main flexslider">

            <ul class="slides">
                {% for picture in pictures %}
                    <li class="galerie">
                        <a rel="lightbox[album]" href="{{ base_url }}uploads/pic/{{ picture.getFilename }}">
                            <img src="{{ base_url }}uploads/pic/{{ picture.getName }}">
                        </a>
                    </li>
                {% endfor %}
            </ul>
        </div>
        <div class="entry-slider-nav main-color-bg flexslider">

            <ul class="slides">
                {% for picture in pictures %}
                    <li><img src="{{ base_url }}uploads/pic/{{ picture.getName }}"></li>
                {% endfor %}
            </ul>
        </div>
    </div>



    <div class="entry-content">
        <p>{{ album.getDescription }}</p>
    </div><!-- /entry-content -->

</div>