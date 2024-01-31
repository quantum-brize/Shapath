<body id="page-top">
    <style>
        li{
            cursor: pointer;
        }
        
    </style>
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?= base_url() ?>Admin/Admin/dashboard">
                <div class="sidebar-brand-text mx-3">TIMES OF INDIA Admin Panel</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <li class="nav-item">
                <a class="nav-link" href="<?= base_url() ?>Admin/Admin/dashboard" style="background-color:<?=@$dashboard ? '#f8f9fc': ''?>">
                    <i class="fas fa-fw fa-tachometer-alt" style="color:<?=@$dashboard ? '#224abe': ''?>"></i>
                    <span style="color:<?=@$dashboard ? '#224abe': ''?>">Dashboard</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="<?= base_url() ?>Admin/Coupons" style="background-color:<?=@$coupons ? '#f8f9fc': ''?>">
                    <i class="fa fa-gift" style="color:<?=@$coupons ? '#224abe': ''?>"></i>
                    <span style="color:<?=@$coupons ? '#224abe': ''?>">Coupons</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="<?= base_url() ?>Admin/Papers" style="background-color:<?=@$Papers ? '#f8f9fc': ''?>">
                    <i class="fas fa-file-alt" style="color:<?=@$Papers ? '#224abe': ''?>"></i>
                    <span style="color:<?=@$Papers ? '#224abe': ''?>">Papers</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="<?= base_url() ?>Admin/Reports" style="background-color:<?=@$reports ? '#f8f9fc': ''?>">
                    <i class="fas fa-regular fa-flag"  style="color:<?=@$reports ? '#224abe': ''?>"></i>
                    <span style="color:<?=@$reports ? '#224abe': ''?>">reports</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="<?= base_url() ?>admin/distributor/add" style="background-color:<?=@$distributorAdd ? '#f8f9fc': ''?>">
                    <i class="fas fa-solid fa-plus"  style="color:<?=@$distributorAdd ? '#224abe': ''?>"></i>
                    <span style="color:<?=@$distributorAdd ? '#224abe': ''?>">Add distributor</span>
                </a>
            </li>


            <li class="nav-item">
                <a class="nav-link" href="<?= base_url() ?>Admin/Distributors" style="background-color:<?=@$distributors ? '#f8f9fc': ''?>">
                    <i class="fa fa-truck" style="color:<?=@$distributors ? '#224abe': ''?>"></i>
                    <span style="color:<?=@$distributors ? '#224abe': ''?>">Distributor</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="<?= base_url() ?>Admin/Vendor" style="background-color:<?=@$vendor ? '#f8f9fc': ''?>">
                    <i class="fas fa-dolly"  style="color:<?=@$vendor ? '#224abe': ''?>"></i>
                    <span style="color:<?=@$vendor ? '#224abe': ''?>">Vendor</span>
                </a>
            </li>

          





            <!-- <li class="nav-item">
                <a class="nav-link" href="<?= base_url() ?>Admin/Email" style="background-color:<?=@$email ? '#f8f9fc': ''?>">
                    <i class="fas fa-envelope"  style="color:<?=@$email ? '#224abe': ''?>"></i>
                    <span style="color:<?=@$email ? '#224abe': ''?>">Mail Settings</span>
                </a>
            </li> -->
            





            






     



            <!-- Divider -->
            <hr class="sidebar-divider">



            <!-- Heading -->
            <!-- <div class="sidebar-heading">
                Interface
            </div> -->

            <!-- Nav Item - Pages Collapse Menu -->
            <!-- <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Components</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Components:</h6>
                        <a class="collapse-item" href="buttons.html">Buttons</a>
                        <a class="collapse-item" href="cards.html">Cards</a>
                    </div>
                </div>
            </li> -->

            <!-- Nav Item - Utilities Collapse Menu -->
            <!--  <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>Utilities</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Utilities:</h6>
                        <a class="collapse-item" href="utilities-color.html">Colors</a>
                        <a class="collapse-item" href="utilities-border.html">Borders</a>
                        <a class="collapse-item" href="utilities-animation.html">Animations</a>
                        <a class="collapse-item" href="utilities-other.html">Other</a>
                    </div>
                </div>
            </li> -->

            <!-- Divider -->
            <!-- <hr class="sidebar-divider"> -->

            <!-- Heading -->
            <!--  <div class="sidebar-heading">
                Addons
            </div> -->

            <!-- Nav Item - Pages Collapse Menu -->
            <!-- <li class="nav-item active">
                <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true"
                    aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Pages</span>
                </a>
                <div id="collapsePages" class="collapse show" aria-labelledby="headingPages"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Login Screens:</h6>
                        <a class="collapse-item" href="login.html">Login</a>
                        <a class="collapse-item" href="register.html">Register</a>
                        <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
                        <div class="collapse-divider"></div>
                        <h6 class="collapse-header">Other Pages:</h6>
                        <a class="collapse-item" href="404.html">404 Page</a>
                        <a class="collapse-item active" href="blank.html">Blank Page</a>
                    </div>
                </div>
            </li> -->

            <!-- Nav Item - Charts -->
            <!-- <li class="nav-item">
                <a class="nav-link" href="charts.html">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Charts</span></a>
            </li>
 -->
            <!-- Nav Item - Tables -->
            <!-- <li class="nav-item">
                <a class="nav-link" href="tables.html">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Tables</span></a>
            </li> -->

            <!-- Divider -->
            <!-- <hr class="sidebar-divider d-none d-md-block"> -->

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->