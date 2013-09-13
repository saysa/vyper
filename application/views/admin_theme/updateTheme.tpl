<div class="row">
	<div class="col-lg-12">
		<div class="box">
			<div class="box-header">
				<h2><i class="icon-edit"></i>Update theme : {{ theme.getTitle }}</h2>
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
								  <input class="form-control focused" id="title" name="title" type="text" placeholder="Title" value="{{ theme.getTitle }}">
								  {{ error_title }}
								</div>
							</div>
						</div>
							
						
						<div class="form-actions">
						  <input type="hidden" name="update" value="update">
						  <button type="submit" class="btn btn-primary">Save theme</button>
						  <button type="reset" class="btn">Cancel</button>
						</div>
						
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</div>