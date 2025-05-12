<?php

namespace App\Controllers;

use App\Models\Supplier;
use Smarty;

class SupplierController {
    protected $smarty;

    public function __construct(Smarty $smarty) {
        $this->smarty = $smarty;
    }

    public function index() {
        $suppliers = Supplier::getAll();
        $this->smarty->assign('suppliers', $suppliers);
        $this->smarty->display('supplier/index.tpl');
    }

    public function create() {
        $this->smarty->display('supplier/create.tpl');
    }

    public function store() {
        $name = $_POST['supplier_name'] ?? '';
        $contact = $_POST['contact_info'] ?? '';
        if (!empty($name)) {
            Supplier::create($name, $contact);
            header("Location: index.php?page=supplier");
            exit;
        } else {
            echo "Nama supplier tidak boleh kosong.";
        }
    }

    public function edit() {
        $id = $_GET['id'] ?? null;
        if ($id) {
            $supplier = Supplier::getById($id);
            if ($supplier) {
                $this->smarty->assign('supplier', $supplier);
                $this->smarty->display('supplier/edit.tpl');
                return;
            }
        }
        echo "Data tidak ditemukan.";
    }

    public function update() {
        $id = $_POST['id_supplier'] ?? null;
        $name = $_POST['supplier_name'] ?? '';
        $contact = $_POST['contact_info'] ?? '';

        if ($id && !empty($name)) {
            Supplier::update($id, $name, $contact);
            header("Location: index.php?page=supplier");
            exit;
        } else {
            echo "Gagal memperbarui data.";
        }
    }

    public function delete() {
        $id = $_GET['id'] ?? null;
        if ($id) {
            Supplier::delete($id);
            header("Location: index.php?page=supplier");
            exit;
        } else {
            echo "ID tidak ditemukan untuk penghapusan.";
        }
    }
}
