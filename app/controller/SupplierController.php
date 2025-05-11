<?php
require_once '../app/models/Supplier.php';

class SupplierController {
    private $smarty;

    public function __construct($smarty) {
        $this->smarty = $smarty;
    }

    // Menampilkan daftar supplier
    public function index() {
        $suppliers = Supplier::getAll();
        $this->smarty->assign('suppliers', $suppliers);
        $this->smarty->display('suppliers.tpl');
    }

    // Menyimpan data supplier baru
    public function store() {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $name = $_POST['name'] ?? '';
            $contact = $_POST['contact'] ?? '';
            $address = $_POST['address'] ?? '';

            Supplier::create($name, $contact, $address);
            header('Location: index.php?page=suppliers');
            exit;
        }
    }

    // Menghapus supplier berdasarkan ID
    public function delete() {
        if (isset($_GET['id'])) {
            $id = intval($_GET['id']);
            Supplier::delete($id);
        }
        header('Location: index.php?page=suppliers');
        exit;
    }
}
