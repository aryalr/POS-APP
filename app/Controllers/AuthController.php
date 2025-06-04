<?php

namespace App\Controllers;

use App\Models\User;
use Smarty;

class AuthController
{
  private $smarty;

  public function __construct()
  {
    if (session_status() === PHP_SESSION_NONE) {
      session_start();
    }

    $this->smarty = new Smarty();
    $this->smarty->setTemplateDir(__DIR__ . '/../../resources/views/');
    $this->smarty->setCompileDir(__DIR__ . '/../../storage/smarty/compile/');
  }

  public function index()
  {
    $this->showLogin();
  }

  public function showLogin()
  {
    $this->smarty->display('auth/login.tpl');
  }

  public function login()
  {
    $username = $_POST['username'] ?? '';
    $password = $_POST['password'] ?? '';

    $user = (new User())->find($username, $password);

    if ($user) {
      $_SESSION['user'] = $user;
      header('Location: /pos-app/public');
      exit;
    } else {
      $this->smarty->assign('error', 'Username atau password salah');
      $this->smarty->display('auth/login.tpl');
    }
  }

  public function logout()
  {
    session_destroy();
    header('Location: /pos-app/public/index.php?page=login');
    exit;
  }
}
