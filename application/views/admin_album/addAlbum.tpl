<h1>Add an album</h1>

<form method="post">
	
	<div>
		<label>
		Title:
		<input type="text" name="title" />
		{{ error_title }}
		</label>
	</div>

    <div>
        <label>
            Category:
            <select name="category">
                <option value="-1">none</option>
                {% for category in categories %}
                <option value="{{ category.getId }}">{{ category.getName }}</option>
                {% endfor %}
                </select>
                </label>
                </div>

	
	<input type="submit" name="add" value="Add" />

</form>