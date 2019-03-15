<div class="well hidden-xs">
  <div class="row">
    <div class="col-md-10 animated fadeInLeft">
      <h1 style="text-shadow: 2px 2px #e6e6e6;">
        <b><?= Setting::unique(['name' => 'site_title_short'])->value; ?></b>
      </h1>
      <h3 style="color: #777;"><?= Setting::unique(['name' => 'site_title'])->value; ?></h3>
    </div>
    <div class="col-md-2">
      <a class="" href="/home/index" style="padding: 12px 0px 0px 10px;">
        <img alt="Brand" src="<?= Setting::unique(['name' => 'image_logo_side'])->value; ?>" width="150" class="img-responsive"/>
      </a>
    </div>
  </div>
</div>