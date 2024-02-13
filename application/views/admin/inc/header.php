</head>
<?php

?>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Shapath</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="index.html">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span>
                </a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Content
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link <?= isset($sidebar['pages']) ? '' : 'collapsed' ?>" href="#" data-toggle="collapse"
                    data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-book"></i>
                    <span>Pages</span>
                </a>
                <div id="collapseTwo" class="collapse <?= isset($sidebar['pages']) ? 'show' : '' ?>"
                    aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item sidebar_item <?= isset($sidebar['home']) ? 'sidebar_active' : '' ?>"
                            href="<?= base_url('/admin/pages/home') ?>">
                            <i class="fas fa-fw fa-home mr-1"></i>
                            Home
                        </a>
                        <a class="collapse-item sidebar_item <?= isset($sidebar['projects']) ? 'sidebar_active' : '' ?>"
                            href="<?= base_url('/admin/pages/projects') ?>">
                            <i class="fas fa-fw fa-project-diagram mr-1" style="font-size:10px;"></i>
                            Projects
                        </a>
                        <a class="collapse-item sidebar_item <?= isset($sidebar['donors']) ? 'sidebar_active' : '' ?>"
                            href="<?= base_url('/admin/pages/donors') ?>">
                            <i class="fas fa-fw fa-project-diagram mr-1" style="font-size:10px;"></i>
                            Donors
                        </a>
                        <a class="collapse-item sidebar_item <?= isset($sidebar['volunteers']) ? 'sidebar_active' : '' ?>"
                            href="<?= base_url('/admin/pages/volunteers') ?>">
                            <i class="fas fa-fw fa-project-diagram mr-1" style="font-size:10px;"></i>
                            Volunteers
                        </a>
                        <a class="collapse-item sidebar_item <?= isset($sidebar['our_team']) ? 'sidebar_active' : '' ?>"
                            href="<?= base_url('/admin/pages/our/team') ?>">
                            <i class="fas fa-fw fa-project-diagram mr-1" style="font-size:10px;"></i>
                            Our Team
                        </a>
                    </div>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link collapsed" href="<?= base_url('admin/gallery') ?>">
                    <i class="fas fa-image"></i>
                    <span>Gallery</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link collapsed" href="<?= base_url('admin/causes') ?>">
                    <i class="fas fa-star"></i>
                    <span>Causes</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link collapsed" href="<?= base_url('admin/events') ?>">
                    <i class="fas fa-calendar"></i>
                    <span>Events</span>
                </a>
            </li>


            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>
        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>
                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">



                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">
                                    <?= $this->session->userdata(SES_TYPE) == 'admin' ? $this->session->userdata(SES_ADMIN_NAME) : $this->session->userdata(SES_SUB_ADMIN_NAME) ?>
                                </span>
                                <img class="img-profile rounded-circle"
                                    src="<?= base_url('assets_admin/') ?>img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->