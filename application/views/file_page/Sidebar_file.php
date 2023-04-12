<!doctype html>
<html lang="en" class="semi-dark">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- loader-->
    <link href="<?php echo base_url(); ?>assets/assets/css/pace.min.css" rel="stylesheet" />
    <script src="<?php echo base_url(); ?>assets/assets/js/pace.min.js"></script>


    <!--plugins-->
    <link href="<?php echo base_url(); ?>assets/assets/plugins/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet" />
    <link href="<?php echo base_url(); ?>assets/assets/plugins/simplebar/css/simplebar.css" rel="stylesheet" />
    <link href="<?php echo base_url(); ?>assets/assets/plugins/simplebar/css/simplebar.css" rel="stylesheet" />
    <link href="<?php echo base_url(); ?>assets/assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet" />
    <link href="<?php echo base_url(); ?>assets/assets/plugins/metismenu/css/metisMenu.min.css" rel="stylesheet" />

    <!-- CSS Files -->
    <link href="<?php echo base_url(); ?>assets/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/assets/css/bootstrap-extended.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/assets/css/style.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/assets/css/icons.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">

    <!--Theme Styles-->
    <link href="<?php echo base_url(); ?>assets/assets/css/dark-theme.css" rel="stylesheet" />
    <link href="<?php echo base_url(); ?>assets/assets/css/semi-dark.css" rel="stylesheet" />
    <link href="<?php echo base_url(); ?>assets/assets/css/header-colors.css" rel="stylesheet" />


    <title>Fi-Drive</title>
</head>

<body>


    <!--start wrapper-->
    <div class="wrapper">

        <!--start sidebar -->
        <aside class="sidebar-wrapper" data-simplebar="true">
            <div class="sidebar-header">
                <div>
                    <img src="<?php echo base_url(); ?>assets/assets/images/logo-icon-2.png" class="logo-icon" alt="logo icon">
                </div>
                <div>
                    <h4 class="logo-text">Fi-Drive</h4>
                </div>
                <div class="toggle-icon ms-auto">
                    <ion-icon name="menu-sharp"></ion-icon>
                </div>
            </div>
            <!--navigation-->
            <ul class="metismenu" id="menu">
                <li>
                    <a href="../index" class="has-arrow">
                        <div class="parent-icon">
                            <i class="bi bi-house-door"></i>
                        </div>
                        <div class="menu-title">Dashboard</div>
                    </a>
                </li>
                <li>
                    <a href="javascript:;" class="has-arrow">
                        <div class="parent-icon">
                            <i class="bi bi-download"></i>
                        </div>
                        <div class="menu-title">Riwayat Unduhan</div>
                    </a>
                </li>
            </ul>
            <!--end navigation-->
        </aside>
        <!--end sidebar -->