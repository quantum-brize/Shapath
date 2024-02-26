</head>

<body>

    <div class="main-wrapper">

        <header class="header header-page">
            <div class="header-fixed">
                <nav class="navbar navbar-expand-lg header-nav scroll-sticky">
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
                                <img src="<?=base_url()?>assets/img/logo.svg" class="img-fluid" alt="Logo">
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
                            <!-- <ul class="main-nav">
                                <li class="has-submenu ">
                                    <a class="" href="">Home <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li class=""><a href="index.html">Home</a>
                                        </li>
                                        <li class=""><a href="index-two.html">Home Two</a></li>
                                        <li class=""><a href="index-three.html">Home Three</a></li>
                                        <li class=""><a href="index-four.html">Home Four</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu active">
                                    <a href="">Instructor <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li class="active">
                                            <a href="instructor-dashboard.html">Dashboard</a>
                                        </li>
                                        <li class="has-submenu ">
                                            <a href="instructor-list.html">Instructor</a>
                                            <ul class="submenu">
                                                <li class=""><a href="instructor-list.html">List</a></li>
                                                <li class="">
                                                    <a href="instructor-grid.html">Grid</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class=""><a href="instructor-course.html">My Course</a></li>
                                        <li class=""><a href="instructor-reviews.html">Reviews</a></li>
                                        <li class=""><a href="instructor-earnings.html">Earnings</a></li>
                                        <li class=""><a href="instructor-orders.html">Orders</a></li>
                                        <li class=""><a href="instructor-payouts.html">Payouts</a></li>
                                        <li class="">
                                            <a href="instructor-tickets.html">Support Ticket</a>
                                        </li>
                                        <li class="">
                                            <a href="instructor-edit-profile.html">Instructor Profile</a>
                                        </li>
                                        <li class=""><a href="instructor-security.html">Security</a></li>
                                        <li class=""><a href="instructor-social-profiles.html">Social Profiles</a></li>
                                        <li class=""><a href="instructor-notification.html">Notifications</a></li>
                                        <li class=""><a href="instructor-profile-privacy.html">Profile Privacy</a></li>
                                        <li class=""><a href="instructor-delete-profile.html">Delete Profile</a></li>
                                        <li class=""><a href="instructor-linked-account.html">Linked Accounts</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu ">
                                    <a href="">Student <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu first-submenu">
                                        <li class="has-submenu ">
                                            <a href="students-list.html">Student</a>
                                            <ul class="submenu">
                                                <li class=""><a href="students-list.html">List</a></li>
                                                <li class=""><a href="students-grid.html">Grid</a></li>
                                            </ul>
                                        </li>
                                        <li class=""><a href="setting-edit-profile.html">Student Profile</a></li>
                                        <li class=""><a href="setting-student-security.html">Security</a></li>
                                        <li class=""><a href="setting-student-social-profile.html">Social profile</a>
                                        </li>
                                        <li class=""><a href="setting-student-notification.html">Notification</a></li>
                                        <li class=""><a href="setting-student-privacy.html">Profile Privacy</a></li>
                                        <li class=""><a href="setting-student-accounts.html">Link Accounts</a></li>
                                        <li class=""><a href="setting-student-referral.html">Referal</a></li>
                                        <li class=""><a href="setting-student-subscription.html">Subscribtion</a></li>
                                        <li class=""><a href="setting-student-billing.html">Billing</a></li>
                                        <li class=""><a href="setting-student-payment.html">Payment</a></li>
                                        <li class="">
                                            <a href="setting-student-invoice.html">Invoice</a>
                                        </li>
                                        <li class="">
                                            <a href="setting-support-tickets.html">Support Tickets</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="has-submenu ">
                                    <a href="">Pages <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li class=""><a href="notifications.html">Notification</a></li>
                                        <li class=""><a href="pricing-plan.html">Pricing Plan</a></li>
                                        <li class=""><a href="wishlist.html">Wishlist</a></li>
                                        <li class="has-submenu ">
                                            <a href="course-list.html">Course</a>
                                            <ul class="submenu">
                                                <li class=""><a href="add-course.html">Add Course</a></li>
                                                <li class=""><a href="course-list.html">Course List</a></li>
                                                <li class=""><a href="course-grid.html">Course Grid</a></li>
                                                <li class="">
                                                    <a href="course-details.html">Course Details</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="has-submenu ">
                                            <a href="come-soon.html">Error</a>
                                            <ul class="submenu">
                                                <li class=""><a href="come-soon.html">Coming soon</a></li>
                                                <li class=""><a href="error-404.html">404</a></li>
                                                <li class=""><a href="error-500.html">500</a></li>
                                                <li class=""><a href="under-construction.html">Under Construction</a>
                                                </li>
                                            </ul>
                                        <li class=""><a href="faq.html">FAQ</a>
                                        </li>
                                        <li class=""><a href="support.html">Support</a></li>
                                        <li class=""><a href="job-category.html">Category</a></li>
                                        <li class=""><a href="cart.html">Cart</a></li>
                                        <li class=""><a href="checkout.html">Checkout</a></li>
                                        <li class=""><a href="login.html">Login</a></li>
                                        <li class=""><a href="register.html">Register</a></li>
                                        <li class=""><a href="forgot-password.html">Forgot Password</a></li>
                                    </ul>
                                </li>
                                <li class="has-submenu ">
                                    <a href="">Blog <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li class=""><a href="blog-list.html">Blog List</a></li>
                                        <li class=""><a href="blog-grid.html">Blog Grid</a></li>
                                        <li class=""><a href="blog-masonry.html">Blog Masonry</a></li>
                                        <li class=""><a href="blog-modern.html">Blog Modern</a></li>
                                        <li class=""><a href="blog-details.html">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li class="login-link">
                                    <a href="login.html">Login / Signup</a>
                                </li>
                            </ul> -->
                        </div>
                        <ul class="nav header-navbar-rht">
                            <li class="nav-item">
                                <a href="instructor-chat.html"><img src="<?=base_url()?>assets/img/icon/messages.svg" alt="img"></a>
                            </li>
                            <li class="nav-item cart-nav">
                                <a href="#" class="dropdown-toggle" data-bs-toggle="dropdown">
                                    <img src="<?=base_url()?>assets/img/icon/cart.svg" alt="img">
                                </a>
                                <div class="wishes-list dropdown-menu dropdown-menu-right">
                                    <div class="wish-header">
                                        <a href="#">View Cart</a>
                                        <a href="javascript:void(0)" class="float-end">Checkout</a>
                                    </div>
                                    <div class="wish-content">
                                        <ul>
                                            <li>
                                                <div class="media">
                                                    <div class="d-flex media-wide">
                                                        <div class="avatar">
                                                            <a href="course-details.html">
                                                                <img alt="" src="<?=base_url()?>assets/img/course/course-04.jpg">
                                                            </a>
                                                        </div>
                                                        <div class="media-body">
                                                            <h6><a href="course-details.html">Learn Angular...</a>
                                                            </h6>
                                                            <p>By Dave Franco</p>
                                                            <h5>$200 <span>$99.00</span></h5>
                                                        </div>
                                                    </div>
                                                    <div class="remove-btn">
                                                        <a href="#" class="btn">Remove</a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="media">
                                                    <div class="d-flex media-wide">
                                                        <div class="avatar">
                                                            <a href="course-details.html">
                                                                <img alt="" src="<?=base_url()?>assets/img/course/course-14.jpg">
                                                            </a>
                                                        </div>
                                                        <div class="media-body">
                                                            <h6><a href="course-details.html">Build Responsive
                                                                    Real...</a></h6>
                                                            <p>Jenis R.</p>
                                                            <h5>$200 <span>$99.00</span></h5>
                                                        </div>
                                                    </div>
                                                    <div class="remove-btn">
                                                        <a href="#" class="btn">Remove</a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="media">
                                                    <div class="d-flex media-wide">
                                                        <div class="avatar">
                                                            <a href="course-details.html">
                                                                <img alt="" src="<?=base_url()?>assets/img/course/course-15.jpg">
                                                            </a>
                                                        </div>
                                                        <div class="media-body">
                                                            <h6><a href="course-details.html">C# Developers Double
                                                                    ...</a></h6>
                                                            <p>Jesse Stevens</p>
                                                            <h5>$200 <span>$99.00</span></h5>
                                                        </div>
                                                    </div>
                                                    <div class="remove-btn">
                                                        <a href="#" class="btn">Remove</a>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <div class="total-item">
                                            <h6>Subtotal : $ 600</h6>
                                            <h5>Total : $ 600</h5>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item wish-nav">
                                <a href="#" class="dropdown-toggle" data-bs-toggle="dropdown">
                                    <img src="<?=base_url()?>assets/img/icon/wish.svg" alt="img">
                                </a>
                                <div class="wishes-list dropdown-menu dropdown-menu-right">
                                    <div class="wish-content">
                                        <ul>
                                            <li>
                                                <div class="media">
                                                    <div class="d-flex media-wide">
                                                        <div class="avatar">
                                                            <a href="course-details.html">
                                                                <img alt="" src="<?=base_url()?>assets/img/course/course-04.jpg">
                                                            </a>
                                                        </div>
                                                        <div class="media-body">
                                                            <h6><a href="course-details.html">Learn Angular...</a>
                                                            </h6>
                                                            <p>By Dave Franco</p>
                                                            <h5>$200 <span>$99.00</span></h5>
                                                            <div class="remove-btn">
                                                                <a href="#" class="btn">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="media">
                                                    <div class="d-flex media-wide">
                                                        <div class="avatar">
                                                            <a href="course-details.html">
                                                                <img alt="" src="<?=base_url()?>assets/img/course/course-14.jpg">
                                                            </a>
                                                        </div>
                                                        <div class="media-body">
                                                            <h6><a href="course-details.html">Build Responsive
                                                                    Real...</a></h6>
                                                            <p>Jenis R.</p>
                                                            <h5>$200 <span>$99.00</span></h5>
                                                            <div class="remove-btn">
                                                                <a href="#" class="btn">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="media">
                                                    <div class="d-flex media-wide">
                                                        <div class="avatar">
                                                            <a href="course-details.html">
                                                                <img alt="" src="<?=base_url()?>assets/img/course/course-15.jpg">
                                                            </a>
                                                        </div>
                                                        <div class="media-body">
                                                            <h6><a href="course-details.html">C# Developers Double
                                                                    ...</a></h6>
                                                            <p>Jesse Stevens</p>
                                                            <h5>$200 <span>$99.00</span></h5>
                                                            <div class="remove-btn">
                                                                <a href="#" class="btn">Remove</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item noti-nav">
                                <a href="#" class="dropdown-toggle" data-bs-toggle="dropdown">
                                    <img src="<?=base_url()?>assets/img/icon/notification.svg" alt="img">
                                </a>
                                <div class="notifications dropdown-menu dropdown-menu-right">
                                    <div class="topnav-dropdown-header">
                                        <span class="notification-title">Notifications
                                            <select>
                                                <option>All</option>
                                                <option>Unread</option>
                                            </select>
                                        </span>
                                        <a href="javascript:void(0)" class="clear-noti">Mark all as read <i
                                                class="fa-solid fa-circle-check"></i></a>
                                    </div>
                                    <div class="noti-content">
                                        <ul class="notification-list">
                                            <li class="notification-message">
                                                <div class="media d-flex">
                                                    <div>
                                                        <a href="notifications.html" class="avatar">
                                                            <img class="avatar-img" alt=""
                                                                src="<?=base_url()?>assets/img/user/user1.jpg">
                                                        </a>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6><a href="notifications.html">Lex Murphy requested
                                                                <span>access to</span> UNIX directory tree hierarchy
                                                            </a></h6>
                                                        <button class="btn btn-accept">Accept</button>
                                                        <button class="btn btn-reject">Reject</button>
                                                        <p>Today at 9:42 AM</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="notification-message">
                                                <div class="media d-flex">
                                                    <div>
                                                        <a href="notifications.html" class="avatar">
                                                            <img class="avatar-img" alt=""
                                                                src="<?=base_url()?>assets/img/user/user2.jpg">
                                                        </a>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6><a href="notifications.html">Ray Arnold left 6
                                                                <span>comments
                                                                    on</span> Isla Nublar SOC2 compliance report</a>
                                                        </h6>
                                                        <p>Yesterday at 11:42 PM</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="notification-message">
                                                <div class="media d-flex">
                                                    <div>
                                                        <a href="notifications.html" class="avatar">
                                                            <img class="avatar-img" alt=""
                                                                src="<?=base_url()?>assets/img/user/user3.jpg">
                                                        </a>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6><a href="notifications.html">Dennis Nedry <span>commented
                                                                    on</span> Isla Nublar SOC2 compliance report</a>
                                                        </h6>
                                                        <p class="noti-details">“Oh, I finished de-bugging the phones,
                                                            but the
                                                            system's compiling for eighteen minutes, or twenty. So, some
                                                            minor
                                                            systems may go on and off for a while.”</p>
                                                        <p>Yesterday at 5:42 PM</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="notification-message">
                                                <div class="media d-flex">
                                                    <div>
                                                        <a href="notifications.html" class="avatar">
                                                            <img class="avatar-img" alt=""
                                                                src="<?=base_url()?>assets/img/user/user1.jpg">
                                                        </a>
                                                    </div>
                                                    <div class="media-body">
                                                        <h6><a href="notifications.html">John Hammond
                                                                <span>created</span> Isla Nublar SOC2 compliance report
                                                            </a>
                                                        </h6>
                                                        <p>Last Wednesday at 11:15 AM</p>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="nav-item user-nav">
                                <a href="#" class="dropdown-toggle" data-bs-toggle="dropdown">
                                    <span class="user-img">
                                        <img src="<?=base_url()?>assets/img/instructor/profile-avatar.jpg" alt="">
                                        <span class="status online"></span>
                                    </span>
                                </a>
                                <div class="users dropdown-menu dropdown-menu-right" data-popper-placement="bottom-end">
                                    <div class="user-header">
                                        <div class="avatar avatar-sm">
                                            <img src="<?=base_url()?>assets/img/instructor/profile-avatar.jpg" alt="User Image"
                                                class="avatar-img rounded-circle">
                                        </div>
                                        <div class="user-text">
                                            <h6>Jenny Wilson</h6>
                                            <p class="text-muted mb-0">Instructor</p>
                                        </div>
                                    </div>
                                    <a class="dropdown-item" href="instructor-dashboard.html"><i
                                            class="feather-home me-1"></i> Dashboard</a>
                                    <a class="dropdown-item" href="instructor-edit-profile.html"><i
                                            class="feather-star me-1"></i> Edit Profile</a>
                                    <div class="dropdown-item night-mode">
                                        <span><i class="feather-moon me-1"></i> Night Mode </span>
                                        <div class="form-check form-switch check-on m-0">
                                            <input class="form-check-input" type="checkbox" id="night-mode">
                                        </div>
                                    </div>
                                    <a class="dropdown-item" href="index.html"><i class="feather-log-out me-1"></i>
                                        Logout</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </header>

        <div class="page-content instructor-page-content">
            <div class="container">
                <div class="row">

                    <div class="col-xl-3 col-lg-4 col-md-12 theiaStickySidebar">
                        <div class="settings-widget dash-profile">
                            <div class="settings-menu p-0">
                                <div class="profile-bg">
                                    <h5>Beginner</h5>
                                    <img src="<?=base_url()?>assets/img/instructor-profile-bg.jpg" alt="">
                                    <div class="profile-img">
                                        <a href="instructor-profile.html"><img src="<?=base_url()?>assets/img/user/user15.jpg"
                                                alt=""></a>
                                    </div>
                                </div>
                                <div class="profile-group">
                                    <div class="profile-name text-center">
                                        <h4><a href="instructor-profile.html">Jenny Wilson</a></h4>
                                        <p>Instructor</p>
                                    </div>
                                    <div class="go-dashboard text-center">
                                        <a href="add-course.html" class="btn btn-primary">Create New Course</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="settings-widget account-settings">
                            <div class="settings-menu">
                                <h3>DASHBOARD</h3>
                                <ul>
                                    <li class="nav-item ">
                                        <a class="active" href="instructor-dashboard.html" class="nav-link">
                                            <i class="feather-home"></i> My Dashboard
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="" href="instructor-course.html" class="nav-link">
                                            <i class="feather-book"></i> My Courses
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="" href="instructor-reviews.html" class="nav-link">
                                            <i class="feather-star"></i> Reviews
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="" href="instructor-earnings.html" class="nav-link">
                                            <i class="feather-pie-chart"></i> Earnings
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="" href="instructor-orders.html" class="nav-link">
                                            <i class="feather-shopping-bag"></i> Orders
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="" href="instructor-student-grid.html" class="nav-link">
                                            <i class="feather-users"></i> Students
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="" href="instructor-payouts.html" class="nav-link">
                                            <i class="feather-dollar-sign"></i> Payouts
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="" href="instructor-tickets.html" class="nav-link">
                                            <i class="feather-server"></i> Support Tickets
                                        </a>
                                    </li>
                                </ul>
                                <div class="instructor-title">
                                    <h3>ACCOUNT SETTINGS</h3>
                                </div>
                                <ul>
                                    <li class="nav-item">
                                        <a class="" href="instructor-edit-profile.html" class="nav-link ">
                                            <i class="feather-settings"></i> Edit Profile
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="" href="instructor-security.html" class="nav-link">
                                            <i class="feather-user"></i> Security
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="" href="instructor-social-profiles.html" class="nav-link">
                                            <i class="feather-refresh-cw"></i> Social Profiles
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="" href="instructor-notification.html" class="nav-link">
                                            <i class="feather-bell"></i> Notifications
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="" href="instructor-profile-privacy.html" class="nav-link">
                                            <i class="feather-lock"></i> Profile Privacy
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="" href="instructor-delete-profile.html" class="nav-link">
                                            <i class="feather-trash-2"></i> Delete Profile
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="" href="instructor-linked-account.html" class="nav-link">
                                            <i class="feather-user"></i> Linked Accounts
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="" href="index.html" class="nav-link">
                                            <i class="feather-power"></i> Sign Out
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
