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
			picture :
			<input type="file" name="picture" />
		</label>
	</div>
	
	<input type="submit" name="add" value="Add" />

</form>