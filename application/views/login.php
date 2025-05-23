<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Apps - Login</title>

    <!-- Custom fonts for this template-->
    <link href="<?= site_url('') ?>assets/template/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="<?= base_url() ?>assets/font-google.css"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<?= site_url('') ?>assets/template/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">
    <!-- <div class="container">
        <div class="flash-data" data-flashdata="<?php echo $this->session->flashdata('flash') ?>"></div>
    </div> -->

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center mt-5 mb-3">

            <div class="col-xl-5 col-lg-6 col-md-9" style="margin-top: 40px">

                <div class="card o-hidden border-0 shadow-lg my-5">

                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">

                            <!-- <div class="col-lg-6 d-none d-lg-block bg-login-image"></div> -->
                            <div class="col-lg-12">
                                <div class="p-5">
                                    <div class="text-center" style="margin-bottom: 7px; margin-top: 0px">
                                        <!-- <img src="<?= base_url() ?>assets/image/login.png" alt="" width="307" height="112" srcset=""> -->
                                         <h1><strong>Your Logo</strong></h1>
                                    </div>
                                    <form class="user" method="POST" action="<?= base_url('Login/login_form') ?>">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user" id="username" name="username" aria-describedby="emailHelp" placeholder="Username" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user" id="password" name="password" placeholder="Password">
                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input onclick="showPassword()" type="checkbox" class="custom-control-input" id="customCheck">
                                                <label class="custom-control-label" for="customCheck">Show Password</label>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary btn-user btn-block">
                                            Login
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="<?= site_url('') ?>assets/template/vendor/jquery/jquery.min.js"></script>
    <script src="<?= site_url('') ?>assets/template/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="<?= site_url('') ?>assets/template/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<?= site_url('') ?>assets/template/js/sb-admin-2.min.js"></script>

    <!-- Sweet Alert -->
    <script src="<?= site_url('') ?>assets/js/sweetalert2.all.min.js"></script>

    <!-- Alert -->
    <script src="<?= site_url('') ?>assets/js/alert.js"></script>

    <script>
        function showPassword() {
            var x = document.getElementById("password");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }
    </script>

</body>

</html>