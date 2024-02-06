<?php

// getting quotes of the pages and sorting them accordingly
$top_quote = [];
$bottom_quote = [];
if (!empty($quotes)) {
    foreach ($quotes as $quote) {
        if ($quote['type'] == 'home' && $quote['position'] == 'top') {
            $top_quote = $quote;
        } elseif ($quote['type'] == 'home' && $quote['position'] == 'bottom') {
            $bottom_quote = $quote;
        }
    }
}

$home_videos = [];
if (!empty($videos)) {
    foreach ($videos as $video) {
        if ($video['page'] == 'home') {
            $home_videos = $video;
        }
    }
}



?>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Home</h1>
    </div>

    <!-- Content Row -->
    <div class="row">

        <div class="col-xl-12 col-lg-12">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h5 class="m-0 font-weight-bold text-primary">Quotes</h5>
                </div>
                <!-- Card Body -->
                <div class="card-body row">
                    <div class="col-xl-6 col-lg-6 card shadow">
                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            <h6 class="m-0 font-weight-bold text-primary">Header Quote</h6>
                        </div>
                        <div class="card-body">
                            <form action="<?= base_url('admin/Pages/update_quotes') ?>" method="POST">
                                <div class="form-group">
                                    <label for="formGroupExampleInput">Quote</label>
                                    <textarea type="text" class="form-control" value="" placeholder="Quote" required
                                        name="quote"><?= $top_quote['quote'] ?></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="formGroupExampleInput2">Quote Author</label>
                                    <input type="text" class="form-control" name="quote_author"
                                        value="<?= $top_quote['quote_by'] ?>" placeholder="Quote Author" required>
                                </div>
                                <div class="form-group">
                                    <input type="text" hidden value="<?= $top_quote['uid'] ?>" name="uid">
                                    <input type="submit" class="btn btn-success" id="" value="Update">
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 card shadow">
                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            <h6 class="m-0 font-weight-bold text-primary">Footer Quote</h6>
                        </div>
                        <div class="card-body">
                            <form enctype="multipart/form-data" action="<?= base_url('admin/Pages/update_quotes') ?>"
                                method="POST">
                                <div class="form-group">
                                    <label for="formGroupExampleInput">Quote</label>
                                    <textarea type="text" class="form-control" id="" value="" placeholder="Quote"
                                        name="quote" required><?= $bottom_quote['quote'] ?></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="formGroupExampleInput2">Quote Author</label>
                                    <input type="text" class="form-control" id="" name="quote_author"
                                        value="<?= $bottom_quote['quote_by'] ?>" placeholder="Quote Author" required />
                                </div>
                                <div class='form-group' id="imagePreview">
                                    <div>
                                        <label for="formGroupExampleInput2">Quote image</label>
                                    </div>
                                    <img src="<?= base_url($bottom_quote['quote_img']) ?>" height="100"
                                        id="quote_img" />
                                </div>
                                <div class="form-group">
                                    <input type="file" class="form-control-file" placeholder="Quote image"
                                        name="quote_img[]" />
                                </div>
                                <div class="form-group">
                                    <input type="text" hidden value="<?= $bottom_quote['uid'] ?>" name="uid">
                                    <input type="submit" class="btn btn-success" id="" value="Update">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="col-xl-12 col-lg-12">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h5 class="m-0 font-weight-bold text-primary">Audio and Video</h5>
                </div>
                <!-- Card Body -->
                <div class="card-body row">
                    <div class="col-xl-6 col-lg-6 card shadow">
                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            <h6 class="m-0 font-weight-bold text-primary">Video</h6>
                        </div>
                        <div class="card-body">

                            <form action="<?= base_url('admin/Pages/update_video') ?>" method="POST">
                                <iframe id="ytplayer" type="text/html" height="200" src="<?= $home_videos['path'] ?>"
                                    frameborder="0" allow="encrypted-media; loop" allowfullscreen></iframe>

                                <div class="form-group">
                                    <label for="formGroupExampleInput2">video url</label>
                                    <input type="text" class="form-control" name="url"
                                        value="<?= $home_videos['path'] ?>" placeholder="video url" required>
                                </div>
                                <div class="form-group">
                                    <input type="text" hidden value="<?= $home_videos['uid'] ?>" name="uid">
                                    <input type="submit" class="btn btn-success" id="" value="Update">
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 card shadow">
                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            <h6 class="m-0 font-weight-bold text-primary">Audio</h6>
                        </div>
                        <div class="card-body">

                            <form action="<?= base_url('admin/Pages/update_video') ?>" method="POST">
                                <iframe id="ytplayer" type="text/html" height="200" src="<?= $home_videos['path'] ?>"
                                    frameborder="0" allow="encrypted-media; loop" allowfullscreen></iframe>

                                <div class="form-group">
                                    <label for="formGroupExampleInput2">video url</label>
                                    <input type="text" class="form-control" name="url"
                                        value="<?= $home_videos['path'] ?>" placeholder="video url" required>
                                </div>
                                <div class="form-group">
                                    <input type="text" hidden value="<?= $home_videos['uid'] ?>" name="uid">
                                    <input type="submit" class="btn btn-success" id="" value="Update">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>


</div>
<!-- /.container-fluid -->