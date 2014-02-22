<div class="row">
	<div class="col-lg-12">
		<div class="box">
			<div class="box-header">
				<h2><i class="icon-edit"></i>Update Tour : {{ tour.getTitle }}</h2>
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
									<div class="form-group col-lg-9{%if error_name %} has-error{% endif %}">
										<label class="control-label" for="title">Title *</label>
										<div class="controls">
										  <input class="form-control focused" id="title" name="title" type="text" placeholder="Title" value="{{ tour.getTitle }}">
										  {{ error_title }}
										</div>
									</div>
								</div>
								
							</div>
							<div class="col-lg-4">
								
								<!-- Real title -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_real_title %} has-error{% endif %}">
										<label class="control-label" for="real_title">Real title</label>
										<div class="controls">
										  <input class="form-control focused" id="real_title" name="real_title" type="text" placeholder="Real title" value="{{ tour.getRealTitle }}">
										  {{ error_real_title }}
										</div>
									</div>
								</div>
								
							</div>
						</div>
						
						<div class="row">
							<div class="col-lg-4">
								
								<!-- Description -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_description %} has-error{% endif %}">
										<label class="control-label" for="description">Description</label>
										<div class="controls">
										  <textarea class="form-control" name="description" id="description" rows="3" placeholder="Description">{{ tour.getDescription }}</textarea>
										  {{ error_description }}
										</div>
									</div>
								</div>
								
							</div>
							<div class="col-lg-4">
								
								<!-- Description local -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_description_local %} has-error{% endif %}">
										<label class="control-label" for="description_local">Description local</label>
										<div class="controls">
										  <textarea class="form-control" name="description_local" id="description_local" rows="3" placeholder="Description local">{{ tour.getDescriptionLocal }}</textarea>
										  {{ error_description_local }}
										</div>
									</div>
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
											<option value="{{ type.getId }}"{% if type.getId==tour.getType %} selected="selected"{% endif %}>{{ type.getName }}</option>
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
											<option value="{{ continent.getId }}"{% if continent.getId==tour.getContinent %} selected="selected"{% endif %}>{{ continent.getName }}</option>
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
								<input type="text" class="form-control datetimepicker" id="start" name="start" value="{{ tour.getStart }}">
								{{ error_start }}
							  </div>
							</div>
							<div class="form-group col-lg-1">
							</div>
							<!-- End Time -->
							<div class="form-group col-lg-2{%if error_end %} has-error{% endif %}">
							  <label class="control-label" for="end">End Date *</label>
							  <div class="controls">
								<input type="text" class="form-control datetimepicker" id="end" name="end" value="{{ tour.getEnd }}">
								{{ error_end }}
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


