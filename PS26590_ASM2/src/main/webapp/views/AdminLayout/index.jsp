<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
  <link href="/views/AdminLayout/assets/img/favicon.png" rel="icon">
  <link href="/views/AdminLayout/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/views/AdminLayout/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/views/AdminLayout/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/views/AdminLayout/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/views/AdminLayout/assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="/views/AdminLayout/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="/views/AdminLayout/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="/views/AdminLayout/assets/vendor/simple-datatables/style.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/js-cookie/3.0.1/js.cookie.min.js"></script>
  <!-- Template Main CSS File -->
  <link href="/views/AdminLayout/assets/css/style.css" rel="stylesheet">
<title>Restaurant Manager</title>
</head>
<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="/admin/home" class="logo d-flex align-items-center">
        <img src="assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">Restaurant Manager</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="/formuserhome">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->

        <li class="nav-item dropdown">

          <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
            <i class="bi bi-bell"></i>
            <span class="badge bg-primary badge-number">4</span>
          </a><!-- End Notification Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
            <li class="dropdown-header">
              You have 4 new notifications
              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-exclamation-circle text-warning"></i>
              <div>
                <h4>Lorem Ipsum</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>30 min. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-x-circle text-danger"></i>
              <div>
                <h4>Atque rerum nesciunt</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>1 hr. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-check-circle text-success"></i>
              <div>
                <h4>Sit rerum fuga</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>2 hrs. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-info-circle text-primary"></i>
              <div>
                <h4>Dicta reprehenderit</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>4 hrs. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>
            <li class="dropdown-footer">
              <a href="#">Show all notifications</a>
            </li>

          </ul><!-- End Notification Dropdown Items -->

        </li><!-- End Notification Nav -->

        <li class="nav-item dropdown">

          <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
            <i class="bi bi-chat-left-text"></i>
            <span class="badge bg-success badge-number">3</span>
          </a><!-- End Messages Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
            <li class="dropdown-header">
              You have 3 new messages
              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="#">
                <img src="/views/AdminLayout/assets/img/messages-1.jpg" alt="" class="rounded-circle">
                <div>
                  <h4>Maria Hudson</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>4 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="#">
                <img src="/views/AdminLayout/assets/img/messages-2.jpg" alt="" class="rounded-circle">
                <div>
                  <h4>Anna Nelson</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>6 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="#">
                <img src="/views/AdminLayout/assets/img/messages-3.jpg" alt="" class="rounded-circle">
                <div>
                  <h4>David Muldon</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>8 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="dropdown-footer">
              <a href="#">Show all messages</a>
            </li>

          </ul><!-- End Messages Dropdown Items -->

        </li><!-- End Messages Nav -->

        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="/views/AdminLayout/assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">${staff.firstname} ${staff.lastname}</span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>${staff.firstname} ${staff.lastname}</h6>
              <span>Administrator</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="/admin/adminprofile/${staff.id}">
                <i class="bi bi-person"></i>
                <span>My Profile                                                                                                                                  </span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="/admin/setting">
                <i class="bi bi-gear"></i>
                <span>Account Settings</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="/admin/help">
                <i class="bi bi-question-circle"></i>
                <span>Need Help?</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="/admin/signout">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link " href="/admin/home">
          <i class="bi bi-grid"></i>
          <span>Trang chủ</span>
        </a>
      </li><!-- End Dashboard Nav -->

    

     
  
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-bar-chart"></i><span>Các biểu đồ thống kê</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="/admin/chart">
              <i class="bi bi-circle"></i><span>Biểu đồ 1</span>
            </a>
          </li>
          <li>
            <a href="/admin/chart/charts-apexcharts">
              <i class="bi bi-circle"></i><span>Biểu đồ 2</span>
            </a>
          </li>
          <li>
            <a href="/admin/chart/charts-echarts">
              <i class="bi bi-circle"></i><span>Biểu đồ 3</span>
            </a>
          </li>
        </ul>
      </li><!-- End Charts Nav -->

   

      <li class="nav-heading">Pages</li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="/admin/adminprofile/${staff.id}">
          <i class="bi bi-person"></i>
          <span>Thông tin khách hàng

          </span>
        </a>
      </li><!-- End Profile Page Nav -->

    <li class="nav-item">
        <a class="nav-link collapsed" href="/admin/menu">
          <i class="bi bi-card-list"></i>
          <span>Thực đơn</span>
        </a>
      </li><!-- End Register Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="/admin/contact">
          <i class="bi bi-envelope"></i>
          <span>Liên hệ</span>
        </a>
      </li><!-- End Contact Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="/admin/tblayout">
          <i class="bi bi-table"></i>
          <span>Bàn</span>
        </a>
      </li><!-- End Register Page Nav -->
		<li class="nav-item">
	        <a class="nav-link collapsed" data-bs-target="#charts-nav1" data-bs-toggle="collapse" href="#">
	          <i class="bi bi-layout-text-window-reverse"></i><span>Bảng Nhân Viên</span><i class="bi bi-chevron-down ms-auto"></i>
	        </a>
	        <ul id="charts-nav1" class="nav-content collapse " data-bs-parent="#sidebar-nav">
	          <li>
	            <a href="/admin/staff">
	              <i class="bi bi-circle"></i><span>Table Nhân viên</span>
	            </a>
	          </li>
	          <li>
	            <a href="/admin/register">
	              <i class="bi bi-circle"></i><span>Thêm Nhân Viên</span>
	            </a>
	          </li>
	        </ul>
       </li><!-- End Charts Nav -->
		
      <li class="nav-item">
        <a class="nav-link collapsed" href="/admin/error">
          <i class="bi bi-dash-circle"></i>
          <span>Error 404</span>
        </a>
      </li><!-- End Error 404 Page Nav -->

      

    </ul>

  </aside><!-- End Sidebar-->

  <main id="main" class="main">

   <jsp:include page="${layout}"/>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      Not under any circumstances. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      Designed by <a href="https://www.facebook.com/profile.php?id=100061128584872">Pham Minh Duc</a>
    </div>
  </footer>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="/views/AdminLayout/assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="/views/AdminLayout/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/views/AdminLayout/assets/vendor/chart.js/chart.umd.js"></script>
  <script src="/views/AdminLayout/assets/vendor/echarts/echarts.min.js"></script>
  <script src="/views/AdminLayout/assets/vendor/quill/quill.min.js"></script>
  <script src="/views/AdminLayout/assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="/views/AdminLayout/assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="/views/AdminLayout/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="/views/AdminLayout/assets/js/main.js"></script>

</body>
</html>