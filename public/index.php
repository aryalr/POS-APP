<?php
require_once '../config/config.php';
require_once '../libs/Database.php';
require_once '../libs/Smarty/Smarty.class.php';

// Inisialisasi Smarty
$smarty = new Smarty\Smarty;
$smarty->setTemplateDir(SMARTY_TEMPLATE_DIR);
$smarty->setCompileDir(SMARTY_COMPILE_DIR);

// Routing sederhana
$page = $_GET['page'] ?? 'dashboard';

switch ($page) {
    case 'products':
        require_once '../app/controllers/ProductController.php';
        $controller = new ProductController($smarty);
        $controller->index();
        break;

    case 'suppliers':
        require_once '../app/controllers/SupplierController.php';
        $controller = new SupplierController($smarty);

        if ($_GET['action'] ?? '' === 'store') {
            $controller->store();
        } elseif ($_GET['action'] ?? '' === 'delete') {
            $controller->delete();
        } else {
            $controller->index();
        }
        break;

    default:
        $smarty->display('dashboard.tpl');
        break;
}
