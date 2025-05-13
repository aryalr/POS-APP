<?php

namespace App\Models;

use App\Config\Database;
use PDO;

class Sale
{
  public static function getAll()
  {
    $conn = Database::getInstance();
    $stmt = $conn->query("
        SELECT s.id_sale, s.sale_date, s.total_amount, u.username
        FROM sales s
        LEFT JOIN users u ON s.id_user = u.id_user
        ORDER BY s.sale_date DESC
    ");
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
  }

  public static function getById($id)
  {
    $conn = Database::getInstance();
    $stmt = $conn->prepare("SELECT * FROM sales WHERE id_sale = ?");
    $stmt->execute([$id]);
    return $stmt->fetch(PDO::FETCH_ASSOC);
  }

  public static function getDetails($saleId)
  {
    $conn = Database::getInstance();
    $stmt = $conn->prepare("SELECT sd.*, p.product_name 
                                FROM sale_details sd
                                JOIN products p ON sd.id_product = p.id_product
                                WHERE sd.id_sale = ?");
    $stmt->execute([$saleId]);
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
  }

  public static function insert($total, $userId)
  {
    $conn = Database::getInstance();
    $stmt = $conn->prepare("INSERT INTO sales (total_amount, id_user) VALUES (?, ?)");
    $stmt->execute([$total, $userId]);
    return $conn->lastInsertId();
  }

  public static function insertDetail($saleId, $productId, $quantity, $sellingPrice)
  {
    $conn = Database::getInstance();
    $stmt = $conn->prepare("INSERT INTO sale_details (id_sale, id_product, quantity, selling_price) VALUES (?, ?, ?, ?)");
    $stmt->execute([$saleId, $productId, $quantity, $sellingPrice]);
  }
}
