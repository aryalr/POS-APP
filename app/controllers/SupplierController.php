<?php

namespace App\Controllers;

class SupplierController
{
    private $smarty;

    public function __construct($smarty)
    {
        $this->smarty = $smarty;
    }

    public function index()
    {
        $this->smarty->display('supplier/index.tpl');
    }
}
