<div class="row">
	<div class="col-lg-12">
		<div class="box">
			<div class="box-header">
				<h2><i class="icon-edit"></i>Update Disco : {{ disco.getTitle }}</h2>
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
										  <input class="form-control focused" id="title" name="title" type="text" placeholder="Title" value="{{ disco.getTitle|escape }}">
										  {{ error_title }}
										</div>
									</div>
								</div>
							
							</div>
							<div class="col-lg-4">
								
								<!-- Title Real -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_title_real %} has-error{% endif %}">
										<label class="control-label" for="title_real">Title Real</label>
										<div class="controls">
										  <input class="form-control focused" id="title_real" name="title_real" type="text" placeholder="Title Real" value="{{ disco.getTitleReal|escape }}">
										  {{ error_title_real }}
										</div>
									</div>
								</div>
								
							</div>
						</div>

						<div class="row">
							<div class="col-lg-4">
								<!-- CDJapan -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_cd_japan %} has-error{% endif %}">
										<label class="control-label" for="cd_japan">CDJapan</label>
										<div class="controls">
										  <input class="form-control focused" id="cd_japan" name="cd_japan" type="text" placeholder="CDJapan" value="{{ disco.getCdJapan }}">
										  {{ error_cd_japan }}
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<!-- Medium -->
								<div class="row">
									<div class="form-group col-lg-9">
										<label class="control-label" for="medium">Medium</label>
										<div class="controls">
											<select id="medium" name="medium" class="form-control" data-rel="chosen">
												{% for medium in mediums %}
													<option value="{{ medium.getId }}"{% if medium.getId==disco.getMedium %} selected="selected"{% endif %}>{{ medium.getName }}</option>
												{% endfor %}
										  	</select>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-lg-4">
								<!-- Disco type -->
								<div class="row">
									<div class="form-group col-lg-9">
										<label class="control-label" for="type">Type</label>
										<div class="controls">
											<select id="type" name="type" class="form-control" data-rel="chosen">
												{% for discotype in discotypes %}
													<option value="{{ discotype.getId }}"{% if discotype.getId==disco.getType %} selected="selected"{% endif %}>{{ discotype.getName }}</option>
												{% endfor %}
										  	</select>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4">

								<!-- Date -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_date %} has-error{% endif %}">
										<label class="control-label" for="date">Date</label>
										<div class="controls">
										  <input class="form-control datepicker" id="date" name="date" type="text" value="{{ disco.getDate }}">
										  {{ error_date }}
										</div>
									</div>
								</div>

								
							</div>
						</div>


						<div class="row">
							<div class="col-lg-4">
								<!-- Details -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_details %} has-error{% endif %}">
										<label class="control-label" for="description">Details</label>
										<div class="controls">
										  <textarea class="form-control" name="details" id="details" rows="3" placeholder="Details">{{ disco.getDetails }}</textarea>
										  {{ error_details }}
										</div>
									</div>
								</div>	
							</div>
							<div class="col-lg-4">
								<!-- Label -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_label %} has-error{% endif %}">
										<label class="control-label" for="label">Label</label>
										<div class="controls">
										  <input class="form-control focused" id="label" name="label" type="text" placeholder="Label" value="{{ disco.getLabel }}">
										  {{ error_label }}
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-lg-4">
								<!-- Country -->
								<div class="row">
									<div class="form-group col-lg-9">
										<label class="control-label" for="country">Country</label>
										<div class="controls">
											<select id="country" name="country" class="form-control" data-rel="chosen">
												{% for country in countries %}
													<option value="{{ country.getId }}"{% if country.getId==disco.getCountry %} selected="selected"{% endif %}>{{ country.getName }}</option>
												{% endfor %}
										  	</select>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<!-- Continent -->
								<div class="row">
									<div class="form-group col-lg-9">
										<label class="control-label" for="continent">Continent</label>
										<div class="controls">
											<select id="continent" name="continent" class="form-control" data-rel="chosen">
												{% for continent in continents %}
													<option value="{{ continent.getId }}"{% if continent.getId==disco.getContinent %} selected="selected"{% endif %}>{{ continent.getName }}</option>
												{% endfor %}
										  	</select>
										</div>
									</div>
								</div>
							</div>
						</div>



						<div class="row">
							<!-- Related Picture -->
							<div class="form-group col-lg-3">
								<label class="control-label" for="file">Related Picture</label>
								<div class="controls">
								  <input class="form-control" id="file" name="file" type="text" placeholder="Related Picture" value="{{ disco.getFile }}"> <a href="/_admin_/pictures" target="_blank">View Pictures</a>
								  {{ error_file }}
								</div>
							</div>
						</div>

                        {% if current_image %}
                        	<div class="row">
                            	<img src="{{ base_url }}uploads/pic/{{ current_image }}" alt="Current picture" height="150" />
                        	</div>
                        {% endif %}
						
						
						<div class="form-actions">
						  <input type="hidden" name="update" value="update">
						  <button type="submit" class="btn btn-primary">Save</button>
						  
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
				<h2><i class="icon-edit"></i>Titles list</h2>
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
							<div class="form-group col-lg-6">
								<div class="form-group col-lg-2">
									<label class="control-label" for="title_number">Number </label>
									<div class="controls">
										<input class="form-control focused" id="title_number" name="title_number" type="text" />
									</div>
								</div>
								<div class="form-group col-lg-1">
								</div>
								<div class="form-group col-lg-4">
									<label class="control-label" for="title_title">Title </label>
									<div class="controls">
										<input class="form-control focused" id="title_title" name="title_title" type="text" />
									</div>
								</div>
								<div class="form-group col-lg-1">
								</div>
								<div class="form-group col-lg-4">
									<label class="control-label" for="title_title_real">Title Real </label>
									<div class="controls">
										<input class="form-control focused" id="title_title_real" name="title_title_real" type="text" />
									</div>
								</div>

								<div>
									<button type="button" class="btn btn-primary" id="add_title_button">Add the title</button>
								</div>
								  	
							</div>
							<div class="form-group col-lg-1">
							</div>
							<!-- Droite -->
							<div class="form-group col-lg-5">
								<table class="table table-striped table-bordered bootstrap-datatable" id="titleListTable">
									<thead>
										<tr>
											<th>Number</th>
											<th>Title</th>
											<th>Real</th>
											<th>Delete</th>
										</tr>
									</thead>
	
									<tbody>
										{% for title in titles %}
										<tr id="{{ title.getId }}">
											<td>{{ title.getNumber }}</td>
											<td>{{ title.getTitle }}</td>
											<td>{{ title.getTitleReal }}</td>
											<td><a class="btn btn-danger deleteTitle" href="#"><i class="icon-trash "></i> </a></td>
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
	            url: "/_admin_/ajax/disco_artist_link_delete", 
	            
	            data:{
	            	artist_id : artistID,
	            	item_id : '{{ disco.getId }}'
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
	            url: "/_admin_/ajax/disco_artist_link", 
	            dataType: "json",
	            data:{
	            	artist_id : $('#artists_to_link').val(),
	            	item_id : '{{ disco.getId }}'
	            },
                success: function(data){
					 $('#relArtistLinkTable tr:last').after('<tr id="'+ data.artist.id +'"><td>' + data.artist.id + '</td><td>' + data.artist.name + '</td><td><a class="btn btn-danger deleteLink" href="#"><i class="icon-trash "></i> </a></td></tr>');
	            }
	    });
		
	});

	$("#titleListTable").on("click", ".deleteTitle", function() {
        var tr = $(this).closest('tr');
        var titleID = tr.attr('id');
        
        console.log("boucle supp ? titleID est " + titleID);
        
        $.ajax({
	            type: "POST",
	            url: "/_admin_/ajax/delete_title_from_disco", 
	            
	            data:{
	            	title_id : titleID
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

	$( "#add_title_button" ).on("click", function() {
		
		console.log($('#title_number').val());

		$.ajax({
	            type: "POST",
	            url: "/_admin_/ajax/add_title_to_disco", 
	            dataType: "json",
	            data:{
	            	title_number : $('#title_number').val(),
	            	title_title : $('#title_title').val(),
	            	title_title_real : $('#title_title_real').val(),
	            	disco_id : '{{ disco.getId }}'
	            },
                success: function(data){
					 $('#titleListTable tr:last').after('<tr><td>' + data.title.number + '</td><td>' + data.title.title + '</td><td>' + data.title.title_real + '</td><td></td></tr>');
	            }
	    });
	
	});	



});


</script>