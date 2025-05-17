<?php

namespace App\Models;

use App\Config\Database;
use PDO;

class Laporan
{
  public static function getAllSalesReport()
  {
    $db = Database::getInstance();
    $stmt = $db->prepare("
            SELECT 
                s.id_sale,
                s.sale_date,
                u.username,
                s.total_amount
            FROM sales s
            LEFT JOIN users u ON s.id_user = u.id_user
            ORDER BY s.sale_date DESC
        ");
    $stmt->execute();
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
  }

  public static function getSaleDetails($id_sale)
  {
    $db = Database::getInstance();
    $stmt = $db->prepare("
            SELECT 
                p.product_name,
                sd.quantity,
                sd.selling_price,
                (sd.quantity * sd.selling_price) AS subtotal
            FROM sale_details sd
            JOIN products p ON sd.id_product = p.id_product
            WHERE sd.id_sale = ?
        ");
    $stmt->execute([$id_sale]);
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
  }
}
