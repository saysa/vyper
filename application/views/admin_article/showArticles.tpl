
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
			<th>Highlight</th>
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
			<td><input type="checkbox" class="hightlight" data-articleid="{{ article.getId }}" {% if article.getHighlight == 1 %}checked="checked"{% endif %} /></td>
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
            <th>Active</th>
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
            <td><input type="checkbox" class="theme-active" data-themeid="{{ theme.getId }}" {% if theme.getShowInMenu == 1 %}checked="checked"{% endif %} /></td>
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



<script>

    $(document).ready(function() {
        $( ".hightlight" ).on("click", function() {

            var articleId = $(this).data('articleid');
            var checkboxValue = $(this).is(':checked');

            $.ajax({
                type: "POST",
                url: "/_admin_/ajax/switch_article_highlight",
                dataType: "json",
                data:{
                    article_id : articleId,
                    checkboxValue : checkboxValue
                },
                success: function(data){
                    console.log("changed :)");
                }
            });

        });

        $( ".theme-active" ).on("click", function() {

            var themeId = $(this).data('themeid');
            var checkboxValue = $(this).is(':checked');

            $.ajax({
                type: "POST",
                url: "/_admin_/ajax/switch_theme_show_in_menu",
                dataType: "json",
                data:{
                    theme_id : themeId,
                    checkboxValue : checkboxValue
                },
                success: function(data){
                    console.log("changed :)");
                }
            });

        });
    });

</script>


