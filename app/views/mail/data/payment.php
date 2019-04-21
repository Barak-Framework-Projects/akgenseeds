<?php

// Function to get the client ip address
function get_client_ip_server() {
  $ipaddress = '';
  if (isset($_SERVER['HTTP_CLIENT_IP']))
    $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
  else if (isset($_SERVER['HTTP_X_FORWARDED_FOR']))
    $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
  else if (isset($_SERVER['HTTP_X_FORWARDED']))
    $ipaddress = $_SERVER['HTTP_X_FORWARDED'];
  else if (isset($_SERVER['HTTP_FORWARDED_FOR']))
    $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
  else if (isset($_SERVER['HTTP_FORWARDED']))
    $ipaddress = $_SERVER['HTTP_FORWARDED'];
  else if (isset($_SERVER['REMOTE_ADDR']))
    $ipaddress = $_SERVER['REMOTE_ADDR'];
  else
    $ipaddress = 'UNKNOWN';

  return $ipaddress;
}
?>
<center>
  <div id="intro" style="background-color:#2d2d2d">
    <div class="container text-center" style="margin-top: 11%; ">

      <h3 style="color:#d4cfd3">NARA</h3>

      <hr>
      <div id="about" style="color:#d4cfd3">
        <div class="turquoise_border">
          Uygulamaya 1 Kişi Ödeme Yaptı
          <hr/><br/>
          <b>Ürün Adı :</b> <?= $name; ?><br/>
          <b>Tarih :</b> <?= date("Y-m-d H:i:s"); ?><br/>
          <b>Client Modem Ip :</b> <?= $_SERVER['REMOTE_ADDR']; ?><br/>
          <b>Client Real  Ip :</b> <?= get_client_ip_server(); ?>
        </div>

      </div>

    </div>
  </div>
</center>




