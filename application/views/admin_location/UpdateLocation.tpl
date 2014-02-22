<div class="row">
	<div class="col-lg-12">
		<div class="box">
			<div class="box-header">
				<h2><i class="icon-edit"></i>Update Location : {{ location.getName }}</h2>
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
								
								<!-- Name -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_name %} has-error{% endif %}">
										<label class="control-label" for="title">Name *</label>
										<div class="controls">
										  <input class="form-control focused" id="name" name="name" type="text" placeholder="Name" value="{{ location.getName }}">
										  {{ error_name }}
										</div>
									</div>
								</div>
								
							</div>
							<div class="col-lg-4">
								
								<!-- Name real -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_name_real %} has-error{% endif %}">
										<label class="control-label" for="name_real">Name real</label>
										<div class="controls">
										  <input class="form-control focused" id="name_real" name="name_real" type="text" placeholder="Name real" value="{{ location.getNameReal }}">
										  {{ error_name_real }}
										</div>
									</div>
								</div>
								
							</div>
						</div>
						
						
						<div class="row">
							<div class="col-lg-4">
								
								<!-- Town -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_town %} has-error{% endif %}">
										<label class="control-label" for="town">Town *</label>
										<div class="controls">
										  <input class="form-control focused" id="town" name="town" type="text" placeholder="Town" value="{{ location.getTown }}">
										  {{ error_town }}
										</div>
									</div>
								</div>
								
							</div>
							<div class="col-lg-4">
								
								<!-- Town real -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_town_real %} has-error{% endif %}">
										<label class="control-label" for="town_real">Town real</label>
										<div class="controls">
										  <input class="form-control focused" id="town_real" name="town_real" type="text" placeholder="Town real" value="{{ location.getTownReal }}">
										  {{ error_town_real }}
										</div>
									</div>
								</div>	
								
							</div>
						</div>
						
						<!-- Country -->
						<div class="row">
							<div class="form-group col-lg-9">
								<label class="control-label" for="country">Country</label>
								<div class="controls">
									<select id="country" name="country" class="form-control" data-rel="chosen">
										{% for country in countries %}
											<option value="{{ country.getId }}"{% if country.getId==location.getCountry %} selected="selected"{% endif %}>{{ country.getName }}</option>
										{% endfor %}
								  	</select>
								</div>
							</div>
						</div>
						
						<div class="row">
							<div class="col-lg-4">
								
								<!-- Address -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_address %} has-error{% endif %}">
										<label class="control-label" for="address">Address</label>
										<div class="controls">
										  <textarea class="form-control" name="address" id="address" rows="3" placeholder="Address">{{ location.getAddress }}</textarea>
										  {{ error_address }}
										</div>
									</div>
								</div>
								
							</div>
							<div class="col-lg-4">
								
								<!-- Access -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_access %} has-error{% endif %}">
										<label class="control-label" for="access">Access</label>
										<div class="controls">
										  <textarea class="form-control" name="access" id="access" rows="3" placeholder="Access">{{ location.getAccess }}</textarea>
										  {{ error_access }}
										</div>
									</div>
								</div>
								
							</div>
						</div>
						
						<div class="row">
							<div class="col-lg-4">
								
								<!-- URL -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_url %} has-error{% endif %}">
										<label class="control-label" for="url">URL</label>
										<div class="controls">
										  <input class="form-control focused" id="url" name="url" type="text" placeholder="URL" value="{{ location.getUrl }}">
										  {{ error_url }}
										</div>
									</div>
								</div>
								
							</div>
							<div class="col-lg-4">
								
								<!-- Googlemap -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_googlemap %} has-error{% endif %}">
										<label class="control-label" for="googlemap">Googlemap</label>
										<div class="controls">
										  <textarea class="form-control" name="googlemap" id="googlemap" rows="3" placeholder="Googlemap">{{ location.getGooglemap }}</textarea>
										  {{ error_googlemap }}
										</div>
									</div>
								</div>
								
							</div>
						</div>
						
						
						
						
						
						<div class="form-actions">
						  <input type="hidden" name="update" value="update">
						  <button type="submit" class="btn btn-primary">Edit location</button>
						
						</div>
						
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</div>


