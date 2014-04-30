<header class="archive-header">
	<h2 class="archive-title">{{ disco.getTitle }}{% if disco.getTitleReal %} - {{ disco.getTitleReal }}{% endif %}</h2>
</header><!-- /archive-header -->

<div class="entry-content-wrap">

    <div class="show-disco">
        <div class="one-fourth column">
            <div class="release-thumbnail">
                <div class="release-cover">
                    <a href="{{ base_url }}disco/{{ disco.getId }}/{{ disco.getStringUrl(disco.getId) }}.html"><img src="{{ base_url }}uploads/pic/{{ disco.getRawFile(disco.getId) }}" class="fullwidth" alt=""></a>
                </div>
            
                <h4 class="release-title"><a href="#">{{ disco.getTitle }}</a></h4>
                <h6 class="release-artist">{{ disco.getOneArtist(disco.getId) }}</h6>
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
                    
                    <div class="clear"></div>

                </div>
            </div>
        </div>

        <div class="three-fourth column last">
            <div class="box-effect">
                <h4>{{ disco.getMediumName(disco.getId) }} - {{ disco.getTypeName(disco.getId) }}</h4>
                

                <ul>
                    {% if disco.getDate %}<li>Date de sortie : <strong>{{ disco.getDateRelease(disco.getId) }}</strong></li>{% endif %}
                    {% if disco.getLabel %}<li>Label : <strong>{{ disco.getLabel }}</strong></li>{% endif %}
                    {% if disco.getCountry %}<li>Pays : <strong>{{ disco.getCountryName(disco.getId) }}</strong></li>{% endif %}
                </ul>

                {% if disco.getDetails %}
                <p>
                    {{ disco.getDetails }}
                </p>
                {% endif %}
            </div>
        </div>

        <div class="three-fourth column last">
            <div class="box-effect">
                <h4>Tracklist</h4>
                <div class="track-list">
                    <table>
                        <tbody>
                            {% for key, title in titles %}
                            <tr>
                                <td class="track-number">{{ title.getNumber }}</td>
                                <td>{{ title.getTitle }}</td>
                            </tr>    
                            {% endfor %}
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>

    

</div>


<div class="add_468">
                            <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                <!-- un_article -->
                <ins class="adsbygoogle"
                     style="display:inline-block;width:468px;height:60px"
                     data-ad-client="ca-pub-3070362287154347"
                     data-ad-slot="4706582311"></ins>
                <script>
                    (adsbygoogle = window.adsbygoogle || []).push({});
</script>
</div>
