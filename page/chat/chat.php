<div class="content-wrapper">
    <div class="container">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          Live Chat
        </h1>
        <ol class="breadcrumb">
          <li><a href="?page=livechat"><i class="fa fa-dashboard"></i>Beranda</a></li>
          <li class="active"> Live Chat</li>
        </ol>
      </section>

      <!-- Main content -->
      <section class="content">

            <div class="box box-warning direct-chat direct-chat-warning">
                <div class="box-header with-border">
                  <h3 class="box-title"><i class="fa fa-commenting"></i> Direct Chat</h3>
                  

                  <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                    </button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i>
                    </button>
                  </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                  <!-- Conversations are loaded here -->
                  <div class="direct-chat-messages">
                    <!-- Message. Default to the left -->
                    <div id="isichatgege">

                    </div>

                  </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                  <form action="?page=livechat" method="post" name="pesan">
                    <div class="col-md-12">
                        <div class="input-group">
                            <div class="col-md-2">
                                <input type="text" name="nama" placeholder="Nama anda ..." class="form-control" autocomplete="off" value="<?php if(!empty($_SESSION['nama'])) { echo $_SESSION['nama']; } ?>" required>
                            </div>
                            <div class="col-md-10">
                                <input type="text" name="isi_pesan" placeholder="Tuliskan pesan ..." class="form-control" autocomplete="off" required>
                            </div>
                            <span class="input-group-btn">
                                <button type="submit" name="pesan" class="btn btn-warning btn-flat">Kirim</button>
                            </span>
                        </div>
                    </div>
                  </form>
                </div>
                <!-- /.box-footer-->
            </div>

            <?php 
                if (isset($_POST['nama']) && isset($_POST['isi_pesan'])) {
                    $nama               = $_POST['nama'];
                    $isi_pesan          = addslashes($_POST['isi_pesan']);
                    $date               = date('Y-m-d H:i:s');
                    $role               = 0;

                        
                        $tmpArrper = array();
                        
                        $tangkap = $_POST['isi_pesan'];
                        $pertanyaan = preg_replace('/[^A-Za-z0-9\ ]/', '',$tangkap);
                        $myfile = fopen("stemming.txt", "w") or die("Unable to open file!");
                        $txt = $pertanyaan;
                        fwrite($myfile, $txt);
                        fclose($myfile);
                    
                    if (isset($pertanyaan)) {
                        $output = null;
                        exec("python coba.py", $output, $return);
                        $arrper     = preg_replace('/[^A-Za-z0-9\ ]/', '', $output[2]);
                        $tmpArrper  = explode(" ",$arrper);
                        }

                        $ambilstem = implode(" ",$tmpArrper);

                        $arrayData  = array();
                        $arrayData1 = array();
                        $arrayData2 = array();
                        $arrayData1 = array_merge($arrayData2,$tmpArrper);
                        $push       = array();
                        $sql = mysqli_query($conn, "SELECT kata_kunci FROM tbl_basispengetahuan")
                                or die(mysqli_error($conn));
                        $hitSql = mysqli_num_rows($sql);
                        while($data = mysqli_fetch_array($sql)) {
                        
                        $isi      = explode(" ", $data['kata_kunci']);
                        array_push($push,$isi);
                        $arrayData = array_merge($arrayData,$isi);
        
                        }
                        $arrayData  = array_merge($arrayData,$arrayData1);  
                        $tmp1       = array_unique($arrayData);
                        $tmp2       = array_values($tmp1);
                        $hitung     = count($tmp2);
                                
                            
                            $isitf       = array(array());
                            $isiwdt      = array(array());
                            $isiwd5      = array(array());
                            $isivector   = array(array());
                            $isiqvector  = array();
                            $sumwd5      = array();
                            $sumqvector  = array();
                            $sumvector   = array();
                            $kuadratqvec = array();
                            $kuadratvec  = array();     
                            $isiqtf      = array();
                            $isiqwdt     = array();
                            $df          = array();
                            $idf         = array();
                            $cosine      = array();

        
                            for ($a=0;$a<$hitung;$a++) {
                                $df[$a]          = 0;
                                $idf[$a]         = 0;
                                $isiqtf[$a]      = 0;
                                $cosine[$a]      = 0;
                                $isiqwdt[$a]     = 0;
                                $sumwd5[$a]      = 0;
                                $sumqvector[$a]  = 0;
                                $sumvector[$a]   = 0;
                                $kuadratqvec[$a] = 0;
                                $kuadratvec[$a]  = 0;
                            }
        
                            for ($a=0;$a<$hitung;$a++) {
        
                                for($b=0;$b<1;$b++) {
                                    if (in_array($tmp2[$a],$tmpArrper)) {
                                        $isiqtf[$a] = 1;
                                    } else {
                                        $isiqtf[$a]= 0;
                                    }
                                }
        
                                for ($b=0;$b<count($push);$b++) { 
                                    if (in_array($tmp2[$a],$push[$b])) {
                                        $isitf[$a][$b] = 1;
                                        $df[$a] = $df[$a] + $isitf[$a][$b];
                                    } else {
                                        $isitf[$a][$b] = 0;
                                    }
                                }
                                    if ($df[$a] == 0) {
                                        $idf[$a] = 0;
                                    } else {
                                        $jum     = count($push);
                                        $idf[$a] = log10($jum/$df[$a]);
                                    }
                                
                                for ($b=0;$b<1;$b++) {
                                    $isiqwdt[$a] = $isiqtf[$a] * $idf[$a];
                                }
        
        
                                for ($b=0;$b<count($push);$b++) {
                                    $isiwdt[$a][$b] = $isitf[$a][$b] * $idf[$a];
                                }
        
                                for ($b=0;$b<count($push);$b++) {
                                    $isiwd5[$a][$b] = $isiqwdt[$a] * $isiwdt[$a][$b];
                                    $sumwd5[$b] += $isiwd5[$a][$b]; // SUM dari WD5
                                }
        
                                for ($b=0;$b<1;$b++) {
                                    $isiqvector[$a] = pow($isiqwdt[$a],2);
                                    $sumqvector[$b] += $isiqvector[$a]; // SUM dari Qvector
                                    $kuadratqvec[$b] = sqrt($sumqvector[$b]); // Kuadrat dari Qvector 
        
                                }
        
                                for ($b=0;$b<count($push);$b++) {
                                    $isivector[$a][$b] = pow($isiwdt[$a][$b],2);
                                    $sumvector[$b] += $isivector[$a][$b]; // SUM dari Vector
                                    $kuadratvec[$b] = sqrt($sumvector[$b]); // Kuadrat dari vector 
                                }
                                
                            }
                            
                            for ($a=0;$a<count($push);$a++) {
                                $sumwd5[$a]; // tampilkan sum dari WD5
                            }
        
                            for ($a=0;$a<1;$a++) {
                                $sumqvector[$a]; // tampilkan sum dari QVector
                            }
        
                            for ($a=0;$a<1;$a++) {
                                $kuadratqvec[$a]; // tampilkan Kuadrat dari QVector
                            }
        
                            for ($a=0;$a<count($push);$a++) {
                                $sumvector[$a]; // tampilkan sum dari Vector
                            }
        
                            for ($a=0;$a<count($push);$a++) {
                                $kuadratvec[$a]; // tampilkan Kuadrat dari Vector
                            }
                            
                            for ($a=0;$a<count($push);$a++) {
                                if ($kuadratqvec[0] == 0) {
                                    $cosine[$a] = 0;
                                } else {
                                    $cosine[$a] = ($sumwd5[$a]/($kuadratqvec[0]*$kuadratvec[$a])); // hasil dari Cosine
                                }
                                
                            }
                            
                            $max = max($cosine);
                            
                            for ($a=0;$a<count($push);$a++) {
                                if ($max == 0 || $max == $cosine[0]) {
                                    $id = 1;
                                } else {
                                    $id = array_search($max,$cosine)+1;
                                }
                            }

                            $pesan = mysqli_query($conn, "INSERT INTO tbl_pesan SET
                                                    nama            = '$nama',
                                                    role_nama       = 0,
                                                    pesan           = '$isi_pesan',
                                                    stem            = '$ambilstem',
                                                    role_bot        = 1,  
                                                    id_basispeng    = $id,
                                                    date_in         = '$date'")
                                                    or die (mysqli_error($conn));
                            
                            if ($pesan) {
                                echo "<meta http-equiv='refresh' content='1;
                                url=?page=livechat'>";
                            }
                  }
            ?>

      </section>
      <!-- /.content -->
    </div>
    <!-- /.container -->
  </div>

  <script>
  $(document).ready(function() {
    $("#isichatgege").load("page/chat/isi_chat.php");
    var refreshId = setInterval(function() {
        $("#isichatgege").load('page/chat/isi_chat.php');
    }, 9000);
  });
</script>