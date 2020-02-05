<head>
<meta charset="utf-8">
<title>Aplikasi Bimbingan Belajar Primagama</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="<?php echo base_url(); ?>___/css/style_print.css" rel="stylesheet">
<link rel="shortcut icon" href="<?php echo base_url(); ?>___/img/logo.png">
</head>
    <div class="ctr">
        <img src="<?php echo base_url(); ?>___/img/logo_l.png" width="200px">
    </div>
<h3>Laporan Hasil Ujian:</h3>
<hr style="border: solid 1px #000"><br>
<h4>Detil Ujian:</h4>
<table class="table-bordered" style="margin-bottom: 0px">
  <tr><td width="30%">Mata Pelajaran:</td><td><b><?php echo $detil_tes->namaMapel; ?></b></td></tr>
  <tr><td>Nama Guru:</td><td width="70%"><b><?php echo $detil_tes->nama_guru; ?></b></td></tr>
  <tr><td>Nama Ujian:</td><td width="70%"><b><?php echo $detil_tes->nama_ujian; ?></b></td></tr>
  <tr><td>Jumlah Soal:</td><td><b><?php echo $detil_tes->jumlah_soal; ?></b></td></td></tr>
  <tr><td>Waktu:</td><td><b><?php echo $detil_tes->waktu; ?> Menit</b></td></tr>
  <tr><td>Nilai Tertinggi:</td><td><b><?php echo $statistik->max_; ?></b></td></tr>
  <tr><td>Nilai Terendah:</td><td><b><?php echo $statistik->min_; ?></b></td></tr>
  <tr><td>Nilai Rata-Rata:</td><td><b><?php echo number_format($statistik->avg_); ?></b></td></tr>
</table>
<br><br>
<h4>Hasil Ujian:</h4>
<table class="table-bordered">
  <thead>
    <tr>
      <th width="5%">No.</th>
      <th width="50%">Nama Peserta</th>
      <th width="15%">Jumlah Benar</th>
      <th width="15%">Nilai</th>
      <th width="15%">Nilai Bobot</th>
    </tr>
  </thead>

  <tbody>
    <?php 
      if (!empty($hasil)) {
        $no = 1;
        foreach ($hasil as $d) {
          echo '<tr>
                <td class="ctr">'.$no.'</td>
                <td>'.$d->nama.'</td>
                <td class="ctr">'.$d->jml_benar.'</td>
                <td class="ctr">'.$d->nilai.'</td>
                <td class="ctr">'.$d->nilai_bobot.'</td>
                </tr>
                ';
        $no++;
        }
      } else {
        echo '<tr><td colspan="5">Belum Ada Data</td></tr>';
      }
    ?>
  </tbody>
</table>
<div class="ctr">&copy; 2019. Aplikasi Bimbingan Belajar Primagama.</div>
<script>window.print();</script>