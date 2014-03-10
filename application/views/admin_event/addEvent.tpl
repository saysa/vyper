<div class="row">
	<div class="col-lg-12">
		<div class="box">
			<div class="box-header">
				<h2><i class="icon-edit"></i>Add Event</h2>
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
								<label class="control-label" for="name">Title *</label>
								<div class="controls">
								  <input class="form-control focused" id="title" name="title" type="text" placeholder="Title" value="{{ post_title }}">
								  {{ error_title }}
								</div>
							</div>
						</div>
						
						<!-- Real title -->
						<div class="row">
							<div class="form-group col-lg-9{%if error_keywords %} has-error{% endif %}">
								<label class="control-label" for="keywords">Title real</label>
								<div class="controls">
								  <input class="form-control focused" id="real_title" name="real_title" type="text" placeholder="Real title" value="{{ post_real_title }}">
								  {{ error_real_title }}
								</div>
							</div>
						</div>
							
						<!-- Description -->
						<div class="row">
							<div class="form-group col-lg-9{%if error_description %} has-error{% endif %}">
								<label class="control-label" for="description">Description *</label>
								<div class="controls">
								  <textarea class="form-control" name="description" id="description" rows="3" placeholder="Description">{{ post_description }}</textarea>
								  {{ error_description }}
								</div>
							</div>
						</div>	
						
						<!-- Description Real -->
						<div class="row">
							<div class="form-group col-lg-9{%if error_description_real %} has-error{% endif %}">
								<label class="control-label" for="description">Description real</label>
								<div class="controls">
								  <textarea class="form-control" name="description_real" id="description_real" rows="3" placeholder="Description Real">{{ post_description_real }}</textarea>
								  {{ error_description_real }}
								</div>
							</div>
						</div>	
						
						<!-- Location -->
						<div class="row">
							<div class="form-group col-lg-9">
								<label class="control-label" for="location">Location</label>
								<div class="controls">
									<select id="location" name="location" class="form-control" data-rel="chosen">
										{% for location in locations %}
											<option value="{{ location.getId }}"{% if location.getId==post_location %} selected="selected"{% endif %}>{{ location.getName }}</option>
										{% endfor %}
								  	</select>
								</div>
							</div>
						</div>
						
						
						<div class="row">
							<!-- Release Date -->
							<div class="form-group col-lg-2{%if error_date %} has-error{% endif %}">
							  <label class="control-label" for="date">Date *</label>
							  <div class="controls">
								<input type="text" class="form-control datepicker" id="date" name="date" value="{{ post_date }}">
								{{ error_date }}
							  </div>
							</div>
							<div class="form-group col-lg-1">
							</div>
							<!-- Release Time -->
							<div class="form-group col-lg-2{%if error_time %} has-error{% endif %}">
							  <label class="control-label" for="time">Time</label>
							  <div class="controls">
								<input type="text" class="form-control timepicker" id="time" name="time" value="{{ post_time }}">
								{{ error_time }}
							  </div>
							</div>
						</div>
						
						<div class="row">
							<!-- Related Picture -->
							<div class="form-group col-lg-3">
								<label class="control-label" for="related_picture">Related Picture</label>
								<div class="controls">
								  <input class="form-control" id="related_picture" name="related_picture" type="text" placeholder="Related Picture" value="{{ post_related_picture }}"> <a href="/_admin_/pictures" target="_blank">View Pictures</a>
								  {{ error_related_picture }}
								</div>
							</div>
						</div>
						
						<div class="form-actions">
						  <input type="hidden" name="add" value="add">
						  <button type="submit" class="btn btn-primary">Save event</button>
						  <button type="reset" class="btn">Cancel</button>
						</div>
						
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</div>