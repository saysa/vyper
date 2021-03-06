<div class="row">
	<div class="col-lg-12">
		<div class="box">
			<div class="box-header">
				<h2><i class="icon-edit"></i>Update article : {{ article.getTitle }}</h2>
				<div class="box-icon">
					<a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
					<a href="#" class="btn-close"><i class="icon-remove"></i></a>
				</div>
			</div>
			<div class="box-content">
				<form class="form-horizontal" method="post">
					<fieldset class="col-sm-12">
						
						<!-- Category -->
						<div class="row">
							<div class="form-group col-lg-9">
								<label class="control-label" for="continent">Continent *</label>
								<div class="controls">
									<select id="continent" name="continent" class="form-control" data-rel="chosen">
										{% for continent in continents %}
											<option value="{{ continent.getId }}"{% if continent.getId==article.getContinent %} selected="selected"{% endif %}>{{ continent.getName }}</option>
										{% endfor %}
								  	</select>
								</div>
							</div>
						</div>
							
						
						<!-- Title -->
						<div class="row">
							<div class="form-group col-lg-9{%if error_title %} has-error{% endif %}">
								<label class="control-label" for="title">Title *</label>
								<div class="controls">
								  <input class="form-control focused" id="title" name="title" type="text" placeholder="Title" value="{{ article.getTitle|escape }}">
								  {{ error_title }}
								</div>
							</div>
						</div>
							
						
						<!-- Description -->
						<div class="row">
							<div class="form-group col-lg-9{%if error_description %} has-error{% endif %}">
								<label class="control-label" for="description">Description *</label>
								<div class="controls">
								  <textarea class="form-control" name="description" id="description" rows="3" placeholder="Description">{{ article.getDescription }}</textarea>
								  {{ error_description }}
								</div>
							</div>
						</div>
						
						<!-- Text -->
						<div class="form-group hidden-phone{%if error_text %} has-error{% endif %}">
						  <label class="control-label" for="text">Text *</label>
						  <div class="controls">
							<textarea class="cleditor" name="text" id="text">{{ article.getText }}</textarea>
							{{ error_text }}
						  </div>
						</div>

                        <!-- Youtube -->
                        <div class="row">
                            <div class="form-group col-lg-9{%if error_youtube %} has-error{% endif %}">
                                <label class="control-label" for="youtube">Youtube</label>
                                <div class="controls">
                                        <input class="form-control focused" id="youtube" name="youtube" type="text" placeholder="ID Youtube" value="{{ article.getYoutube }}">
                                        {{ error_youtube }}
                                </div>
                            </div>
                        </div>
						
						<div class="row">
							<!-- Release Date -->
							<div class="form-group col-lg-2{%if error_rel_date %} has-error{% endif %}">
							  <label class="control-label" for="release_date">Release Date *</label>
							  <div class="controls">
								<input type="text" class="form-control datepicker" id="release_date" name="release_date" value="{{ article.getReleaseDate }}">
								{{ error_rel_date }}
							  </div>
							</div>
							<div class="form-group col-lg-1">
							</div>
							<!-- Release Time -->
							<div class="form-group col-lg-2{%if error_rel_time %} has-error{% endif %}">
							  <label class="control-label" for="release_time">Release Time *</label>
							  <div class="controls">
								<input type="text" class="form-control timepicker" id="release_time" name="release_time" value="{{ article.getReleaseTime }}">
								{{ error_rel_time }}
							  </div>
							</div>
						</div>
						
							
						
						<div class="row">
							<!-- Author -->
							<div class="form-group col-lg-3{%if error_author %} has-error{% endif %}">
								<label class="control-label" for="author">Author *</label>
								<div class="controls">
								  <input class="form-control focused" id="author" name="author" type="text" placeholder="Author" value="{{ article.getAuthor }}">
								  {{ error_author }}
								</div>
							</div>
							<div class="form-group col-lg-1">
							</div>
							<!-- Translator -->
							<div class="form-group col-lg-4">
								<label class="control-label" for="translator">Translator</label>
								<div class="controls">
								  <input class="form-control focused" id="translator" name="translator" type="text" placeholder="Translator">
								</div>
							</div>
						</div>
						
							
						
						<div class="row">
							<!-- Source -->
							<div class="form-group col-lg-3">
								<label class="control-label" for="source">Source</label>
								<div class="controls">
								  <input class="form-control" id="source" name="source" type="text" placeholder="Source">
								</div>
							</div>
							<div class="form-group col-lg-1"></div>
							<!-- Source URL -->
							<div class="form-group col-lg-6">
								<label class="control-label" for="source_url">Source URL</label>
								<div class="controls">
								  <input class="form-control" id="source_url" name="source_url" type="text" placeholder="Source URL">
								</div>
							</div>
						</div>
						
						<!-- Type -->
						<div class="row">
							<div class="form-group col-lg-9">
								<label class="control-label" for="type">Type *</label>
								<div class="controls">
									<select id="type" name="type" class="form-control" data-rel="chosen">
										{% for typeArticle in typeArticles %}
											<option value="{{ typeArticle.getId }}"{% if typeArticle.getId==article.getType %} selected="selected"{% endif %}>{{ typeArticle.getName }}</option>
										{% endfor %}
								  	</select>
								</div>
							</div>
						</div>
						
						<!-- META keywords -->
						<div class="row">
							<div class="form-group col-lg-9{%if error_meta_keywords %} has-error{% endif %}">
								<label class="control-label" for="meta_keywords">META keywords *</label>
								<div class="controls">
								  <textarea class="form-control" name="meta_keywords" id="meta_keywords" rows="3" placeholder="META keywords separate with coma">{{ article.getMetaKeywords }}</textarea>
								  {{ error_meta_keywords }}
								</div>
							</div>
						</div>
						
						<!-- Theme -->
						<div class="row">
							<div class="form-group col-lg-9">
								<label class="control-label" for="theme">Theme </label>
								<div class="controls">
									<select id="theme" name="theme" class="form-control" data-rel="chosen">
										<option value="-1">-- none --</option>
										{% for theme in themes %}
											<option value="{{ theme.getId }}"{% if theme.getId==article.getRelatedTheme %} selected="selected"{% endif %}>{{ theme.getTitle }}</option>
										{% endfor %}
								  	</select>
								</div>
							</div>
						</div>
						
						<div class="row">
							<!-- Related Picture -->
							<div class="form-group col-lg-3">
								<label class="control-label" for="related_picture">Related Picture</label>
								<div class="controls">
								  <input class="form-control" id="related_picture" name="related_picture" type="text" placeholder="Related Picture" value="{{ article.getRelatedPicture }}"> <a href="/_admin_/pictures" target="_blank">View Pictures</a>
								  {{ error_related_picture }}
								</div>
							</div>
						</div>
						
						<div class="row">
							<img src="{{ base_url }}uploads/pic/{{ current_image }}" alt="Current picture" height="150" />
						</div>
						
						<div class="form-actions">
						  <input type="hidden" name="update" value="update">
						  <button type="submit" class="btn btn-primary">Save article</button>
						  <button type="reset" class="btn">Cancel</button>
						</div>
						
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</div>





















































<div class="row">
    <div class="col-lg-12">
        <div class="box">
            <div class="box-header">
                <h2><i class="icon-edit"></i>Artists linked</h2>
                <div class="box-icon">
                    <a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
                    <a href="#" class="btn-close"><i class="icon-remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <form class="form-horizontal" method="post">
                    <fieldset class="col-sm-12">


                        <div class="row">
                            <!-- Gauche -->
                            <div class="form-group col-lg-5">
                                <label class="control-label" for="theme">Artists </label>
                                <div class="controls">
                                    <select id="artists_to_link" name="artists_to_link" class="form-control" data-rel="chosen">
                                        <option value="-1">-- none --</option>
                                        {% for artist in artists %}
                                        <option value="{{ artist.getId }}">{{ artist.getName }}</option>
                                        {% endfor %}
                                        </select>
                                        </div>
                                        <div class="row">
                                        <button type="button" class="btn btn-primary" id="link_button">Link the artist</button>
                                        </div>
                                        </div>
                                        <div class="form-group col-lg-1">
                                        </div>
                                        <!-- Droite -->
                                        <div class="form-group col-lg-6">
                                        <table class="table table-striped table-bordered bootstrap-datatable" id="relArtistLinkTable">
                                        <thead>
                                        <tr>
                                        <th>ID</th>
                                        <th>Artist</th>
                                        <th>Unlink</th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        {% for artist in relArtists %}
                                        <tr id="{{ artist.getId }}">
                                        <td>{{ artist.getId }}</td>
                                        <td>{{ artist.getIdArtist }}</td>
                                        <td><a class="btn btn-danger deleteLink" href="#"><i class="icon-trash "></i> </a></td>
                                        </tr>
                                        {% endfor %}
                                        </tbody>
                                        </table>
                                        </div>
                                        </div>






                                        </fieldset>
                                        </form>
                                        </div>
                                        </div>
                                        </div>
                                        </div>

                                        <script>

                                        $(document).ready(function() {

                                        $("#relArtistLinkTable").on("click", ".deleteLink", function() {
                                        var tr = $(this).closest('tr');
                                        var artistID = tr.attr('id');

                                        console.log("boucle supp ? artistID est " + artistID);

                                        $.ajax({
                                        type: "POST",
                                        url: "/_admin_/ajax/article_artist_link_delete",

                                        data:{
                                        artist_id : artistID,
                                        item_id : '{{ article.getId }}'
                                        },
                                        success: function(data){
                                        console.log('je suis delete success :' + data);
                                        }
                                        });

                                        tr.css("background-color","#FF3700");

                                        tr.fadeOut(400, function(){
                                        tr.remove();
                                        });
                                        return false;
                                        });

                                        $( "#link_button" ).on("click", function() {

                                        $.ajax({
                                        type: "POST",
                                        url: "/_admin_/ajax/article_artist_link",
                                        dataType: "json",
                                        data:{
                                        artist_id : $('#artists_to_link').val(),
                                        item_id : '{{ article.getId }}'
                                        },
                                        success: function(data){
                                        $('#relArtistLinkTable tr:last').after('<tr id="'+ data.artist.id +'"><td>' + data.artist.id + '</td><td>' + data.artist.name + '</td><td><a class="btn btn-danger deleteLink" href="#"><i class="icon-trash "></i> </a></td></tr>');
                                        }
                                        });

                                        });

                                        });


                                        </script>