<div class="row">
    <div class="col-lg-12">
        <div class="box">
            <div class="box-header">
                <h2><i class="icon-edit"></i>Add a picture</h2>
                <div class="box-icon">
                    <a href="#" class="btn-minimize"><i class="icon-chevron-up"></i></a>
                    <a href="#" class="btn-close"><i class="icon-remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <form method="post" enctype="multipart/form-data" class="form-horizontal">
                    <fieldset class="col-sm-12">

                        <div class="row">
                            <div class="col-lg-4">

                                <!-- Title -->
                                <div class="row">
                                    <div class="form-group col-lg-9{%if error_name %} has-error{% endif %}">
                                        <label class="control-label" for="name">Name *</label>
                                        <div class="controls">
                                            <input class="form-control focused" id="name" name="name" type="text" placeholder="Name">
                                            {{ error_name }}
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="col-lg-4">

                                <!-- File -->
                                <div class="row">
                                    <div class="form-group col-lg-9{%if error_name %} has-error{% endif %}">
                                        <label class="control-label" for="picture">Picture</label>
                                        <div class="controls">
                                            <input type="file" name="picture" />

                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="col-lg-4">

                                <!-- Album -->
                                <div class="row">
                                    <div class="form-group col-lg-9">
                                        <label class="control-label" for="album">Album</label>
                                        <div class="controls">
                                            <select id="album" name="album" class="form-control" data-rel="chosen">
                                                <option value="-1">none</option>

                                                {% for album in albums %}
                                                <option value="{{ album.getId }}">{{ album.getTitle }}</option>
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


