
<div class="row">		
				<div class="col-lg-12">
					<div class="box">
						<div class="box-header" data-original-title>
							<h2><i class="icon-user"></i><span class="break"></span>Events</h2>
							<div class="box-icon">
								<a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
								<a href="#" class="btn-close"><i class="icon-remove"></i></a>
							</div>
						</div>
						<div class="box-content">
							
							<div class="pull-right">
							<a href="{{ base_url ~ link_admin_add_event }}">
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
		{% for event in events %}
		<tr>
			<td>{{ event.getId }}</td>
			<td>{{ event.getModified|date('Y-m-d') }}</td>
			<td>{{ event.getTitle }}</td>
			<td><a class="btn btn-info" href="{{ base_url ~ link_admin_update_event ~ event.getId }}"><i class="icon-edit "></i>  </a></td>
			<td><a class="btn btn-danger" href="#"><i class="icon-trash "></i> </a></td>
		</tr>
		{% endfor %}
	</tbody>
</table>

<hr>

							<div class="pull-right">
							<a href="{{ base_url ~ link_admin_add_event }}">
							<button class="btn btn-small btn-primary"><i class="icon-plus"></i> add</button>
							</a>
							</div>
							
							<div class="clearfix"></div>

						</div>
					</div>
				</div>
</div>



