<nav class="navbar navbar-default" id="account">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/home/index">
        System
      </a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
            <i class="fa fa-plus"></i>
            <span class="caret"></span>
          </a>
          <ul class="dropdown-menu" role="menu">
            <li>
              <a href="/admin/pages/create">
                <i class="fa fa-file-text-o"></i>
                Sayfalar
              </a>
            </li>
            <li>
              <a href="/admin/agendas/create">
                <i class="fa fa-newspaper-o"></i>
                Haberler
              </a>
            </li>
            <li>
              <a href="/admin/agendas/create">
                <i class="fa fa-bullhorn"></i>
                Duyurular
              </a>
            </li>
            <li>
              <a href="/admin/slides/create">
                <i class="fa fa-arrows-h"></i>
                Slaytlar
              </a>
            </li>
            <li>
              <a href="/admin/albums/create">
                <i class="fa fa-film"></i>
                Albümler
              </a>
            </li>
            <li>
              <a href="/admin/partners/create">
                <i class="fa fa-briefcase"></i>
                Partnerler
              </a>
            </li>
            <li>
              <a href="/admin/references/create">
                <i class="fa fa-handshake-o"></i>
                Referanslar
              </a>
            </li>
            <li>
              <a href="/admin/documents/create">
                <i class="fa fa-file-o"></i>
                Dokümanlar
              </a>
            </li>
            <li>
              <a href="/admin/articles/create">
                <i class="fa fa-file-text"></i>
                Makaleler
              </a>
            </li>
            <li>
              <a href="/admin/regions/create">
                <i class="fa fa-globe"></i>
                Bölgeler
              </a>
            </li>
            <li>
              <a href="/admin/distributors/create">
                <i class="fa fa-map-marker"></i>
                Distribütörler
              </a>
            </li>
            <li>
              <a href="/admin/categories/create">
                <i class="fa fa-shopping-bag"></i>
                Kategoriler
              </a>
            </li>
            <li>
              <a href="/admin/producttypes/create">
                <i class="fa fa-shopping-cart"></i>
                Ürün Tipleri
              </a>
            </li>
            <li>
              <a href="/admin/products/create">
                <i class="fa fa-shopping-basket"></i>
                Ürünler
              </a>
            </li>
            <li>
              <a href="/admin/users/create">
                <i class="fa fa-user"></i>
                Personeller
              </a>
            </li>
          </ul>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
            <i class="fa fa-user-circle-o"></i> <?= $_SESSION['admininfo']->full_name(); ?>
            <span class="caret"></span>
          </a>
          <ul class="dropdown-menu" role="menu">
            <li>
              <a href="/admin/users/show/<?= $_SESSION['admininfo']->id; ?>"><i class="fa fa-cog"></i> Hesap Bilgileri</a>
            </li>
            <li>
              <a href="/admin/password_update"><i class="fa fa-key"></i> Parola Değiştir</a>
            </li>
            <li class="divider"></li>
            <li><a href="/admin/logout"><i class="fa fa-power-off"></i> Çıkış</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
