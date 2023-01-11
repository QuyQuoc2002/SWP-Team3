<%-- 
    Document   : admin
    Created on : Jan 12, 2023, 2:19:59 AM
    Author     : DELL
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Motel</title>
   <link rel="stylesheet" href="assets/bootstrap-5.2.3-dist/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

    <link rel="stylesheet" href="assets/css/common.css">
    <link rel="stylesheet" href="assets/css/admin.css">
    <link rel="stylesheet" href="assets/css/switch-toggle-btn.css">
</head>

<body>

    <div class="container-fluid position-relative d-flex p-0">
        <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3">
            <nav class="navbar navbar-dark">
                <a href="menu.html" class="navbar-brand ms-4 mb-3 text-primary-cus" style="font-size: 32px;">
                    <h3><i class="fa-solid fa-user-pen"></i>Apaman</h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative">
                        <img class="rounded-circle" src="assets/images/1.png" alt="" style="width: 40px; height: 40px;">
                    </div>
                    <div class="ms-2 text-white">
                        <h6 class="mb-0">Quy Quoc</h6>
                        <span>Admin</span>
                    </div>
                </div>
                <div class="navbar-nav w-100">
                    <a href="admin" class="nav-item nav-link active"><i class="fa-solid fa-street-view me-2"></i>Host Acc</a>
                    <a href="sign-out" class="nav-item nav-link"><i class="fa-solid fa-right-from-bracket me-2"></i>Sign Out</a>
                </div>
            </nav>
        </div>
        <!-- Sidebar End -->
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-secondary-cus navbar-dark sticky-top px-4 py-2">
                <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-user-edit"></i></h2>
                </a>
                <a class="sidebar-toggler flex-shrink-0" style="text-decoration: none;">
                    <i class="fa fa-search text-primary-cus"></i>
                </a>
                <form class="d-none d-md-flex ms-4">
                    <input class="form-control bg-dark-cus border-0 text-white" type="search" placeholder="Search">
                </form>
                <div class="navbar-nav align-items-center ms-auto">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle me-2 text-light-cus" data-bs-toggle="dropdown">
                            <i class="fa fa-envelope me-lg-2"></i>
                            <span class="d-none d-lg-inline-flex">Message</span>
                        </a>
                        <div
                            class="dropdown-menu dropdown-menu-end bg-secondary-cus border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="assets/images/1.png" alt=""
                                        style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="assets/images/1.png" alt=""
                                        style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="assets/images/1.png" alt=""
                                        style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item text-center">See all message</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle me-2 text-light-cus" data-bs-toggle="dropdown">
                            <i class="fa fa-bell me-lg-2"></i>
                            <span class="d-none d-lg-inline-flex">Notificatin</span>
                        </a>
                        <div
                            class="dropdown-menu dropdown-menu-end bg-secondary-cus border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">Profile updated</h6>
                                <small>15 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">New user added</h6>
                                <small>15 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">Password changed</h6>
                                <small>15 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item text-center">See all notifications</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown me-2">
                        <a href="#" class="nav-link dropdown-toggle text-light-cus" data-bs-toggle="dropdown">
                            <img class="rounded-circle me-lg-2" src="assets/images/1.png" alt=""
                                style="width: 40px; height: 40px;">
                            <span class="d-none d-lg-inline-flex">John Doe</span>
                        </a>
                        <div
                            class="dropdown-menu dropdown-menu-end bg-secondary-cus border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">My Profile</a>
                            <a href="#" class="dropdown-item">Settings</a>
                            <a href="#" class="dropdown-item">Log Out</a>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- Navbar End -->
            <div id="staff" class="container-fluid pt-4 px-4">
                <h2 class="text-wheat">Add One Account For Host Apartment</h2>
                <div class="row">
                    <div class="col-7">
                        <div class="row panel-form mx-0">
                            <div class="col-6 form-group mb-3">
                                <fieldset>
                                    <legend>Username</legend>
                                    <input type="text" class="form-control" value="Quocpq">
                                </fieldset>
                            </div>
                            <div class="col-6 form-group mb-3">
                                <fieldset>
                                    <legend>Password</legend>
                                    <input type="text" class="form-control" value="Password">
                                </fieldset>
                            </div>
                            <div class="col-6 form-group mb-3">
                                <fieldset>
                                    <legend>Name</legend>
                                    <input type="text" class="form-control" value="Name">
                                </fieldset>
                            </div>
                            <div class="col-6 form-group mb-3">
                                <fieldset>
                                    <legend>Phone</legend>
                                    <input type="text" class="form-control" value="Phone">
                                </fieldset>
                            </div>
                            <div class="col-6 form-group mb-3">
                                <fieldset>
                                    <legend>City</legend>
                                    <Select>
                                        <option value="">Hà Nội</option>
                                        <option value="">Hà Giang</option>
                                    </Select>
                                </fieldset>
                            </div>
                            <div class="col-6 form-group mb-3">
                                <fieldset>
                                    <legend>District</legend>
                                    <Select>
                                        <option value="">Hola</option>
                                        <option value="">Sota</option>
                                    </Select>
                                </fieldset>
                            </div>
                            <div class="col-6 mb-3 d-flex">
                                <label class="switch">
                                    <input type="checkbox">
                                    <span class="slider round"></span>
                                </label>
                                <h5 class="text-white ms-3" style="line-height: 34px;">Active Account</h5>
                            </div>
                            <div class="col-6 mb-3 d-flex">
                                <label class="switch">
                                    <input type="checkbox">
                                    <span class="slider round"></span>
                                </label>
                                <h5 class="text-white ms-3" style="line-height: 34px;">Active Apartment</h5>
                            </div>
                            <div class="btn btn-primary">Save</div>
                        </div>
                    </div>
                    <div class="col-5">
                        <div id="map" class="w-100 h-100">
                            <iframe class="w-100 h-100"
                                src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d930.8874854112767!2d105.8047464!3d21.0506866!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1673346992248!5m2!1svi!2s"
                                 style="border:0; border-radius: 12px;" allowfullscreen="" loading="lazy"
                                referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                    </div>
                </div>
                <hr class="mb-5" style="color: aqua;">
                <h2 class="text-wheat">Account Host Apartment</h2>
                <div class="row">
                    <div class="col-7">
                        <div class="row panel-form mx-0">
                            <div class="col-6 form-group mb-3">
                                <fieldset>
                                    <legend>Username</legend>
                                    <input type="text" class="form-control" value="Quocpq">
                                </fieldset>
                            </div>
                            <div class="col-6 form-group mb-3">
                                <fieldset>
                                    <legend>Password</legend>
                                    <input type="text" class="form-control" value="Password">
                                </fieldset>
                            </div>
                            <div class="col-6 form-group mb-3">
                                <fieldset>
                                    <legend>Name</legend>
                                    <input type="text" class="form-control" value="Name">
                                </fieldset>
                            </div>
                            <div class="col-6 form-group mb-3">
                                <fieldset>
                                    <legend>Phone</legend>
                                    <input type="text" class="form-control" value="Phone">
                                </fieldset>
                            </div>
                            <div class="col-6 form-group mb-3">
                                <fieldset>
                                    <legend>City</legend>
                                    <Select>
                                        <option value="">Hà Nội</option>
                                        <option value="">Hà Giang</option>
                                    </Select>
                                </fieldset>
                            </div>
                            <div class="col-6 form-group mb-3">
                                <fieldset>
                                    <legend>District</legend>
                                    <Select>
                                        <option value="">Hola</option>
                                        <option value="">Sota</option>
                                    </Select>
                                </fieldset>
                            </div>
                            <div class="col-6 form-group mb-3">
                                <a href="homepage.html" class="btn btn-secondary w-100"
                                    style="border-radius: 12px; color: bisque;">Homepage</a>
                            </div>
                            <div class="col-6 form-group mb-3">
                                <a href="menu.html" class="btn btn-secondary w-100"
                                    style="border-radius: 12px; color: bisque;">Dashboard</a>
                            </div>
                            <div class="col-6 mb-3 d-flex">
                                <label class="switch">
                                    <input type="checkbox" checked>
                                    <span class="slider round"></span>
                                </label>
                                <h5 class="text-white ms-3" style="line-height: 34px;">Active Account</h5>
                            </div>
                            <div class="col-6 mb-3 d-flex">
                                <label class="switch">
                                    <input type="checkbox" checked>
                                    <span class="slider round"></span>
                                </label>
                                <h5 class="text-white ms-3" style="line-height: 34px;">Active Apartment</h5>
                            </div>
                            <div class="col-6 mb-3 d-flex">
                                <div class="btn btn-primary w-100">Save</div>
                            </div>
                            <div class="col-6 mb-3 d-flex">
                                <div class="btn btn-danger w-100">Delete</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-5">
                        <div id="map" class="w-100 h-100">
                            <iframe class="w-100 h-100"
                                src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d930.8874854112767!2d105.8047464!3d21.0506866!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1673346992248!5m2!1svi!2s"
                                 style="border:0; border-radius: 12px;" allowfullscreen="" loading="lazy"
                                referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="assets/js/bootstrap.bundle.js"></script>

</html>