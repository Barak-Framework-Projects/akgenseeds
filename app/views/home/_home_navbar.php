<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-999999" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Choose your country or region.</h4>
      </div>
      <div class="modal-body">
        <div class="row text-center">
          <div class="col-md-2 col-sm-2 col-xs-2"><a href="/lang/tr"><img src="/app/assets/img/tr.png" /> Turkey</a></div>
          <div class="col-md-2 col-sm-2 col-xs-2"><a href="/lang/en"><img src="/app/assets/img/en.png" /> UK</a></div>
        </div>
      </div>
    </div>
  </div>
</div>

<nav class="navbar navbar-default navbar-static-top animated fadeInDown" data-spy="affix" data-offset-top="197">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" >
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>

      <a class="nabar-brand visible-xs" href="/home/index">
        <img alt="Brand" src="<?= Setting::unique(['name' => 'image_logo_side'])->value; ?>" style="height:50px" class="img-responsive"/>
      </a>

    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

      <ul class="nav navbar-nav navbar-left">
        <li><a href="/home/index"><?= t("home.link"); ?></a></li>

        <li class="dropdown">
          <a href="/home" data-hover="dropdown" data-delay="100" data-close-others="false" data-toggle="dropdown" data-submenu>
            <?= t("home.corporate"); ?>
            <b class="caret"></b>
          </a>
          <ul class="dropdown-menu">
            <li><a href="/home/about_us"><?= t("home.about_us"); ?></a></li>
            <li><a href="/home/articles"><?= t("home.articles"); ?></a></li>
            <li><a href="/home/documents"><?= t("home.documents"); ?></a></li>
            <li><a href="/home/albums"><?= t("home.albums"); ?></a></li>
          </ul>
        </li>

        <?php $parent_pages = Page::load()->where("page_id", NULL)->get_all(); ?>
        <?php if ($parent_pages) { ?>

          <?php foreach ($parent_pages as $parent_page) { ?>
            <li class="dropdown">
              <a tabindex="0" href="#" data-hover="dropdown" data-delay="100" data-close-others="false" data-toggle="dropdown" data-submenu>
                <?= $parent_page->title(); ?>
                <b class="caret"></b>
              </a>
              <?= PageHelper::dropdown_menu($parent_page->all_of_page); ?>
            </li>
          <?php } ?>

        <?php } ?>

        <li class="dropdown">
          <a href="/home/products" data-hover="dropdown" data-delay="100" data-close-others="false" data-toggle="dropdown" data-submenu>
            <?= t("home.products"); ?>
            <b class="caret"></b>
          </a>
          <ul class="dropdown-menu">
            <li class="dropdown-submenu">
              <a tabindex="0" href="/home/categories"><?= t("home.categories"); ?></a>
              <?php if ($_cs = Category::all()) { ?>
                <ul class="dropdown-menu">
                  <?php foreach ($_cs as $_c) { ?>
                    <li class="dropdown-submenu">
                      <a tabindex="0" href="/home/categories/show/<?= $_c->id; ?>"><?= $_c->name(); ?></a>
                      <?php $locale_name = ApplicationI18n::get_locale(); ?>
                      <?php $locale_name_ext = ($locale_name != "tr") ?  "_$locale_name" : ""; ?>

                      <?php if ($_pts = (Producttype::load()->where("category_id", $_c->id)->order("name$locale_name_ext", "asc")->get_all())) { ?>
                        <ul class="dropdown-menu">
                          <?php foreach ($_pts as $_pt) { ?>
                            <?php if($_pt) { ?>
                              <li><a tabindex="0" href="/home/producttypes/show/<?= $_pt->id; ?>"><?= $_pt->name(); ?></a></li>
                            <?php } ?>
                          <?php } ?>
                        </ul>
                      <?php } ?>
                    </li>
                  <?php } ?>
                </ul>
              <?php } ?>
            </li>
            <li><a href="/home/products/search"><?= t("home.product_search"); ?></a></li>
            <li><a href="/home/products"><?= t("home.product_list"); ?></a></li>
          </ul>
        </li>

        <li><a href="/home/agendas"><?= t("home.agendas"); ?></a></li>
        <li><a href="/home/distributors"><?= t("home.distributors"); ?></a></li>
        <li><a href="/home/contact"><?= t("home.contact"); ?></a></li>
      </ul>

      <ul class="nav navbar-nav navbar-right" style="margin-bottom: -11px">
        <!--<li><a href="/lang/tr"><img src="/app/assets/img/tr.png" class="img-border"/></a></li> -->
        <li>
          <?php $locale = ApplicationI18n::get_locale(); ?>
          <a data-toggle="modal" data-target="#myModal">
            <img src="/app/assets/img/<?= $locale; ?>.png" style="width:25px" /> <?= $locale; ?>
          </a>
        </li>
      </ul>

    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>