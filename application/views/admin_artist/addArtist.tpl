<div class="row">
	<div class="col-lg-12">
		<div class="box">
			<div class="box-header">
				<h2><i class="icon-edit"></i>Add Artist</h2>
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
										<label class="control-label" for="name">Name *</label>
										<div class="controls">
										  <input class="form-control focused" id="name" name="name" type="text" placeholder="Name" value="{{ post_name }}">
										  {{ error_name }}
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4">
								<!-- Real Name -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_real_name %} has-error{% endif %}">
										<label class="control-label" for="real_name">Real Name</label>
										<div class="controls">
										  <input class="form-control" id="real_name" name="real_name" type="text" placeholder="Real Name" value="{{ post_real_name }}">
										  {{ error_real_name }}
										</div>
									</div>
								</div>
							</div>
						</div>

						

                        <!-- Profile -->
                        <div class="row">
                            <div class="form-group col-lg-9{%if error_profile %} has-error{% endif %}">
								<label class="control-label" for="profile">Profile</label>
								<div class="controls">
								  <textarea class="form-control" name="profile" id="profile" rows="3" placeholder="Profile">{{ post_profile }}</textarea>
								  {{ error_profile }}
								</div>
							</div>
						</div>

						<!-- Biographie -->
						<div class="form-group hidden-phone{%if error_biography %} has-error{% endif %}">
						  <label class="control-label" for="text">Biography</label>
						  <div class="controls">
							<textarea class="cleditor" name="biography" id="biography">{{ post_biography }}</textarea>
                            {{ error_biography }}
                            </div>
                        </div>

                        <div class="row">
                            <!-- Author -->
                            <div class="form-group col-lg-3{%if error_author %} has-error{% endif %}">
                                            <label class="control-label" for="author">Author</label>
                                            <div class="controls">
                                              <input class="form-control focused" id="author" name="author" type="text" placeholder="Author" value="{{ post_author }}">
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
						
						<!-- Keywords -->
						<div class="row">
							<div class="form-group col-lg-9{%if error_keywords %} has-error{% endif %}">
								<label class="control-label" for="keywords">Keywords *</label>
								<div class="controls">
								  <input class="form-control focused" id="keywords" name="keywords" type="text" placeholder="Keywords" value="{{ post_keywords }}">
								  {{ error_keywords }}
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
						  <button type="submit" class="btn btn-primary">Save artist</button>
						  <button type="reset" class="btn">Cancel</button>
						</div>
						
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</div>