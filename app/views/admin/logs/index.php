<h4 class="page-title">Loglar</h4>

<table class="table table-bordered table-hover" id="activation-dashboard">
  <thead>
    <tr>
      <th><b>Dosya</b></th>
      <th><b>Bytes</b></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <?php if ($logs) { ?>
    <?php foreach ($logs as $log) { ?>

    <tr>
      <td><?= $log["file"]; ?></td>
      <td><?= $log["size"]; ?></td>
      <td>
        <form action="/admin/logs/destroy" method="post">
          <input type="hidden" value="<?= $log['file']; ?>" id="name" name="name"/>
          <button type="submit" class="btn btn-default" onClick="return confirm('Bu kaydı silmek istediğinizden emin misiniz?');" title="Sil">
            <i class="fa fa-trash"></i>
          </button>
        </form>
      </td>
    </tr>

    <?php } ?>

    <?php
    $log_total_size = 0;
    foreach ($logs as $log) {
      $log_total_size += $log["size"];
    }
    ?>
    <tr>
      <td>Toplam</td>
      <td><?= $log_total_size; ?></td>
      <td>
        <a href="/admin/logs/destroy_all" type="submit" class="btn btn-danger" onClick="return confirm('Tüm logları silmek istediğinizden emin misiniz?');" title="Tümünü Sil">
          <i class="fa fa-trash"></i>
        </a>
      </td>
    </tr>

    <?php } else { ?>
    <tr class="text-center"><td colspan="4">Henüz Log mevcut değil</td></tr>
    <?php } ?>
  </tbody>
</table>

<table id="example" class="table table-striped table-hover dt-responsive" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Dosya</th>
      <th>Açıklama</th>
    </tr>
  </thead>
  <tbody>
    <?php if ($logs) { ?>

    <?php foreach ($logs as $log) { ?>

    <?php foreach ($log["content"] as $line) { ?>

    <tr>
      <td><?= $log["file"]; ?></td>
      <td><?= $line; ?></td>
    </tr>

    <?php } ?>

    <?php } ?>
    <?php } else { ?>
    <tr class="text-center"><td colspan="4">Henüz Log mevcut değil</td></tr>
    <?php } ?>

  </tbody>
</table>

