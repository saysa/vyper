<div class="row">
	<div class="col-lg-12">
		<div class="box">
			<div class="box-header">
				<h2><i class="icon-edit"></i>Update Album : {{ album.getTitle }}</h2>
				<div class="box-icon">
					<a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
					<a href="#" class="btn-close"><i class="icon-remove"></i></a>
				</div>
			</div>
			<div class="box-content">
				<form class="form-horizontal" method="post">
					<fieldset class="col-sm-12">
						
						<div class="row">
							<div class="col-lg-4">
								
								<!-- Title -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_title %} has-error{% endif %}">
										<label class="control-label" for="title">Title *</label>
										<div class="controls">
										  <input class="form-control focused" id="title" name="title" type="text" placeholder="Title" value="{{ album.getTitle }}">
										  {{ error_title }}
										</div>
									</div>
								</div>
								
							</div>
							<div class="col-lg-4">

                                <!-- Category -->
                                <div class="row">
                                    <div class="form-group col-lg-9">
                                        <label class="control-label" for="category">Category</label>
                                        <div class="controls">
                                            <select id="category" name="category" class="form-control" data-rel="chosen">
                                                <option value="-1">none</option>
                                                {% for category in categories %}
                                                <option value="{{ category.getId }}"{% if category.getId==album.getCategory %} selected="selected"{% endif %}>{{ category.getName }}</option>
                                                {% endfor %}
                                                </select>
                                                </div>
                                                </div>
                                                </div>
								
							</div>
						</div>

                                                <!-- Description -->
                                                <div class="row">
                                                <div class="form-group col-lg-9{%if error_description %} has-error{% endif %}">
                                                <label class="control-label" for="description">Description</label>
                                                <div class="controls">
                                                <textarea class="form-control" name="description" id="description" rows="3" placeholder="Description">{{ album.getDescription }}</textarea>
                                                {{ error_description }}
                                        </div>
                                    </div>
                                </div>
						
						<div class="form-actions">
						  <input type="hidden" name="update" value="update">
						  <button type="submit" class="btn btn-primary">Edit</button>
						
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
                                        url: "/_admin_/ajax/album_artist_link_delete",

                                        data:{
                                        artist_id : artistID,
                                        item_id : '{{ album.getId }}'
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
                                        url: "/_admin_/ajax/album_artist_link",
                                        dataType: "json",
                                        data:{
                                        artist_id : $('#artists_to_link').val(),
                                        item_id : '{{ album.getId }}'
                                        },
                                        success: function(data){
                                        $('#relArtistLinkTable tr:last').after('<tr id="'+ data.artist.id +'"><td>' + data.artist.id + '</td><td>' + data.artist.name + '</td><td><a class="btn btn-danger deleteLink" href="#"><i class="icon-trash "></i> </a></td></tr>');
                                        }
                                        });

                                        });

                                        });


                                        </script>