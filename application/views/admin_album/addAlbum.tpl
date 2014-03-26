<div class="row">
    <div class="col-lg-12">
        <div class="box">
            <div class="box-header">
                <h2><i class="icon-edit"></i>Add an album</h2>
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

                                <!-- Title -->
                                <div class="row">
                                    <div class="form-group col-lg-9{%if error_title %} has-error{% endif %}">
										<label class="control-label" for="title">Title *</label>
										<div class="controls">
										  <input class="form-control focused" id="title" name="title" type="text" placeholder="Title">
                                        {{ error_title }}
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-lg-4">

                            <!-- Category -->
                            <div class="row">
                                <div class="form-group col-lg-9">
                                    <label class="control-label" for="category">Category</label>
                                    <div class="controls">
                                        <select id="category" name="category" class="form-control" data-rel="chosen">
                                            <option value="-1">none</option>
                                            {% for category in categories %}
                                            <option value="{{ category.getId }}">{{ category.getName }}</option>
                                            {% endfor %}
                                        </select>
                                    </div>
                                </div>
                            </div>

                                            </div>
                                            </div>



                                            <div class="form-actions">
                                            <input type="submit" class="btn btn-primary" name="add" value="Add" />


                                            </div>

                                            </fieldset>
                                            </form>
                                            </div>
                                            </div>
                                            </div>
                                            </div>




















