{include file="../header.tpl"}

<h2 class="mt-4">Laporan Penjualan</h2>

<table class="table table-bordered table-striped mt-3">
  <thead class="table-dark">
    <tr>
      <th>ID Transaksi</th>
      <th>Tanggal</th>
      <th>Kasir</th>
      <th>Total</th>
      <th>Aksi</th>
    </tr>
  </thead>
  <tbody>
    {foreach from=$laporan item=row}
      <tr>
        <td>{$row.id_sale}</td>
        <td>{$row.sale_date}</td>
        <td>{$row.username}</td>
        <td>Rp {number_format($row.total_amount, 0, ',', '.')}</td>
        <td>
          <a href="index.php?page=report&action=detail&id={$row.id_sale}" class="btn btn-info btn-sm">Detail</a>
        </td>
      </tr>
    {/foreach}
  </tbody>
</table>

{include file="../footer.tpl"}