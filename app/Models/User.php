<?php

namespace App\Models;

use App\Config\Database;
use PDO;

class User
{
  private $db;

  public function __construct()
  {
    $this->db = Database::getInstance();
  }

  public function find($username, $password)
  {
    $stmt = $this->db->prepare("SELECT * FROM users WHERE username = ? AND password = ?");
    $stmt->execute([$username, md5($password)]);
    return $stmt->fetch(PDO::FETCH_ASSOC);
  }
}
