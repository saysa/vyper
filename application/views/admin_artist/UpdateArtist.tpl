<div class="row">
	<div class="col-lg-12">
		<div class="box">
			<div class="box-header">
				<h2><i class="icon-edit"></i>Update Artist : {{ artist.getName }}</h2>
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
										  <input class="form-control focused" id="name" name="name" type="text" placeholder="Name" value="{{ artist.getName }}">
										  {{ error_title }}
										</div>
									</div>
								</div>
								
							</div>
							<div class="col-lg-4">
								
								<!-- Keywords -->
								<div class="row">
									<div class="form-group col-lg-9{%if error_keywords %} has-error{% endif %}">
										<label class="control-label" for="keywords">Keywords</label>
										<div class="controls">
										  <input class="form-control focused" id="keywords" name="keywords" type="text" placeholder="Keywords" value="{{ artist.getKeywords }}">
										  {{ error_keywords }}
										</div>
									</div>
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


