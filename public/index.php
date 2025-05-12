<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require_once __DIR__ . '/../vendor/autoload.php';

use App\Controllers\SupplierController;

// Inisialisasi Smarty
$smarty = new Smarty();
$smarty->setTemplateDir(__DIR__ . '/../app/views/templates/');
$smarty->setCompileDir(__DIR__ . '/../app/views/templates_c/');
$smarty->setCacheDir(__DIR__ . '/../app/views/cache/');
$smarty->setConfigDir(__DIR__ . '/../app/views/configs/');

// Routing sederhana
$page = $_GET['page'] ?? 'supplier';
$action = $_GET['action'] ?? 'index';

switch ($page) {
    case 'supplier':
        $controller = new SupplierController($smarty);
        switch ($action) {
            case 'edit':
                $controller->edit();
                break;
            case 'update':
                $controller->update();
                break;
            case 'create' :
                $controller->create();
                break;
            case 'store' :
                $controller->store();
                break;
            case 'delete' :
                $controller->delete();
                break;
            default:
                $controller->index();
                break;
        }
        break;

    default:
        echo "404 Not Found";
}
