{include file="../header.tpl"}

<h2 class="mt-4">Detail Transaksi #{$transaction.id_sale}</h2>

<p><strong>Tanggal:</strong> {$transaction.sale_date}</p>
<p><strong>Kasir:</strong> {$transaction.username}</p>
<p><strong>Total:</strong> Rp {number_format($transaction.total_amount, 0, ',', '.')}</p>

<table class="table table-bordered mt-3">
  <thead>
    <tr>
      <th>Produk</th>
      <th>Jumlah</th>
      <th>Harga Satuan</th>
      <th>Subtotal</th>
    </tr>
  </thead>
  <tbody>
    {foreach from=$details item=detail}
      <tr>
        <td>{$detail.product_name}</td>
        <td>{$detail.quantity}</td>
        <td>Rp {number_format($detail.selling_price, 0, ',', '.')}</td>
        <td>Rp {number_format($detail.quantity * $detail.selling_price, 0, ',', '.')}</td>
      </tr>
    {/foreach}
  </tbody>
</table>

<a href="index.php?page=transaction" class="btn btn-secondary">Kembali</a>

{include file="../footer.tpl"}