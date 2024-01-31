</head>

<body>
    <!-- Floating Action Buttons Container -->
    <div class="custom-fab-container">
        <!-- Main Action Button -->
        <a href="javascript:void(0);" class="custom-fab-button custom-fab-main" id="customFabMain">
            <i class="fas fa-ellipsis-v"></i> <!-- Main FAB icon -->
        </a>

        <!-- Sub Action Buttons -->
        <ul class="custom-fab-options">
            <li>
                <a href="https://www.facebook.com" class="custom-fab-button custom-fab-facebook" target="_blank">
                    <i class="fab fa-facebook-f"></i>
                </a>
            </li>
            <li>
                <a href="https://www.instagram.com" class="custom-fab-button custom-fab-instagram" target="_blank">
                    <i class="fab fa-instagram"></i>
                </a>
            </li>
            <li>
                <a href="tel:+1234567890" class="custom-fab-button custom-fab-call">
                    <i class="fas fa-phone"></i>
                </a>
            </li>
            <li>
                <a href="https://wa.me/1234567890" class="custom-fab-button custom-fab-whatsapp" target="_blank">
                    <i class="fab fa-whatsapp"></i>
                </a>
            </li>
        </ul>
    </div>


    <!-- Spinner Start -->
    <div id="spinner"
        class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->


    <!-- Navbar start -->

    <div class="container-fluid fixed-top px-0">
        <div class="container px-0">
            <nav class="navbar navbar-light bg-light navbar-expand-xl header-nav">
                <a href="index.html" class="navbar-brand ms-3">
                    <h1 class="text-primary display-5">Shapath</h1>
                </a>
                <button class="navbar-toggler py-2 px-3 me-3" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars text-primary"></span>
                </button>
                <div class="collapse navbar-collapse bg-light" id="navbarCollapse">
                    <div class="navbar-nav ms-auto">
                        <a href="index.html" class="nav-item nav-link active">Home</a>
                        <div class="nav-item dropdown">
                            <a href="" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Aboout</a>
                            <div class="dropdown-menu m-0 bg-secondary rounded-0">
                                <a href="ourteam.html" class="dropdown-item">Our Team</a>
                                <a href="missionandvision.html" class="dropdown-item">Mission and Vision</a>
                                <a href="faq.html" class="dropdown-item">FAQ</a>
                            </div>
                        </div>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Projects</a>
                            <div class="dropdown-menu m-0 bg-secondary rounded-0">
                                <a href="" class="dropdown-item">Sristi</a>
                                <a href="" class="dropdown-item">Hope Canvas</a>
                                <a href="v" class="dropdown-item">Uddan</a>
                                <a href="" class="dropdown-item">Saraswati Scholarship</a>
                                <a href="" class="dropdown-item">Bastra Bondhu</a>
                                <a href="v" class="dropdown-item">Upohar</a>
                                <a href="" class="dropdown-item">Blanket Drive</a>
                            </div>
                        </div>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Testimonial</a>
                            <div class="dropdown-menu m-0 bg-secondary rounded-0">
                                <a href="our-volunteer.html" class="dropdown-item">Our Volunteer</a>
                                <a href="our-donor.html" class="dropdown-item">Our Donor</a>
                            </div>
                        </div>
                        <a href="gallery.html" class="nav-item nav-link">Gallery</a>
                        <a href="events.html" class="nav-item nav-link">Events</a>
                        <a href="blog.html" class="nav-item nav-link">Blog</a>
                        <a href="contact.html" class="nav-item nav-link">Contact</a>
                    </div>
                    <div class="d-flex align-items-center flex-nowrap pt-xl-0" style="margin-left: 15px;">
                        <a href="donation.html" class="btn-hover-bg btn btn-primary text-white py-2 px-4 me-3">Donate
                            Now</a>
                    </div>
                    <a class="navbar-close" aria-label="Close"></a>
                </div>

            </nav>
        </div>
    </div>
    <!-- Navbar End -->

    <div class="navbar-end-gap"></div>
    <div class="quote-video-wrapper">
        <div class="quote">
            <p>"The best way to find yourself is to lose yourself in the service of others."</p>
            <p class="author">- Mahatma Gandhi</p>
        </div>
        <div class="video">
            <iframe id="ytplayer" type="text/html" width="720" height="405"
                src="https://www.youtube.com/embed/ox3VFMNBXjA?autoplay=1&unmute=1&loop=1&playlist=ox3VFMNBXjA"
                frameborder="0" allow="autoplay; encrypted-media; loop" allowfullscreen></iframe>
        </div>
    </div>