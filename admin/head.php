<?php include 'config/config.php'; ?>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Halaman Admin</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <script src="dt/js/jquery.min.js"></script>
  <script src="bootstrap/js/bootstrap.min.js"></script>

  <script src="dist/js/app.min.js"></script>
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">

  <link rel="stylesheet" href="dist/css/skins/skin-blue.min.css">

  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">


        

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="index.php" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini">ADM</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg">Admin</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      
      <!-- /.search form -->

      <?php 
        $result=tampilpembayaran();
        $count=0;
        while ($row=mysqli_fetch_assoc($result)) {
          if ($row['status']=='0') {
            $count+=1;
          }
        }
       ?>

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu">
        <!-- Optionally, you can add icons to the links -->
        <li><a href="index.php"><i class="fa fa-link"></i> <span>Data Formulir</span></a></li>
        <li><a href="data_pendidikan.php"><i class="fa fa-link"></i> <span>Data Pendidikan</span></a></li>
        <li><a href="data_ortu.php"><i class="fa fa-link"></i> <span>Data Orangtua Pendaftar</span></a></li>
        <li><a href="data_dokumen.php"><i class="fa fa-link"></i> <span>Data Dokumen Pendaftar</span></a></li>
        <?php if ($count=='0'){?>
        <li><a href="data_pembayaran.php"><i class="fa fa-link"></i> <span>Data Pembayaran </span></a></li>
        <?php }else{ ?>
        <li><a href="data_pembayaran.php"><i class="fa fa-link"></i> <span>Data Pembayaran <span class="badge"><?php echo $count; ?></span></span></a></li>
        <?php } ?>
        <li><a href="data_admin.php"><i class="fa fa-link"></i> <span>Data Admin</span></a></li>
        <li><a href="logout.php"><i class="fa fa-link"></i> <span>Keluar</span></a></li>

      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->

    <!-- Main content -->
    <section class="content">

      <!-- Your Page Content Here -->

    
<style>
  /*.notification .badge {
    position: absolute;
    top: -10px;
    right: -10px;
    padding: 5px 10px;
    border-radius: 50%;
    background-color: blue;
    color: white;
  }*/
  .badge {
    display: inline-block;
    min-width: 10px;
    padding: 3px 7px;
    font-size: 12px;
    font-weight: 700;
    line-height: 1;
    color: #fff;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    background-color: red;
    border-radius: 10px;
    margin-left: 15px;
  }
</style>