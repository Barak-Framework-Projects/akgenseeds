<?php

class MngController extends V1Controller {


  public function connection() {
    $api = new ApplicationApi();
    // $api->get("http://www.akgenseeds.com/api/v1/datas/1");
    $api->post("http://service.mngkargo.com.tr/tservis/musterikargosiparis.asmx/Baglanti_Test");

    $datas = $api->run();

    print_r($datas);
    /*
    $datas = json_decode($datas["body"], true);
    print_r($datas);
   */
    exit();
  }

  public static function _query_json_template2($status, $message, $datas = NULL, $name = NULL) {
    $json_array = ["status" => $status, "message" => $message, "name" => $name, "datas" => $datas];
    return json_encode($json_array, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
  }

  private static function _data_object2array_template2($data) {
    return [
    "id" => $data->id,
    "barcode" => $data->barcode,
    "name" => $data->name
    ];
  }

}
?>