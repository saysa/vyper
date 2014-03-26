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
                    <li><img class="attachment-fp780_400" src="{{ base_url }}uploads/pic/{{ picture.getFilename }}"></li>
                {% endfor %}
            </ul>
        </div>
        <div class="entry-slider-nav main-color-bg flexslider">

            <ul class="slides">
                {% for picture in pictures %}
                    <li><img src="{{ base_url }}uploads/pic/{{ picture.getFilename }}"></li>
                {% endfor %}
            </ul>
        </div>
    </div>



    <div class="entry-content">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi adipiscing augue quis augue egestas, sed gravida diam viverra. Ut vehicula quis nisi consequat rutrum. Morbi pulvinar arcu vel pellentesque dictum. Donec et placerat nunc. Integer gravida accumsan purus vestibulum tempus. Vivamus et commodo lectus. Suspendisse potenti. Suspendisse lacinia tristique augue vel lobortis. Morbi congue sem eget lacus mollis, a auctor tortor dignissim. In vel gravida elit. Aenean eget scelerisque justo, quis posuere dui. Ut tincidunt, mauris vel porta aliquam, metus tellus mollis metus, a congue lorem mauris in libero. Sed venenatis, lectus ac porttitor gravida, dolor massa dictum metus, sed auctor nulla tellus ut turpis.</p>
        <p>Nulla ut cursus erat, ut sagittis urna. Mauris condimentum mattis nisi, vitae euismod justo. Aliquam sollicitudin ornare velit dignissim aliquam. Pellentesque convallis gravida tempus. Vestibulum semper quam in nisl adipiscing malesuada. Sed imperdiet urna ut lorem dictum blandit. Suspendisse eget augue mollis, pretium orci ut, viverra est. Curabitur faucibus quam in sapien placerat, eu semper lorem dictum. Mauris tincidunt vel leo eget placerat. Vivamus eget quam vestibulum, facilisis urna at, sagittis libero. Sed tristique urna sed ligula sodales sodales. Sed dolor ligula, egestas vel libero ac, scelerisque luctus augue. Quisque risus eros, congue at libero at, aliquet laoreet nibh.</p>
        <p>Vivamus fringilla dapibus arcu, a aliquet justo pharetra vitae. Morbi accumsan bibendum tempus. Donec id rutrum orci. Vestibulum eu massa blandit, luctus arcu volutpat, eleifend risus. Suspendisse at ultrices purus, id malesuada odio. Etiam id ligula metus. Suspendisse hendrerit et mi interdum convallis. Morbi iaculis risus ante, ullamcorper consectetur quam pretium nec. Ut feugiat risus vitae elit ornare accumsan. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce rhoncus pulvinar neque, et feugiat metus commodo vitae. Suspendisse velit augue, porta in interdum at, malesuada ultricies felis. Etiam varius lectus urna, ut lacinia quam lacinia ac. Duis pretium tincidunt urna, sed ultricies diam elementum nec. Sed nec lacus eu leo adipiscing porta non ut arcu. Nam at imperdiet augue, a feugiat mi.</p>
    </div><!-- /entry-content -->

</div>