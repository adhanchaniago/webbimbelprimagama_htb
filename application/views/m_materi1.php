<div class="row col-md-12">
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
            <th width="10%">Aksi</th>
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
                      <td class="ctr">
                        <div class="btn-group">
                          <a href=/bimbel/upload/materi_pelajaran/'.$d->file_materi.' target="blank" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-download" style="margin-left: 0px; color: #fff"></i> &nbsp;&nbsp;Download</a>
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