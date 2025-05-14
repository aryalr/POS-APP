{include file="../header.tpl"}

<h2 class="mt-4">Daftar Transaksi</h2>

<a href="index.php?page=transaction_create" class="btn btn-primary mb-3">+ Transaksi Baru</a>

<table class="table table-bordered table-striped">
  <thead class="table-dark">
    <tr>
      <th>No.</th>
      <th>Tanggal</th>
      <th>Total</th>
      <th>Kasir</th>
      <th>Aksi</th>
    </tr>
  </thead>
  <tbody>
    {foreach from=$transactions item=trx}
      <tr>
        <td>{$trx.id_sale}</td>
        <td>{$trx.sale_date}</td>
        <td>Rp {number_format($trx.total_amount, 0, ',', '.')}</td>
        <td>{$trx.username|default:'-'}</td>
        <td>
          <a href="?page=transaction&action=detail&id={$trx.id_sale}" class="btn btn-info btn-sm">Detail</a>
        </td>
      </tr>
    {/foreach}
  </tbody>
</table>

{include file="../footer.tpl"}