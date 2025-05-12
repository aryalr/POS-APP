<?php
/* Smarty version 4.5.5, created on 2025-05-12 16:56:33
  from 'C:\xampp\htdocs\POS-APP\resources\views\header.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.5',
  'unifunc' => 'content_68220c215282d3_50552422',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4d5c2a565d8acb669ae253128a4121270a4d8624' => 
    array (
      0 => 'C:\\xampp\\htdocs\\POS-APP\\resources\\views\\header.tpl',
      1 => 1747060500,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_68220c215282d3_50552422 (Smarty_Internal_Template $_smarty_tpl) {
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
