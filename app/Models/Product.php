<?php

namespace App\Models;

use App\Config\Database;
use PDO;

class Product
{
    public static function getAll()
    {
        $conn = Database::getInstance();
        $stmt = $conn->query("SELECT products.*, suppliers.supplier_name 
                              FROM products 
                              LEFT JOIN suppliers ON products.id_supplier = suppliers.id_supplier");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function getById($id)
    {
        $conn = Database::getInstance();
        $stmt = $conn->prepare("SELECT * FROM products WHERE id_product = ?");
        $stmt->execute([$id]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public static function insert($name, $price, $stock, $supplierId)
    {
        $conn = Database::getInstance();
        $stmt = $conn->prepare("INSERT INTO products (product_name, price, stock, id_supplier) VALUES (?, ?, ?, ?)");
        return $stmt->execute([$name, $price, $stock, $supplierId]);
    }

    public static function update($id, $name, $price, $stock, $supplierId)
    {
        $conn = Database::getInstance();
        $stmt = $conn->prepare("UPDATE products SET product_name = ?, price = ?, stock = ?, id_supplier = ? WHERE id_product = ?");
        return $stmt->execute([$name, $price, $stock, $supplierId, $id]);
    }

    public static function delete($id)
    {
        $conn = Database::getInstance();
        $stmt = $conn->prepare("DELETE FROM products WHERE id_product = ?");
        return $stmt->execute([$id]);
    }
}
