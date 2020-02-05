<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Aplikasi Bimbingan Belajar Primagama</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="<?php echo base_url(); ?>___/css/bootstrap.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>___/css/style.css" rel="stylesheet">
<!--<link href="<?php echo base_url(); ?>___/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>___/css/font-awesome.css" rel="stylesheet">
<!--<link href="<?php echo base_url(); ?>___/css/style.css" rel="stylesheet">-->
<!--<link href="<?php echo base_url(); ?>___/css/pages/dashboard.css" rel="stylesheet">
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="<?php echo base_url(); ?>___/img/logo.png">
</head>
<body>
<nav class="navbar navbar-findcond navbar-fixed-top">
    <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand">Aplikasi Bimbingan Belajar Primagama</a>
    </div>
    <div class="collapse navbar-collapse" id="navbar">
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><?php echo $this->session->userdata('admin_nama')." (".$this->session->userdata('admin_user').")"; ?> <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#" onclick="return rubah_password();">Ubah Password</a></li>
            <li><a href="<?php echo base_url(); ?>adm/logout" onclick="return confirm('Anda Yakin Ingin Keluar...?');">Keluar</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
<?php 
$sess_level = $this->session->userdata('admin_level');
$uri2 = $this->uri->segment(2);
$menu = array();
if ($sess_level == "guru") {
  $menu = array(
            array("icon"=>"home", "url"=>"", "text"=>"Beranda"),
            array("icon"=>"list-alt", "url"=>"m_soal", "text"=>"Soal"),
            array("icon"=>"list-alt", "url"=>"m_ujian", "text"=>"Ujian"),
			array("icon"=>"file", "url"=>"m_materi", "text"=>"Materi Pelajaran"),
            array("icon"=>"file", "url"=>"h_ujian", "text"=>"Hasil Ujian"),
          );
} else if ($sess_level == "siswa") {
  $menu = array(
            array("icon"=>"home", "url"=>"", "text"=>"Beranda"),
            array("icon"=>"file", "url"=>"ikuti_ujian", "text"=>"Ujian"),
			array("icon"=>"file", "url"=>"m_materi1", "text"=>"Materi Pelajaran"),
          );
} else if ($sess_level == "admin") {
  $menu = array(
            array("icon"=>"home", "url"=>"", "text"=>"Beranda"),
            array("icon"=>"list-alt", "url"=>"m_siswa", "text"=>"Data Siswa"),
            array("icon"=>"list-alt", "url"=>"m_guru", "text"=>"Data Guru"),
            array("icon"=>"list-alt", "url"=>"m_mapel", "text"=>"Data Mat-Pel"),
            array("icon"=>"file", "url"=>"h_ujian", "text"=>"Hasil Ujian"),
          );
} else {
  $menu = array(
            array("icon"=>"home", "url"=>"", "text"=>"Beranda")
          );
}
?>
<div class="container" style="margin-top: 70px">
<div class="col-lg-12 row">
  <div class="panel panel-default">
    <div class="panel-body">
    <?php 
    foreach ($menu as $m) {
        if ($uri2 == $m['url']) {
          echo '<a href="'.base_url().'adm/'.$m['url'].'" class="btn btn-sq btn-warning"><i class="glyphicon glyphicon-'.$m['icon'].' g3x"></i><br><br/>'.$m['text'].' </a>';
        } else {
          echo '<a href="'.base_url().'adm/'.$m['url'].'" class="btn btn-sq btn-primary"><i class="glyphicon glyphicon-'.$m['icon'].' g3x"></i><br><br/>'.$m['text'].' </a>';
        }
    }
    ?>
    </div>
  </div>
</div>
<?php echo $this->load->view($p); ?>
<font color="white">
<div class="col-md-12" style="border-top: solid 4px #ddd; text-align: center; padding-top: 10px; margin-top: 50px; margin-bottom: 20px">
&copy; 2019. Aplikasi Bimbingan Belajar Primagama.
</div>
</font>
<!-- insert modal -->
<div id="tampilkan_modal"></div>
</div>
<script src="<?php echo base_url(); ?>___/js/jquery-1.11.3.min.js"></script> 
<script src="<?php echo base_url(); ?>___/js/ajaxFileUpload.js"></script> 
<script src="<?php echo base_url(); ?>___/js/bootstrap.js"></script>
<script type="text/javascript">
var base_url = "<?php echo base_url(); ?>";
</script>
<script src="<?php echo base_url(); ?>___/js/aplikasi.js"></script> 
</body>
</html>