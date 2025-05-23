<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require_once __DIR__ . '/../vendor/autoload.php';

session_start();

// Inisialisasi Smarty
$smarty = new Smarty();
$smarty->setTemplateDir(__DIR__ . '/../resources/views/');
$smarty->setCompileDir(__DIR__ . '/../storage/smarty/compile/');
$smarty->setCacheDir(__DIR__ . '/../storage/smarty/cache/');
$smarty->registerPlugin("modifier", "number_format", "number_format");

// Ambil routing
$routes = require __DIR__ . '/../routes/web.php';

// Ambil parameter dari URL
$page = $_GET['page'] ?? 'supplier';
$action = $_GET['action'] ?? 'index';

// Cari controller berdasarkan route
if (array_key_exists($page, $routes)) {
    $controllerClass = $routes[$page];
    $controller = new $controllerClass($smarty);

    // Panggil method action-nya jika ada
    if (method_exists($controller, $action)) {
        $controller->$action();
    } else {
        echo "Action '$action' not found in controller '$page'";
    }
} else {
    echo "Page '$page' not found.";
}
