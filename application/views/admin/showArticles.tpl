
<div class="row">		
				<div class="col-lg-12">
					<div class="box">
						<div class="box-header" data-original-title>
							<h2><i class="icon-book"></i><span class="break"></span>Articles</h2>
							<div class="box-icon">
								<a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
								<a href="#" class="btn-close"><i class="icon-remove"></i></a>
							</div>
						</div>
						<div class="box-content">
							
							<div class="pull-right">
							<a href="{{ base_url ~ link_admin_add_article }}">
							<button class="btn btn-small btn-primary"><i class="icon-plus"></i> add</button>
							</a>
							</div>
							
							
							<hr>
							
							<table class="table table-striped table-bordered bootstrap-datatable datatable">
							<thead>
		<tr>
			<th>ID</th>
			<th>Status</th>
			<th>Date</th>
			<th>Type</th>
			<th>Title</th>
			<th>Preview</th>
			<th>Modify</th>
			<th>Delete</th>
		</tr>
	</thead>
	
	<tbody>
		{% for article in articles %}
		<tr>
			<td>{{ article.getId }}</td>
			<td></td>
			<td>{{ article.getModified|date('Y-m-d') }}</td>
			<td>{{ article.getType }}</td>
			<td>{{ article.getTitle }}</td>
			<td><a class="btn btn-success" href="{{ base_url }}"><i class="icon-zoom-in "></i></a></td>
			<td><a class="btn btn-info" href="{{ base_url ~ link_admin_update_article ~ article.getId }}"><i class="icon-edit "></i></a></td>
			<td><a class="btn btn-danger" href="{{ base_url ~ link_admin_delete_article ~ article.getId }}"><i class="icon-trash "></i> </a></td>
		</tr>
		{% endfor %}
	</tbody>
</table>

<hr>

							<div class="pull-right">
							<a href="{{ base_url ~ link_admin_add_article }}">
							<button class="btn btn-small btn-primary"><i class="icon-plus"></i> add</button>
							</a>
							</div>
							
							<div class="clearfix"></div>

						</div>
					</div>
				</div>
</div>















<div class="row">		
				<div class="col-lg-12">
					<div class="box">
						<div class="box-header" data-original-title>
							<h2><i class="icon-book"></i><span class="break"></span>Themes</h2>
							<div class="box-icon">
								<a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
								<a href="#" class="btn-close"><i class="icon-remove"></i></a>
							</div>
						</div>
						<div class="box-content">
							
							<div class="pull-right">
							<a href="{{ base_url ~ link_admin_add_theme }}">
							<button class="btn btn-small btn-primary"><i class="icon-plus"></i> add</button>
							</a>
							</div>
							
							
							<hr>
							
							<table class="table table-striped table-bordered bootstrap-datatable datatable">
							<thead>
		<tr>
			<th>ID</th>
			<th>Date</th>
			<th>Title</th>
			<th>Modify</th>
			<th>Delete</th>
		</tr>
	</thead>
	
	<tbody>
		{% for theme in themes %}
		<tr>
			<td>{{ theme.getId }}</td>
			<td>{{ theme.getModified|date('Y-m-d') }}</td>
			<td>{{ theme.getTitle }}</td>
			<td><a class="btn btn-info" href="{{ base_url ~ link_admin_update_theme ~ theme.getId }}"><i class="icon-edit "></i></a></td>
			<td><a class="btn btn-danger" href="{{ base_url ~ link_admin_delete_theme ~ theme.getId }}"><i class="icon-trash "></i></a></td>
		</tr>
		{% endfor %}
	</tbody>
</table>

<hr>

							<div class="pull-right">
							<a href="{{ base_url ~ link_admin_add_theme }}">
							<button class="btn btn-small btn-primary"><i class="icon-plus"></i> add</button>
							</a>
							</div>
							
							<div class="clearfix"></div>

						</div>
					</div>
				</div>
</div>






