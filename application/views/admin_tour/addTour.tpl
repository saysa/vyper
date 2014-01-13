<div class="row">
	<div class="col-lg-12">
		<div class="box">
			<div class="box-header">
				<h2><i class="icon-edit"></i>Add tour</h2>
				<div class="box-icon">
					<a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
					<a href="#" class="btn-close"><i class="icon-remove"></i></a>
				</div>
			</div>
			<div class="box-content">
				<form class="form-horizontal" method="post">
					<fieldset class="col-sm-12">
						
						
						<!-- Title -->
						<div class="row">
							<div class="form-group col-lg-9{%if error_title %} has-error{% endif %}">
								<label class="control-label" for="title">Title *</label>
								<div class="controls">
								  <input class="form-control focused" id="title" name="title" type="text" placeholder="Title" value="{{ post_title }}">
								  {{ error_title }}
								</div>
							</div>
						</div>
						
						<!-- Real Title -->
						<div class="row">
							<div class="form-group col-lg-9{%if error_real_title %} has-error{% endif %}">
								<label class="control-label" for="real_title">Real Title</label>
								<div class="controls">
								  <input class="form-control focused" id="real_title" name="real_title" type="text" placeholder="Real Title" value="{{ post_real_title }}">
								  {{ error_real_title }}
								</div>
							</div>
						</div>
							
						
						<!-- Description -->
						<div class="row">
							<div class="form-group col-lg-9{%if error_description %} has-error{% endif %}">
								<label class="control-label" for="description">Description</label>
								<div class="controls">
								  <textarea class="form-control" name="description" id="description" rows="3" placeholder="Description">{{ post_description }}</textarea>
								  {{ error_description }}
								</div>
							</div>
						</div>
						
						<!-- Description Local -->
						<div class="row">
							<div class="form-group col-lg-9{%if error_description_local %} has-error{% endif %}">
								<label class="control-label" for="description_local">Description Local</label>
								<div class="controls">
								  <textarea class="form-control" name="description_local" id="description_local" rows="3" placeholder="Description Local">{{ post_description_local }}</textarea>
								  {{ error_description_local }}
								</div>
							</div>
						</div>
						
						<!-- Type -->
						<div class="row">
							<div class="form-group col-lg-9">
								<label class="control-label" for="continent">Type *</label>
								<div class="controls">
									<select id="type" name="type" class="form-control" data-rel="chosen">
										{% for type in typeTours %}
											<option value="{{ type.getId }}"{% if type.getId==post_type %} selected="selected"{% endif %}>{{ type.getName }}</option>
										{% endfor %}
								  	</select>
								</div>
							</div>
						</div>
						
						<!-- Continent -->
						<div class="row">
							<div class="form-group col-lg-9">
								<label class="control-label" for="continent">Continent *</label>
								<div class="controls">
									<select id="continent" name="continent" class="form-control" data-rel="chosen">
										{% for continent in continents %}
											<option value="{{ continent.getId }}"{% if continent.getId==post_continent %} selected="selected"{% endif %}>{{ continent.getName }}</option>
										{% endfor %}
								  	</select>
								</div>
							</div>
						</div>
						
						<div class="row">
							<!-- Start Date -->
							<div class="form-group col-lg-2{%if error_start %} has-error{% endif %}">
							  <label class="control-label" for="start">Start Date *</label>
							  <div class="controls">
								<input type="text" class="form-control datetimepicker" id="start" name="start" value="{{ post_start }}">
								{{ error_start }}
							  </div>
							</div>
							<div class="form-group col-lg-1">
							</div>
							<!-- End Time -->
							<div class="form-group col-lg-2{%if error_end %} has-error{% endif %}">
							  <label class="control-label" for="end">End Date *</label>
							  <div class="controls">
								<input type="text" class="form-control datetimepicker" id="end" name="end" value="{{ post_end }}">
								{{ error_end }}
							  </div>
							</div>
						</div>
						
						
						
						
						<div class="form-actions">
						  <input type="hidden" name="add" value="add">
						  <button type="submit" class="btn btn-primary">Save tour</button>
						  <button type="reset" class="btn">Cancel</button>
						</div>
						
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</div>