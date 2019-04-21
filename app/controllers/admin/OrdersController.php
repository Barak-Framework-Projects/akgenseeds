<?php

class OrdersController extends AdminController {

  public function save() {

    $_POST["pKullaniciAdi"] = Setting::unique(['name' => 'mng_username'])->value;
    $_POST["pSifre"] = Setting::unique(['name' => 'mng_password'])->value;

    $_POST["pTeslimSekli"] = intval($_POST["pTeslimSekli"]);
    $_POST["pFlAlSms"] = intval($_POST["pFlAlSms"]);
    $_POST["pFlGnSms"] = intval($_POST["pFlGnSms"]);
    $_POST["pFlKapidaOdeme"] = intval($_POST["pFlKapidaOdeme"]);


    print_r($_POST);
    $http = new ApplicationHttp();
    $result = $http->post("http://service.mngkargo.com.tr/tservis/musterikargosiparis.asmx/SiparisGirisiDetayliV3", $_POST);

    if ($result->status_code == 200) {
      if (simplexml_load_string($result->body) == "1") {
        $_SESSION["info"] = "Kayıt Başarılı";
        return $this->render("admin/orders");
      }
    } else {
      $_SESSION["danger"] = $result->body;
      return $this->render("admin/orders/create");
    }


    print_r($results);
    exit();

  }
}

?>