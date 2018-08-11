<?php

    session_start();

    include "lib/connection.php";
    date_default_timezone_set('Asia/Jakarta');
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>PaChat</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="components/src/bower_components/bootstrap-daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="components/src/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <link rel="stylesheet" href="components/src/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <link rel="stylesheet" href="components/src/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <link rel="stylesheet" href="components/src/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="components/src/bower_components/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="components/src/bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="components/src/bower_components/jvectormap/jquery-jvectormap.css">

  <!-- Theme style -->
  <link rel="stylesheet" href="components/src/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="components/src/dist/css/skins/_all-skins.min.css">

  <script type="text/javascript" src="components/src/bower_components/jquery/dist/jquery.min.js"></script>
  <script type="text/javascript" src="components/src/bower_components/jquery/dist/jquery.min.js"></script>
  <script src="components/src/bower_components/jquery/src/ajax/script.js"></script>

  <!-- Google Font -->
  <link rel="stylesheet" 
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

  <div id="modal_muncul" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title" id="myModalLabel">
                <i class="fa fa-commenting-o"></i> 
                Selamat Datang
            </h4>
            </div>
            <div class="modal-body">
            <form action="index.php" method="POST" name="modal_popup" enctype="multipart/form-data"
            class="form-horizontal">
              <div class="callout callout-warning">
                <h4>Hay, salam kenal nama saya Pachat <i class="fa fa-qq"></i></h4>

                <p>Saya akan membantu menjawab pertanyaan yang ditanyakan oleh anda, jika nantinya ada kekurangan dari saya. mohon untuk dimaafkan ya :) <br>
                  sebelum bertanya, silahkan mengisi nama anda dibawah :)
                </p>
              </div>
                <div class="form-group">
                  <label class="label-control col-md-3">NAMA ANDA</label>
                  <div class="col-md-9">
                    <input type="text" class="form-control" name="nama" autocomplete="off" placeholder="ex : Ryan Pace"required>
                  </div>
                </div>

                <div class="modal-footer">
                <div class="pull-right">
                  <input type="submit" class="btn btn-warning btn-submit" name="simpan" value="OK">
                  </div>
                </div>
            </form>
            </div>
        </div>
        </div>
    </div>
    
    <?php 
    if (isset($_POST['simpan'])) { 
      $tmpnama = $_POST['nama'];
      $_SESSION['nama'] = $tmpnama;
    } 

    ?>

  <header class="main-header">
    <nav class="navbar navbar-static-top">
      <?php include('page/navbar.php');?>
    </nav>
  </header>


  <div class="content-wrapper">
    <div class="container">

      <!-- Main content -->
      <section class="content">
        <?php include("content.php"); ?>
      </section>
      <!-- /.content -->
    </div>
    <!-- /.container -->
  </div>

  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="container">
      <div class="pull-right hidden-xs">
        Desain by | <b>Me</b></a> <i class="fa fa-user-secret"></i>
      </div>
      <strong>Copyright &copy; 2018 PaChat</strong> | Chatbot matakuliah dan KRS</a>
    </div>
    <!-- /.container -->
  </footer>
</div>
<!-- ./wrapper -->



<script src="components/src/bower_components/jquery/dist/jquery.min.js"></script>
<script src="components/src/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="components/src/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="components/src/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="components/src/bower_components/fastclick/lib/fastclick.js"></script>
<script src="components/src/dist/js/adminlte.min.js"></script>
<script src="components/src/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<script src="components/src/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="components/src/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="components/src/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="components/src/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="components/src/bower_components/chart.js/Chart.js"></script>
<script src="components/bower_components/select2/dist/js/select2.full.min.js"></script>
<script src="components/src/plugins/input-mask/jquery.inputmask.js"></script>
<script src="components/src/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="components/src/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="components/src/bower_components/moment/min/moment.min.js"></script>
<script src="components/src/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="components/src/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="components/src/dist/js/pages/dashboard2.js"></script>
<script src="components/src/dist/js/demo.js"></script>

<script>
  $(function () {
    $('#example1').DataTable()
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': true,
      'searching'   : true,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : true
    })
  })
</script>

<script>
<?php
if(empty($_SESSION['nama'])) { ?>
  $('#modal_muncul').modal('show');
<?php } else { ?>
  $('#modal_muncul').modal('hide');
<?php } ?>
</script>

<script>
  $('[data-mask]').inputmask()
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Date range picker
    $('#reservation').daterangepicker()
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, format: 'YYYY/MM/DD h:mm A' })

    //Date picker
    $('#datepicker').datepicker({
      autoclose: true,
      format: "MM-yyyy",
      startView: "months", 
      minViewMode: "months"
    })
    $('#datepicker1').datepicker({
      autoclose: true,
      format: "MM-yyyy",
      startView: "months", 
      minViewMode: "months"
    })

  })
</script>

</body>
</html>
