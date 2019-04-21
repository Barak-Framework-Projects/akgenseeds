<?php

class MngController extends V2Controller {


  public function connection() {
    $api = new ApplicationApi();
    $api->get("http://www.akgenseeds.com/api/v1/datas");
    $datas = $api->run();

    print_r(json_decode($datas));
    exit();
  }


  public static function _query_json_template($status, $message, $datas = NULL, $name = NULL) {
    $json_array = ["status" => $status, "message" => $message, "name" => $name, "datas" => $datas];
    return json_encode($json_array, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
  }

  private static function _data_object2array_template($data) {
    return [
    "id" => $data->id,
    "barcode" => $data->barcode,
    "name" => $data->name
    ];
  }

}
?>