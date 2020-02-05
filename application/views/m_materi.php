<?php 
$uri4 = $this->uri->segment(4);
?>
<div class="row col-md-12">
  <div class="panel panel-info">
    <div class="panel-heading">Data Materi:
      <div class="tombol-kanan">
        <a class="btn btn-success btn-sm" onclick="return m_materi_e()"><i class="glyphicon glyphicon-plus" style="margin-left: 0px; color: #fff"></i> &nbsp;&nbsp;Tambah Data</a>
      </div>
    </div>
    <div class="panel-body">
<div class="row col-md-12" align="center">
  <div class="panel panel-info">
    <div class="panel-heading">Data Materi Pelajaran:
    </div>
    <div class="panel-body">
      <table class="table table-bordered">  
        <thead>
          <tr>
            <th width="5%">No</th>
            <th width="20%">Nama Guru</th>
            <th width="20%">Nama Pelajaran</th>
            <th width="20%">Nama Materi</th>
			<th width="20%">File Materi</th>
          </tr>
        </thead>
        <tbody>
          <?php
            if (!empty($data)) {
              foreach ($data as $d){
                echo '<tr>
                      <td class="ctr">'.$d->id.'</td>
					  <td>'.$d->id_guru.'</td>
                      <td>'.$d->id_mapel.'</td>
					  <td>'.$d->nama_materi.'</td>
                      <td>'.$d->file_materi.'</td>
                          ';
              }
            }
          ?>
        </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
</div>
</div>
</div>

<!-- Modal -->
<div class="modal fade" id="m_materi" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Input Materi</h4>
      </div>
      <div class="modal-body">
          <form action="upload_file" method="post" enctype="multipart/form-data">
          <input type="hidden" name="id" id="id" value="0">
          <div id="konfirmasi"></div>
          <table class="table table-form">
            <tr><td class="" colspan="2" style="width: 20%">Mapel</td>
            <td style="width: 80%">
            <?php echo form_dropdown('id_mapel', $p_mapel, '', 'class="form-control" id="id_mapel" required'); ?>
            </td></tr>
            <tr><td class="" colspan="2">Guru</td>
            <td>
            <?php echo form_dropdown('id_guru', $p_guru, '', 'class="form-control" id="id_guru" required'); ?>
            </td></tr>
            <tr><td class="" colspan="2" style="width: 20%">Gambar Soal</td><td style="width: 80%">
            <input type="file" name="file_materi" size="50" /></td></tr>
            <tr><td class="" colspan="2" style="width: 20%">Nama Materi</td><td style="width: 80%">
            <input type="text" class="form-control" name="nama_materi" id="nama_materi" required>
            </td></tr>
    </table>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary">Simpan</button>
        <button class="btn btn-default" data-dismiss="modal">Tutup</button>
      </div>
        </form>
    </div>
  </div>
</div>

<script type="text/javascript">
function redirect(url){
    location.href=url;
}
function m_materi_e() {    
$("#m_materi").modal('show');
return false;
}
function m_materi_s() {
  //e.preventDefault();
  var f_asal  = $("#f_materi");
  var form  = getFormData(f_asal);
  $.ajaxFileUpload({
    url             : base_url + 'adm/m_materi/simpan/', 
    secureuri       : false,
    fileElementId   : 'gambar_materi',
    data      : form,
    dataType    : 'jsonp',
    contentType   : 'text/javascript',
    success : function (data) {
      var d = JSON.parse(data);     
      if(d.status == 'ok') {
        $('#konfirmasi').html('<div class="alert alert-success">'+d.msg+'</div>');      
        window.location.assign(base_url+"adm/m_materi/pilih_mapel/"+d.id_mapel);
      } else {
        $('#konfirmasi').html('<div class="alert alert-danger">gagal</div>');
      }
    }
  });
  return false;
}
<?php 
$xid_guru = "";
if ($sess_level == "guru" && $sess_konid != "") {
  $xid_guru = $sess_konid;
} 
?>
var id_guru_ = "<?php echo $xid_guru; ?>";
var id_mapel_ = "<?php echo $this->uri->segment(4); ?>";
</script>