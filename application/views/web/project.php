<div class="logo-container">
    <img src="<?= base_url('assets/img/srishti.png')?>" alt="Website Logo" />
</div>

<div class="quote-video-wrapper">
    <div class="quote">
        <h1>text</h1>
        <p><?php echo $project['project_page_description']?></p>
    </div><br>
    
    <div class="video">
        <iframe id="ytplayer" type="text/html" width="720" height="405"
            src="<?php echo $project['project_page_video']?>"
            frameborder="0" allow="autoplay; encrypted-media; loop" allowfullscreen>
        </iframe>
        <!-- https://www.youtube.com/embed/ox3VFMNBXjA?autoplay=1&unmute=1&loop=1&playlist=ox3VFMNBXjA -->
    </div>
    <a class="btn-hover-bg btn btn-primary text-white py-2 px-4" href="<?= base_url('donate/?id='.$project['uid'])?>">Donate !</a>
</div>
        

<!-- Events Start -->
<div class="container-fluid event py-5">
    <div class="container py-5">
        <div class="text-center mx-auto mb-5" style="max-width: 800px;">
            <h5 class="text-uppercase text-primary">Text</h5>
            <h1 class="mb-0">text</h1>
        </div>
        <div class="event-carousel owl-carousel">
            <div class="event-item">
                <img src="img/events-1.jpg" class="img-fluid w-100" alt="Image">
                <div class="event-content p-4">
                    <h4 class="mb-4">How To Build A Cleaning Plan</h4>
                    <p class="mb-4">Lorem ipsum dolor sit amet consectur adip sed eiusmod amet consectur adip sed
                        eiusmod tempor.</p>
                </div>
            </div>
            <div class="event-item">
                <img src="img/events-2.jpg" class="img-fluid w-100" alt="Image">
                <div class="event-content p-4">
                    <h4 class="mb-4">How To Build A Cleaning Plan</h4>
                    <p class="mb-4">Lorem ipsum dolor sit amet consectur adip sed eiusmod amet consectur adip sed
                        eiusmod tempor.</p>
                </div>
            </div>
            <div class="event-item">
                <img src="img/events-3.jpg" class="img-fluid w-100" alt="Image">
                <div class="event-content p-4">
                    <h4 class="mb-4">How To Build A Cleaning Plan</h4>
                    <p class="mb-4">Lorem ipsum dolor sit amet consectur adip sed eiusmod amet consectur adip sed
                        eiusmod tempor.</p>
                </div>
            </div>
            <div class="event-item">
                <img src="img/events-4.jpg" class="img-fluid w-100" alt="Image">
                <div class="event-content p-4">
                    <h4 class="mb-4">How To Build A Cleaning Plan</h4>
                    <p class="mb-4">Lorem ipsum dolor sit amet consectur adip sed eiusmod amet consectur adip sed
                        eiusmod tempor.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Events End -->

<!-- Gallery Start -->
<div class="container-fluid gallery py-5 my-5 px-0">
    <div class="text-center mx-auto pb-5" style="max-width: 800px;">
        <h5 class="text-uppercase text-primary">Our work</h5>
        <h1 class="mb-4">gallery text</h1>
    </div>
    <div class="row g-0">
        <div class="col-lg-4">
            <div class="gallery-item">
                <img src="img/gallery-2.jpg" class="img-fluid w-100" alt="">
                <div class="search-icon">
                    <a href="img/gallery-2.jpg" data-lightbox="gallery-2" class="my-auto"><i
                            class="fas fa-search-plus btn-hover-color bg-white text-primary p-3"></i></a>
                </div>
                <div class="gallery-content">
                    <div class="gallery-inner pb-5">
                        <a href="#" class="h4 text-white">Beauty Of Life</a>
                        <a href="#" class="text-white">
                            <p class="mb-0">Gallery Name</p>
                        </a>
                    </div>
                </div>
            </div>
            <div class="gallery-item">
                <img src="img/gallery-3.jpg" class="img-fluid w-100" alt="">
                <div class="search-icon">
                    <a href="img/gallery-3.jpg" data-lightbox="gallery-3" class="my-auto"><i
                            class="fas fa-search-plus btn-hover-color bg-white text-primary p-3"></i></a>
                </div>
                <div class="gallery-content">
                    <div class="gallery-inner pb-5">
                        <a href="#" class="h4 text-white">Beauty Of Life</a>
                        <a href="#" class="text-white">
                            <p class="mb-0">Gallery Name</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="gallery-item">
                <img src="img/gallery-1.jpg" class="img-fluid w-100" alt="">
                <div class="search-icon">
                    <a href="img/gallery-1.jpg" data-lightbox="gallery-1" class="my-auto"><i
                            class="fas fa-search-plus btn-hover-color bg-white text-primary p-3"></i></a>
                </div>
                <div class="gallery-content">
                    <div class="gallery-inner pb-5">
                        <a href="#" class="h4 text-white">Beauty Of Life</a>
                        <a href="#" class="text-white">
                            <p class="mb-0">Gallery Name</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="gallery-item">
                <img src="img/gallery-4.jpg" class="img-fluid w-100" alt="">
                <div class="search-icon">
                    <a href="img/gallery-4.jpg" data-lightbox="gallery-4" class="my-auto"><i
                            class="fas fa-search-plus btn-hover-color bg-white text-primary p-3"></i></a>
                </div>
                <div class="gallery-content">
                    <div class="gallery-inner pb-5">
                        <a href="#" class="h4 text-white">Beauty Of Life</a>
                        <a href="#" class="text-white">
                            <p class="mb-0">Gallery Name</p>
                        </a>
                    </div>
                </div>
            </div>
            <div class="gallery-item">
                <img src="img/gallery-5.jpg" class="img-fluid w-100" alt="">
                <div class="search-icon">
                    <a href="img/gallery-5.jpg" data-lightbox="gallery-5" class="my-auto"><i
                            class="fas fa-search-plus btn-hover-color bg-white text-primary p-3"></i></a>
                </div>
                <div class="gallery-content">
                    <div class="gallery-inner pb-5">
                        <a href="#" class="h4 text-white">Beauty Of Life</a>
                        <a href="#" class="text-white">
                            <p class="mb-0">Gallery Name</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
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