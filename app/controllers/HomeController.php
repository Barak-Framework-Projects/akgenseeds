<?php

class HomeController extends ApplicationController {

  // protected $after_actions = [["notice_mailer"]];

  protected $helpers = ["Page", "Bootstrap"];

  public function index() { }

  // google search console
  public function google_searchconsole() {
    return $this->render(["text" => "google-site-verification: google01180c5c007e8cf4.html"]);
    exit();
  }

  public function notice_mailer() {
    // NoticeMailer::delivery("home");
  }
}
?>