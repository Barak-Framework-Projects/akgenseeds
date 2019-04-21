<?php

ApplicationRoutes::draw(function() {

  // CAPTCHA

  get("captcha", "captcha#show");

  // AJAX

  post("ajax/producttype");

  // google search console
  get("google01180c5c007e8cf4.html", "home#google_searchconsole");

  // LANGUAGE

  get("lang/en");
  get("lang/tr");

  // HOME

  root("home#index");
  get("home", "home#index");
  get("home/index");
  get("home/about_us");
  get("home/contact");

  // post("home/mail_send");

  // get("home/categories/producttypes/products");

  // get("solutions/network", "solutionpage#network", "/home");

  scope("api", function() {
    scope("v1", function() {
      get("datas", "datas#index");
      get("datas/:barcode", "datas#show");
      get("datas/repeater", "datas#repeater");
      get("datas/test", "datas#test");
     // get("datas/ss/:barcode", "datas#smartsearch");



      post("devices/show", "devices#show");
      post("devices/payment", "devices#payment");
      post("devices/save", "devices#save");

      post("datas/pages", "datas#pages");
      post("datas/tops", "datas#tops");
      post("datas/search_name", "datas#search_name");
      post("datas/search_barcode", "datas#search_barcode");

      /* mng test apis */
      get("mng/conn", "mng#connection");
    });

  });

  scope("home", function() {
    get("pages/:id", "page#show");

    get("agendas", "agendapage#index");
    get("agendas/show/:id", "agendapage#show");
    post("agendas", "agendapage#index");

    get("references", "referencepage#index");

    get("categories", "categorypage#index");
    get("categories/show/:id", "categorypage#show");

    get("products", "productpage#index");
    get("products/search", "productpage#search");
    get("products/show/:id", "productpage#show");
    post("products/find", "productpage#find");

    get("producttypes/show/:id", "producttypepage#show");
    post("producttypes/find", "producttypepage#find");

    get("gallery", "gallerypage#index");

    get("albums", "albumpage#index");
    get("albums/show/:id", "albumpage#show");

    get("documents", "documentpage#index");

    get("articles", "articlepage#index");
    get("articles/show/:id", "articlepage#show");

    get("distributors", "distributorpage#index");

  });

  // ADMIN

  get("admin", "admin#index");
  get("admin/index");

  get("admin/login");
  post("admin/login");
  get("admin/logout");
  get("admin/password_reset/:code", "admin#password_reset");
  post("admin/password_reset");
  get("admin/password_update");
  post("admin/password_update");

  // get("category", "category#index", "admin");
  // resources("category", "admin");
  // post("category/ajax", false, "admin");

  scope("admin", function() {
    resources("regions");
    resources("distributors");
    resources("categories");
    resources("producttypes");
    resources("products");
    resources("users");
    resources("partners");
    resources("references");
    resources("galleries");
    resources("agendas");
    resources("slides");
    resources("notices");
    resources("pages");
    resources("documents");
    resources("articles");
    resources("albums");

    post("albumimages/destroy");

    post("agendaimages/destroy");

    get("logs", "logs#index");
    get("logs/destroy_all");
    post("logs/destroy");

    get("activations", "activations#index");
    get("activations/destroy_live");
    get("activations/destroy_dead");
    get("activations/destroy_all");
    post("activations/destroy");

    get("settings/show");
    get("settings/edit");
    post("settings/update");

    /* Kargo permission */
    get("mng/test");
    get("orders/create", "orders#create");
    post("orders/save", "orders#save");
  });

});

?>