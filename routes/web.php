<?php

use App\Controllers\LaporanController;
use App\Controllers\SupplierController;
use App\Controllers\ProductController;
use App\Controllers\TransactionController;
use App\Controllers\AuthController;

return [
    'login' => AuthController::class,
    'logout' => AuthController::class,
    'supplier' => SupplierController::class,
    'product'  => ProductController::class,
    'transaction' => TransactionController::class,
    'report' => LaporanController::class,
];
