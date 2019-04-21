<?php

class DataMailer extends ApplicationMailer {

  public function payment($name) {
  	$this->name = $name;
    $this->mail([
      "to" => ["gdemir3327@gmail.com" => "Gökhan Demir", "harunkor@gmail.com" => "Harun Kör"],
      "subject" => "NARA Uygulaması Ödeme Bildirimi"
      ]);
  }

}
?>