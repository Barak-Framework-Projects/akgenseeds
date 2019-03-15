<style>
  .topbar {
    background-color: #24292e;
    color: #c8c9ca;
    padding: 1em;
    font-family: "Helvetica Neue", Helvetica, Corbel, Arial, sans-serif;
    font-size: 13px;
    line-height: 18px;
    word-spacing: 1px;
    font-weight: bold;
    letter-spacing: 0.4px;
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
    border-bottom: 5px solid #3e8f3e;
    -webkit-box-shadow: rgba(0,0,0,0.0976562) 0 5px 5px;
    -moz-box-shadow: rgba(0,0,0,0.0976562) 0 5px 5px;
    box-shadow: rgba(0,0,0,0.0976562) 0 5px 5px;
  }

  .topbar-header {
    font-size: 16px;
    color: #fff;
  }

  .topbar ul.topbar-menu {
    position: absolute;
    right: 0px;
    top: 0px;
    padding-right: 1em;
  }

  .topbar ul.topbar-menu li {
    text-align: center;
    display: block;
    float: left;
    margin-left: 25px;
  }

  .topbar ul.topbar-menu li:hover {
    color: #fff;
  }
</style>

<div class="topbar hidden-xs">
  <div class="row">
    <div class="col-md-6">
      <div class="topbar-header">
      <?= Setting::unique(['name' => 'site_title'])->value; ?>
      </div>
    </div>
    <div class="col-md-6">
      <ul class="topbar-menu">
        <li><i class="fa fa-envelope"></i> <?= Setting::unique(['name' => 'site_email'])->value; ?></li>
        <li><i class="fa fa-phone"></i> <?= Setting::unique(['name' => 'site_phone'])->value; ?></li>
      </ul>
    </div>
  </div>
</div>