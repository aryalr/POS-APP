{include file="../header.tpl"}

<h2 class="mt-4">Detail Transaksi</h2>

<table class="table table-bordered mt-3">
  <thead class="table-light">
    <tr>
      <th>Nama Produk</th>
      <th>Jumlah</th>
      <th>Harga Jual</th>
      <th>Subtotal</th>
    </tr>
  </thead>
  <tbody>
    {assign var="grandTotal" value=0}
    {foreach from=$details item=detail}
      <tr>
        <td>{$detail.product_name}</td>
        <td>{$detail.quantity}</td>
        <td>Rp {number_format($detail.selling_price, 0, ',', '.')}</td>
        <td>Rp {number_format($detail.subtotal, 0, ',', '.')}</td>
        {assign var="grandTotal" value=$grandTotal + $detail.subtotal}
      </tr>
    {/foreach}
    <tr>
      <td colspan="3"><strong>Total</strong></td>
      <td><strong>Rp {number_format($grandTotal, 0, ',', '.')}</strong></td>
    </tr>
  </tbody>
</table>

<a href="index.php?page=report" class="btn btn-secondary">Kembali</a>

{include file="../footer.tpl"}