<div class="logo-container">
    <img src="<?= base_url('assets/img/srishti.png') ?>" alt="Website Logo" />
</div>

<div class="quote-video-wrapper">
    <div class="quote">
        <h1>text</h1>
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



<!-- Events Start -->
<div class="container-fluid event py-5">
    <div class="container py-5">
        <div class="text-center mx-auto mb-5" style="max-width: 800px;">
            <h5 class="text-uppercase text-primary">Text</h5>
            <h1 class="mb-0">text</h1>
        </div>
        <div class="event-carousel owl-carousel">
            <?php

            if (!empty($events)) {
                foreach ($events as $event) {
                    ?>
                    <div class="event-item">
                        <img src="<?= base_url() . $event['img'] ?>" class="img-fluid w-100" alt="Image"
                            style="height: 250px;object-fit: cover;">
                        <div class="event-content p-4">
                            <div class="d-flex justify-content-between mb-4">
                                <span class="text-body"><i class="fas fa-map-marker-alt me-2"></i>
                                    <?= $event['place'] ?>
                                </span>
                                <span class="text-body"><i class="fas fa-calendar-alt me-2"></i>
                                    <?= $event['date'] ?>
                                </span>
                            </div>
                            <h4 class="mb-4">
                                <?= $event['title'] ?>
                            </h4>
                            <p class="mb-4">
                                <?= $event['details'] ?>
                            </p>
                            <a class="btn-hover-bg btn btn-primary text-white py-2 px-4" href="#">Read More</a>
                        </div>
                    </div>


                    <?php
                }
            }

            ?>
        </div>
    </div>
</div>
<!-- Events End -->

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
        <p><span>"</span> Where the mind is without fear and the head is held high into the heaven of freedom. My
            father, let my country awake <span>"</span></p>
        <p class="author-2">- Rabindranath Thakur</p>
    </div>
    <div class="authimage">
        <img src="img/rnt-author.png" alt="">
    </div>
</div>