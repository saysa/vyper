<div class="row">
	<div class="col-lg-12">
		<div class="box">
			<div class="box-header">
				<h2><i class="icon-edit"></i>Add Disco</h2>
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
										<label class="control-label" for="name">Title *</label>
										<div class="controls">
										  <input class="form-control focused" id="title" name="title" type="text" placeholder="Title" value="{{ post_title }}">
										  {{ error_title }}
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<!-- Title real -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_title_real %} has-error{% endif %}">
										<label class="control-label" for="title_real">Title real</label>
										<div class="controls">
										  <input class="form-control focused" id="title_real" name="title_real" type="text" placeholder="Title Real" value="{{ post_title_real }}">
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
										  <input class="form-control focused" id="cd_japan" name="cd_japan" type="text" placeholder="CDJapan" value="{{ post_cd_japan }}">
										  {{ error_cd_japan }}
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<!-- iTunes -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_itunes %} has-error{% endif %}">
										<label class="control-label" for="itunes">iTunes</label>
										<div class="controls">
										  <input class="form-control focused" id="itunes" name="itunes" type="text" placeholder="iTunes" value="{{ post_itunes }}">
										  {{ error_itunes }}
										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="row">
							<div class="col-lg-4">
								<!-- Amazon -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_amazon %} has-error{% endif %}">
										<label class="control-label" for="amazon">Amazon</label>
										<div class="controls">
										  <input class="form-control focused" id="amazon" name="amazon" type="text" placeholder="Amazon" value="{{ post_amazon }}">
										  {{ error_amazon }}
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
													<option value="{{ medium.getId }}"{% if medium.getId==post_medium %} selected="selected"{% endif %}>{{ medium.getName }}</option>
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
													<option value="{{ discotype.getId }}"{% if discotype.getId==post_type %} selected="selected"{% endif %}>{{ discotype.getName }}</option>
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
										  <input class="form-control datepicker" id="date" name="date" type="text" value="{{ post_date }}">
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
										  <textarea class="form-control" name="details" id="details" rows="3" placeholder="Details">{{ post_details }}</textarea>
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
										  <input class="form-control focused" id="label" name="label" type="text" placeholder="Label" value="{{ post_label }}">
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
													<option value="{{ country.getId }}"{% if country.getId==post_country %} selected="selected"{% endif %}>{{ country.getName }}</option>
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
													<option value="{{ continent.getId }}"{% if continent.getId==post_continent %} selected="selected"{% endif %}>{{ continent.getName }}</option>
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
								  <input class="form-control" id="file" name="file" type="text" placeholder="Related Picture" value="{{ post_file }}"> <a href="/_admin_/pictures" target="_blank">View Pictures</a>
								  {{ error_file }}
								</div>
							</div>
						</div>
						
						<div class="form-actions">
						  <input type="hidden" name="add" value="add">
						  <button type="submit" class="btn btn-primary">Save disco</button>
						 
						</div>
						
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</div>