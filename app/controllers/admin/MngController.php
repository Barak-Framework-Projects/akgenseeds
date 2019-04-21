<?php

class MngController extends AdminController {

  public function test() {

    $http = new ApplicationHttp();
    $result = $http->post("http://service.mngkargo.com.tr/tservis/musterikargosiparis.asmx/Baglanti_Test");
    $this->state = simplexml_load_string($result->body);
    $this->username = Setting::unique(['name' => 'mng_username'])->value;
    $this->password = Setting::unique(['name' => 'mng_password'])->value;
  }

}

?>