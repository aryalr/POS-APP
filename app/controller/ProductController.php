<?php
require_once '../app/models/Product.php';

class ProductController {
    private $smarty;

    public function __construct($smarty) {
        $this->smarty = $smarty;
    }

    public function index() {
        $products = Product::getAll();
        $this->smarty->assign('products', $products);
        $this->smarty->display('products.tpl');
    }
}
