<!DOCTYPE html>
<html lang="id">

<head>
  <meta charset="UTF-8">
  <title>#</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 20px;
    }

    h2 {
      text-align: center;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    th,
    td {
      border: 1px solid #000;
      padding: 8px;
      text-align: left;
    }

    th {
      background-color: #f2f2f2;
    }

    .text-end {
      text-align: right;
    }

    .mt-3 {
      margin-top: 1.5rem;
    }

    .fw-bold {
      font-weight: bold;
    }
  </style>
</head>

<body onload="window.print()">

  <h2>Nota Penjualan</h2>

  <p><strong>ID Transaksi:</strong> {$nota[0].id_sale}</p>
  <p><strong>Tanggal:</strong> {$nota[0].sale_date}</p>
  <p><strong>Kasir:</strong> {$nota[0].username}</p>

  <table>
    <thead>
      <tr>
        <th>Produk</th>
        <th>Jumlah</th>
        <th>Harga</th>
        <th>Subtotal</th>
      </tr>
    </thead>
    <tbody>
      {foreach from=$nota item=item}
        <tr>
          <td>{$item.product_name}</td>
          <td>{$item.quantity}</td>
          <td>Rp {number_format($item.selling_price, 0, ',', '.')}</td>
          <td>Rp {number_format($item.subtotal, 0, ',', '.')}</td>
        </tr>
      {/foreach}
    </tbody>
  </table>

  <p class="text-end fw-bold mt-3">Total: Rp {number_format($total, 0, ',', '.')}</p>

</body>

</html>