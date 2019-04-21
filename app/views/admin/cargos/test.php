<h4 class="page-title">Aktivasyonlar</h4>

<div class="table-responsive">
  <table class="table table-bordered table-hover" id="activation-dashboard">
    <thead>
      <tr>
        <td width="200"><b>#</b></td>
        <td><b>Kullanıcı Adı</b></td>
        <td><b>Kullanıcı Parolası</b></td>
        <td><b>Durum</b></td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Api Bağlantı Bilgileri</td>
        <td><?= $username; ?></td>
        <td><?= $password; ?></td>
        <td><div class="alert alert-<?= ($state == 1) ? 'success' : 'danger'; ?>" role="alert"><?= ($state == 1) ? 'Var' : 'Yok'; ?></div></td>
      </tr>
    </tbody>
  </table>
</div>