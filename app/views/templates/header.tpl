<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>{$title|default:"POS App"}</title>
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
