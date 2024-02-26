</head>

<body>

    <div class="main-wrapper">

        <header class="header">
            <div class="header-fixed">
                <nav class="navbar navbar-expand-lg header-nav scroll-sticky add-header-bg">
                    <div class="container">
                        <div class="navbar-header">
                            <a id="mobile_btn" href="javascript:void(0);">
                                <span class="bar-icon">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </span>
                            </a>
                            <a href="https://dreamslms.dreamstechnologies.com/laravel/public" class="navbar-brand logo">
                                <img src="<?php echo base_url()?>assets/img/logo.svg" class="img-fluid" alt="Logo">
                            </a>
                        </div>
                        <div class="main-menu-wrapper">
                            <div class="menu-header">
                                <a href="https://dreamslms.dreamstechnologies.com/laravel/public" class="menu-logo">
                                    <img src="<?php echo base_url()?>assets/img/logo.svg" class="img-fluid" alt="Logo">
                                </a>
                                <a id="menu_close" class="menu-close" href="javascript:void(0);">
                                    <i class="fas fa-times"></i>
                                </a>
                            </div>
                            <ul class="main-nav">
                                <li class="has-submenu <?= isset($home) ? 'active' : '' ?>">
                                    <a class="" href="<?php echo base_url('home')?>">Home</a>
                                </li>
                                <li class="has-submenu <?= isset($about) ? 'active' : '' ?>">
                                    <a href="<?php echo base_url('about-us')?>">About Us </a>
                                </li>
                                <li class="has-submenu <?= isset($home) ? 'active' : '' ?>">
                                    <a href="<?php echo base_url('franchise-list')?>">Franchise List </a>
                                </li>
                                <li class="has-submenu <?= isset($online_registration) ? 'active' : '' ?>">
                                    <a href="<?php echo base_url('online-registration')?>">Franchise Registration </a>
                                </li>
                                <li class="has-submenu <?= isset($student_admission) ? 'active' : '' ?>">
                                    <a href="<?php echo base_url('student-admission')?>">Student Admission </a>
                                </li>
                                <li class="has-submenu <?= isset($franchise_list) ? 'active' : '' ?>">
                                    <a href="<?php echo base_url('contact')?>">Contact </a>
                                </li>






                                
                                <li class="login-link">
                                    <a href="login.html">Login / Signup</a>
                                </li>
                            </ul>
                        </div>
                        <ul class="nav header-navbar-rht">
                            <li class="nav-item">
                                <a class="nav-link header-sign" href="login.html">Signin</a>
                            </li>
                        </ul>
                    </div>
                </nav>
                <!-- <div class="breadcrumb-bar">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-12">
                            <div class="breadcrumb-list">
                                <nav aria-label="breadcrumb" class="page-breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                        <li class="breadcrumb-item" aria-current="page">Pages</li>
                                        <li class="breadcrumb-item" aria-current="page">Instructors List</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->
            </div>
            
        </header>