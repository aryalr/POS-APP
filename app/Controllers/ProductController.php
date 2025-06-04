<?php

namespace App\Controllers;

use App\Models\Product;
use App\Models\Supplier;
use Smarty;
use App\Middleware\AuthMiddleware;

class ProductController
{
    private $smarty;

    public function __construct(Smarty $smarty)
    {
        AuthMiddleware::handle();
        $this->smarty = $smarty;
    }

    public function index()
    {
        $products = Product::getAll();
        $this->smarty->assign('products', $products);
        $this->smarty->display('product/index.tpl');
    }

    public function create()
    {
        $suppliers = Supplier::getAll();
        $this->smarty->assign('suppliers', $suppliers);
        $this->smarty->display('product/create.tpl');
    }

    public function store()
    {
        $name = $_POST['product_name'];
        $purchasePrice = $_POST['purchase_price'];
        $sellingPrice = $_POST['selling_price'];
        $stock = $_POST['stock'];
        $supplierId = $_POST['id_supplier'];

        Product::insert($name, $purchasePrice, $sellingPrice, $stock, $supplierId);
        header('Location: index.php?page=product');
    }

    public function edit()
    {
        $id = $_GET['id'] ?? null;
        if ($id) {
            $product = Product::getById($id);
            $suppliers = Supplier::getAll();
            $this->smarty->assign('product', $product);
            $this->smarty->assign('suppliers', $suppliers);
            $this->smarty->display('product/edit.tpl');
        }
    }

    public function update()
    {
        $id = $_POST['id_product'];
        $name = $_POST['product_name'];
        $purchasePrice = $_POST['purchase_price'];
        $sellingPrice = $_POST['selling_price'];
        $stock = $_POST['stock'];
        $supplierId = $_POST['id_supplier'];

        Product::update($id, $name, $purchasePrice, $sellingPrice, $stock, $supplierId);
        header('Location: index.php?page=product');
    }

    public function delete()
    {
        $id = $_GET['id'];
        Product::delete($id);
        header('Location: index.php?page=product');
    }
}
