
<div class="row">		
				<div class="col-lg-12">
					<div class="box">
						<div class="box-header" data-original-title>
							<h2><i class="icon-user"></i><span class="break"></span>Pictures</h2>
							<div class="box-icon">
								<a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
								<a href="#" class="btn-close"><i class="icon-remove"></i></a>
							</div>
						</div>
						<div class="box-content">
							
							<div class="pull-right">
							<a href="{{ base_url ~ link_admin_add_picture }}">
							<button class="btn btn-small btn-primary"><i class="icon-plus"></i> add</button>
							</a>
							</div>
							
							
							<hr>
							
							<table class="table table-striped table-bordered bootstrap-datatable datatable">
							<thead>
		<tr>
			<th>ID</th>
			<th>Date</th>
			<th>Album</th>
			<th>Name</th>
			<th>Preview</th>
			<th>Modify</th>
			<th>Delete</th>
		</tr>
	</thead>
	
	<tbody>
		{% for picture in pictures %}
		<tr>
			<td>{{ picture.getId }}</td>
			<td>{{ picture.getModified|date('Y-m-d') }}</td>
			<td>{{ picture.getAlbum }}</td>
			<td>{{ picture.getName }}</td>
			<td><a class="btn btn-success" href="{{ base_url }}uploads/pic/{{ picture.getFilename }}"><i class="icon-zoom-in "></i></a></td>
			<td><a class="btn btn-info" href="#">
											<i class="icon-edit "></i>  
										</a></td>
			<td><a class="btn btn-danger" href="#">
											<i class="icon-trash "></i> 
										</a></td>
		</tr>
		{% endfor %}
	</tbody>
</table>

<hr>

							<div class="pull-right">
							<a href="{{ base_url ~ link_admin_add_picture }}">
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
                <h2><i class="icon-user"></i><span class="break"></span>Albums</h2>
                <div class="box-icon">
                    <a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
                    <a href="#" class="btn-close"><i class="icon-remove"></i></a>
                </div>
            </div>
            <div class="box-content">

                <div class="pull-right">
                    <a href="{{ base_url ~ link_admin_add_album }}">
                        <button class="btn btn-small btn-primary"><i class="icon-plus"></i> add</button>
                    </a>
                </div>


                <hr>

                <table class="table table-striped table-bordered bootstrap-datatable datatable">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Modify</th>
                        <th>Delete</th>
                    </tr>
                    </thead>

                    <tbody>
                    {% for album in albums %}
                    <tr>
                    <td>{{ album.getId }}</td>
                    <td>{{ album.getTitle }}</td>
                    <td><a class="btn btn-info" href="{{ base_url ~ link_admin_update_album ~ album.getId }}">
                            <i class="icon-edit "></i>
                        </a></td>
                    <td><a class="btn btn-danger" href="#">
                            <i class="icon-trash "></i>
                        </a></td>
                    </tr>
                    {% endfor %}
                    </tbody>
                    </table>

                    <hr>

                    <div class="pull-right">
                    <a href="{{ base_url ~ link_admin_add_album }}">
                    <button class="btn btn-small btn-primary"><i class="icon-plus"></i> add</button>
                    </a>
            </div>

            <div class="clearfix"></div>

        </div>
    </div>
</div>
</div>