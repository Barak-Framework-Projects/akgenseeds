<?php

class LogsController extends AdminController {

  public function index() {
    $directory = "tmp/log/";
    $logs = [];
    foreach (glob($directory . "*.log") as $logfile) {
      if ($handle = fopen($logfile, "r")) {
        $logcontent = [];
        while (($line = fgets($handle)) !== false) $logcontent[] = $line;
        fclose($handle);
        $logs[] = ["file" => $logfile, "size" => filesize($logfile), "content" => $logcontent];
      }
    }
    $this->logs = $logs;
  }

  public function destroy_all() {
    $directory = "tmp/log/";
    foreach (glob($directory . "*.log") as $logfile)
      FileHelper::remove($logfile);

    $_SESSION["info"] = "Loglar silindi";
    $this->redirect_to("admin/logs");
  }

  public function destroy() {
    FileHelper::remove($_POST["name"]);
    $_SESSION["info"] = "Log silindi";
    return $this->redirect_to("admin/logs");
  }

}

?>