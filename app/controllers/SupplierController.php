<?php

namespace App\Controllers;

use App\Config\Database; // tambahkan ini
use Smarty;

class SupplierController
{
    private $smarty;
    private $conn;

    public function __construct(Smarty $smarty)
    {
        $this->smarty = $smarty;
        $this->conn = Database::getInstance(); // gunakan class Database yang kamu buat
    }

    public function index()
    {
        $stmt = $this->conn->query("SELECT * FROM suppliers");
        $suppliers = $stmt->fetchAll(\PDO::FETCH_ASSOC);

        $this->smarty->assign('suppliers', $suppliers);
        $this->smarty->display('supplier/index.tpl');
    }

    public function create()
    {
        $this->smarty->display('supplier/create.tpl');
    }

    public function store()
    {
        $name = $_POST['supplier_name'] ?? '';
        $contact = $_POST['contact_info'] ?? '';

        $stmt = $this->conn->prepare("INSERT INTO suppliers (supplier_name, contact_info) VALUES (?, ?)");
        $stmt->execute([$name, $contact]);

        header("Location: index.php?page=supplier");
        exit;
    }

    public function edit()
    {
        $id = $_GET['id'] ?? null;

        if ($id) {
            $stmt = $this->conn->prepare("SELECT * FROM suppliers WHERE id_supplier = ?");
            $stmt->execute([$id]);
            $supplier = $stmt->fetch(\PDO::FETCH_ASSOC);

            if ($supplier) {
                $this->smarty->assign('supplier', $supplier);
                $this->smarty->display('supplier/edit.tpl');
                return;
            }
        }

        echo "Data tidak ditemukan.";
    }

    public function update()
    {
        $id = $_POST['id_supplier'] ?? null;
        $name = $_POST['supplier_name'] ?? '';
        $contact = $_POST['contact_info'] ?? '';

        if ($id) {
            $stmt = $this->conn->prepare("UPDATE suppliers SET supplier_name = ?, contact_info = ? WHERE id_supplier = ?");
            $stmt->execute([$name, $contact, $id]);

            header("Location: index.php?page=supplier");
            exit;
        }

        echo "Gagal memperbarui data.";
    }
}
