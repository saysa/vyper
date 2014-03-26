<h1>Add a picture</h1>

<form method="post" enctype="multipart/form-data">
	
	<div>
		<label>
		Name:
		<input type="text" name="name" />
		{{ error_name }}
		</label>
	</div>
	
	<div>
		<label>
		Album:
		<select name="album">
            <option value="-1">none</option>
			{% for album in albums %}
				<option value="{{ album.getId }}">{{ album.getTitle }}</option>
			{% endfor %}
		</select>
		</label>
	</div>
	
	<div>
		<label>
			picture :
			<input type="file" name="picture" />
		</label>
	</div>
	
	<input type="submit" name="add" value="Add" />

</form>