<?php

require_once __DIR__ . '/../vendor/autoload.php';

use App\Controllers\SupplierController;

// Inisialisasi Smarty
$smarty = new Smarty();
$smarty->setTemplateDir(__DIR__ . '/../app/views/templates/');
$smarty->setCompileDir(__DIR__ . '/../app/views/templates_c/');
$smarty->setCacheDir(__DIR__ . '/../app/views/cache/');
$smarty->setConfigDir(__DIR__ . '/../app/views/configs/');

// Routing sederhana (sementara)
$page = $_GET['page'] ?? 'supplier';

switch ($page) {
    case 'supplier':
        $controller = new SupplierController($smarty);
        $controller->index();
        break;
    
    default:
        echo "404 Not Found";
}
