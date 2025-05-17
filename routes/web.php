<?php

use App\Controllers\LaporanController;
use App\Controllers\SupplierController;
use App\Controllers\ProductController;
use App\Controllers\TransactionController;

return [
    'supplier' => SupplierController::class,
    'product'  => ProductController::class,
    'transaction' => TransactionController::class,
    'report' => LaporanController::class,
];
