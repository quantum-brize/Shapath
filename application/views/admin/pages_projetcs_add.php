<!-- Begin Project Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Projects</h1>
    </div>

    <!-- Content Row -->
    <div class="row">


        <!-- Quotes -->
        <div class="col-xl-12 col-lg-12">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h5 class="m-0 font-weight-bold text-primary">Add New Project</h5>
                </div>
                <!-- Card Body -->
                <div class="card-body row">
                    <div class="col-xl-6 col-lg-6">
                        <div class="form-group">
                            <label for="formGroupExampleInput2">Project Title</label>
                            <input type="text" class="form-control" name="project_title" value="" placeholder="Project Title" required>
                        </div>
                        <div class="form-group">
                            <label for="formGroupExampleInput">Cover Project Detils</label>
                            <textarea rows="6" cols="30" class="form-control" value="" placeholder="Cover Project Detils" required name="project_title"></textarea>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6">
                        <div>
                            <label for="formGroupExampleInput2">Cover image</label>
                        </div>
                        <div class='form-group' id="projectPrev">
                            <img src="https://usercontent.one/wp/www.vocaleurope.eu/wp-content/uploads/no-image.jpg?media=1642546813"
                                height="200" id="project_img" />
                        </div>
                        <div class="form-group">
                            <input type="file" class="form-control-file" placeholder="projects image" name="project_img[]" />
                        </div>
                    </div>
                </div>
            </div>

        </div>


    </div>
    <!-- /.container-fluid -->