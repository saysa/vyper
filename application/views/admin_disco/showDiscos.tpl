
<div class="row">		
				<div class="col-lg-12">
					<div class="box">
						<div class="box-header" data-original-title>
							<h2><i class="icon-book"></i><span class="break"></span>Discos</h2>
							<div class="box-icon">
								<a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
								<a href="#" class="btn-close"><i class="icon-remove"></i></a>
							</div>
						</div>
						<div class="box-content">
							
							<div class="pull-right">
							<a href="{{ base_url ~ link_admin_add_disco }}">
							<button class="btn btn-small btn-primary"><i class="icon-plus"></i> add</button>
							</a>
							</div>
							
							
							<hr>
							
							<table class="table table-striped table-bordered bootstrap-datatable datatable">
							<thead>
		<tr>
			<th>ID</th>
			<th>Title</th>
			<th>Type</th>
			<th>Start</th>
			<th>End</th>
			<th>Preview</th>
			<th>Modify</th>
			<th>Delete</th>
		</tr>
	</thead>
	
	<tbody>
		{% for tour in tours %}
		<tr>
			<td>{{ tour.getId }}</td>
			<td>{{ tour.getTitle }}</td>
			<td>{{ tour.getType }}</td>
			<td>{{ tour.getStart|date('Y-m-d') }}</td>
			<td>{{ tour.getEnd|date('Y-m-d') }}</td>
			
			<td><a class="btn btn-success" href="{{ base_url }}"><i class="icon-zoom-in "></i></a></td>
			<td><a class="btn btn-info" href="{{ base_url ~ link_admin_update_tour ~ tour.getId }}"><i class="icon-edit "></i></a></td>
			<td><a class="btn btn-danger" href="{{ base_url ~ link_admin_delete_tour ~ tour.getId }}"><i class="icon-trash "></i> </a></td>
		</tr>
		{% endfor %}
	</tbody>
</table>

<hr>

							<div class="pull-right">
							<a href="{{ base_url ~ link_admin_add_disco }}">
							<button class="btn btn-small btn-primary"><i class="icon-plus"></i> add</button>
							</a>
							</div>
							
							<div class="clearfix"></div>

						</div>
					</div>
				</div>
</div>






