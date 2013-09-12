<div class="row">
	<div class="col-lg-12">
		<div class="box">
			<div class="box-header">
				<h2><i class="icon-edit"></i>Add article</h2>
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
											<option value="{{ continent.getId }}">{{ continent.getName }}</option>
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
								  <input class="form-control focused" id="title" name="title" type="text" placeholder="Title" value="{{ post_title }}">
								  {{ error_title }}
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
						
						<!-- Text -->
						<div class="form-group hidden-phone{%if error_text %} has-error{% endif %}">
						  <label class="control-label" for="text">Text *</label>
						  <div class="controls">
							<textarea class="cleditor" name="text" id="text">{{ post_text }}</textarea>
							{{ error_text }}
						  </div>
						</div>
						
						<div class="row">
							<!-- Release Date -->
							<div class="form-group col-lg-2{%if error_rel_date %} has-error{% endif %}">
							  <label class="control-label" for="release_date">Release Date *</label>
							  <div class="controls">
								<input type="text" class="form-control datepicker" id="release_date" name="release_date" value="{{ post_rel_date }}">
								{{ error_rel_date }}
							  </div>
							</div>
							<div class="form-group col-lg-1">
							</div>
							<!-- Release Time -->
							<div class="form-group col-lg-2{%if error_rel_time %} has-error{% endif %}">
							  <label class="control-label" for="release_time">Release Time *</label>
							  <div class="controls">
								<input type="text" class="form-control timepicker" id="release_time" name="release_time" value="{{ post_rel_time }}">
								{{ error_rel_time }}
							  </div>
							</div>
						</div>
						
							
						
						<div class="row">
							<!-- Author -->
							<div class="form-group col-lg-3{%if error_author %} has-error{% endif %}">
								<label class="control-label" for="author">Author *</label>
								<div class="controls">
								  <input class="form-control focused" id="author" name="author" type="text" placeholder="Author">
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
											<option value="{{ typeArticle.getId }}">{{ typeArticle.getName }}</option>
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
								  <textarea class="form-control" name="meta_keywords" id="meta_keywords" rows="3" placeholder="META keywords separate with coma">{{ post_meta_keywords }}</textarea>
								  {{ error_meta_keywords }}
								</div>
							</div>
						</div>
						
						<div class="form-actions">
						  <input type="hidden" name="add" value="add">
						  <button type="submit" class="btn btn-primary">Save article</button>
						  <button type="reset" class="btn">Cancel</button>
						</div>
						
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</div>