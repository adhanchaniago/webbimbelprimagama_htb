<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Selamat Datang di Aplikasi Bimbingan Belajar Primagama</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="<?php echo base_url(); ?>___/css/bootstrap.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>___/css/style.css" rel="stylesheet">
<link rel="shortcut icon" href="<?php echo base_url(); ?>___/img/logo.png">
</head>
<body>
<div class="container">
	<div class="col-md-4"></div>
	<div class="col-md-4">
	<form action="" method="post" name="fl" id="f_login">
		<div class="panel panel-default top150">
			<div class="panel-heading">
                <div class="ctr">
                <img src="<?php echo base_url(); ?>___/img/logo_l.png" width="200px">
                </div>
                <h4 style="margin: 5px">&nbsp;
                    <i class="glyphicon glyphicon-user"></i>&nbsp;&nbsp;&nbsp;&nbsp;Silakan Masuk
                </h4>
            </div>
			<div class="panel-body">
				<div id="konfirmasi"></div>
				<div class="input-group">
					<span class="input-group-addon">@</span>
					<input type="text" id="username" name="username" autofocus value="" placeholder="Masukkan Username Anda" class="form-control" />
				</div> <!-- /field -->
				<div class="input-group top15">
					<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
					<input type="password" id="password" name="password" value="" placeholder="Masukkan Password Anda" class="form-control"/>
				</div> <!-- /password -->
				<div class="login-actions">
					<button class="button btn btn-primary btn-large col-lg-12 top15">Masuk</button>
				</div> <!-- .actions -->
			</div>
		</div> <!-- /login-fields -->
	</form>
	</div>
	<div class="col-md-4"></div>
</div>
<font color="white">
    <div class="ctr">&copy; 2019. Aplikasi Bimbingan Belajar Primagama.</div>
</font>
<!-- /footer --> 
<!-- Le javascript
================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 
<script src="<?php echo base_url(); ?>___/js/jquery-1.11.3.min.js"></script> 
<script src="<?php echo base_url(); ?>___/js/bootstrap.js"></script>
<script src="<?php echo base_url(); ?>___/js/aplikasi.js"></script> 
<script type="text/javascript">
	$("#f_login").submit(function(event) {
		event.preventDefault();
		var data 	= $('#f_login').serialize();
		$("#konfirmasi").html("<div class='alert alert-info'><i class='icon icon-spinner icon-spin'></i> Memeriksa...</div>")
		$.ajax({
			type: "POST",
			data: data,
			url: "<?php echo base_URL(); ?>adm/act_login",
			success: function(r) {
				if (r.log.status == 0) {
					$("#konfirmasi").html("<div class='alert alert-danger'>"+r.log.keterangan+"</div>");
				} else {
					$("#konfirmasi").html("<div class='alert alert-success'>"+r.log.keterangan+"</div>");
					window.location.assign("<?php echo base_url(); ?>adm"); 
				}
			}
		});
	});
</script>
</body>
</html>