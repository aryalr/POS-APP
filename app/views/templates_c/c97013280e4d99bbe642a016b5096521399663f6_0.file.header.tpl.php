<?php
/* Smarty version 4.5.5, created on 2025-05-15 11:53:42
  from '/opt/lampp/htdocs/POS-APP/app/views/templates/header.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.5',
  'unifunc' => 'content_6825b9a62d26e8_29081985',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c97013280e4d99bbe642a016b5096521399663f6' => 
    array (
      0 => '/opt/lampp/htdocs/POS-APP/app/views/templates/header.tpl',
      1 => 1746956953,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6825b9a62d26e8_29081985 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><?php echo (($tmp = $_smarty_tpl->tpl_vars['title']->value ?? null)===null||$tmp==='' ? "POS App" ?? null : $tmp);?>
</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
    <div class="container">
        <a class="navbar-brand" href="#">POS App</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="?page=supplier">Supplier</a></li>
                <li class="nav-item"><a class="nav-link" href="?page=product">Produk</a></li>
                <li class="nav-item"><a class="nav-link" href="?page=transaction">Transaksi</a></li>
                <li class="nav-item"><a class="nav-link" href="?page=report">Laporan</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
<?php }
}
