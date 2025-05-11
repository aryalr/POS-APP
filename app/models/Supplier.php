<?php
namespace App\Models;

use App\Config\Database;
use PDO;

class Supplier {
    public static function getAll() {
        $conn = Database::getInstance();
        $stmt = $conn->query("SELECT * FROM suppliers");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function getById($id) {
        $conn = Database::getInstance();
        $stmt = $conn->prepare("SELECT * FROM suppliers WHERE id_supplier = ?");
        $stmt->execute([$id]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public static function update($id, $name, $contact) {
        $conn = Database::getInstance();
        $stmt = $conn->prepare("UPDATE suppliers SET supplier_name = ?, contact_info = ? WHERE id_supplier = ?");
        return $stmt->execute([$name, $contact, $id]);
    }
}
