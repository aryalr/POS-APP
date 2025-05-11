<?php
class Supplier {
    // Ambil semua supplier
    public static function getAll() {
        $pdo = Database::getInstance();
        $stmt = $pdo->query("SELECT * FROM suppliers ORDER BY id DESC");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    // Simpan supplier baru
    public static function create($name, $contact, $address) {
        $pdo = Database::getInstance();
        $stmt = $pdo->prepare("INSERT INTO suppliers (supplier_name, contact_info, address) VALUES (?, ?, ?)");
        $stmt->execute([$name, $contact, $address]);
    }

    // Hapus supplier berdasarkan ID
    public static function delete($id) {
        $pdo = Database::getInstance();
        $stmt = $pdo->prepare("DELETE FROM suppliers WHERE id = ?");
        $stmt->execute([$id]);
    }
}
