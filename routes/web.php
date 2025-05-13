<?php

use App\Controllers\SupplierController;
use App\Controllers\ProductController;
use App\Controllers\TransactionController;

return [
    'supplier' => SupplierController::class,
    'product'  => ProductController::class,
    'transaction' => TransactionController::class,
];
