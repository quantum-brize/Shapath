<?php
$top_quote = [];
$bottom_quote = [];
if (!empty($quotes)) {
    foreach ($quotes as $quote) {
        if ($quote['type'] == 'home' && $quote['position'] == 'top') {
            $top_quote = $quote;
        } else if ($quote['type'] == 'home' && $quote['position'] == 'bottom') {
            $bottom_quote = $quote;
        }
    }
} 
?>

<div class="logo-container">
    <img src="<?= base_url('assets/img/srishti.png') ?>" alt="Website Logo" />
</div>

<div class="quote-video-wrapper">
    <div class="quote">
        <h1>Events</h1>
        <p>
            <?php echo $project['project_page_description'] ?>
        </p>
    </div><br>
    <a class="btn-hover-bg btn btn-primary text-white py-2 px-4"
        href="<?= base_url('donate/?id=' . $project['uid']) ?>">Donate</a>
    <div class="video">
        <iframe id="ytplayer" type="text/html" width="720" height="405"
            src="<?php echo $project['project_page_video'] ?>" frameborder="0" allow="encrypted-media; loop"
            allowfullscreen>
        </iframe>
    </div>
</div>


<!-- About Start -->
<div class="text-center mx-auto pb-5 mt-4" style="max-width: 800px;">
    <h1 class="mb-0"><?php echo $project['project_page_title']?></h1>
</div>
<div class="container-fluid about  py-5">
    <div class="container py-5">
        <div class="row g-5">
            <div class="card mb-3">
                <img src="<?php echo base_url($project['project_img'])?>" style="height:40%">
                <div class="card-body">
                    <h3 class="card-title"><?php echo $project['project_title']?></h3>
                    <p class="card-text"><?php echo $project['project_page_description']?></p>
                    <!-- <span><i class="fa fa-clock"></i> <?php $dateTime = new DateTime($blog['created_at']); $dateOnly = $dateTime->format('d-m-Y'); echo $dateOnly?></span> -->
                </div>
            </div>
        </div> 
    </div>
</div>
<!-- About End -->

<!-- Gallery Start -->
<div class="container-fluid gallery py-5 my-5 px-0">
    <div class="text-center mx-auto pb-5" style="max-width: 800px;">
        <h3 class="text-uppercase text-primary">Project Gallery</h3>
    </div>
    <div class="row g-0">
        <?php
        $arr_img = explode(',', $project['galary_img']);
        foreach ($arr_img as $img) {
            ?>
            <div class="col-sm-12 col-nd-6 col-lg-4">
                <div class="gallery-item" style="">
                    <img src="<?php echo base_url($img) ?>" class="img-fluid w-100" alt=""
                        style="height: 450px; background-size: cover; background-position: center;">
                    <div class="search-icon">
                        <a href="<?php echo base_url($img) ?>" data-lightbox="gallery-2" class="my-auto">
                            <i class="fas fa-search-plus btn-hover-color bg-white text-primary p-3"></i>
                        </a>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>
</div>
<!-- Gallery End -->

<!-- Image with Quote Start -->
<div class="quote-div">
    <div class="quote-2">
        <p><span>"</span><?php echo $bottom_quote['quote'] ?><span>"</span></p>
        <p class="author-2">- <?php echo $bottom_quote['quote_by'] ?></p>
    </div>
    <div class="authimage">
        <img src="img/rnt-author.png" alt="">
    </div>
</div>