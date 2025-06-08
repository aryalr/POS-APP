{include file="../header.tpl" title="Laporan Transaksi"}

<div class="container mt-4">
  <div class="card shadow">
    <div class="card-header bg-primary text-white">
      <h2 class="mb-0 fs-4"><i class="bi bi-receipt me-2"></i>Daftar Transaksi</h2>
    </div>
    <div class="card-body">
      <a href="?page=transaction&action=create" class="btn btn-success mb-3">
        <i class="bi bi-plus-circle me-2"></i>Transaksi Baru
      </a>
      <div class="table-responsive">
        <table class="table table-striped table-hover">
          <thead class="table-dark">
            <tr>
              <th>No.</th>
              <th>Tanggal</th>
              <th>Total</th>
              <th>Kasir</th>
              <th class="text-center">Aksi</th>
            </tr>
          </thead>
          <tbody>
            {foreach from=$transactions item=trx}
              <tr>
                <td class="align-middle">{$trx.id_sale}</td>
                <td class="align-middle">{$trx.sale_date}</td>
                <td class="align-middle">Rp {number_format($trx.total_amount, 0, ',', '.')}</td>
                <td class="align-middle">{$trx.username|default:'-'}</td>
                <td class="text-center align-middle">
                  <a href="?page=transaction&action=detail&id={$trx.id_sale}" class="btn btn-info btn-sm">
                    <i class="bi bi-eye"></i> Detail
                  </a>
                </td>
              </tr>
            {foreachelse}
              <tr>
                <td colspan="5" class="text-center py-3">Tidak ada transaksi yang tersedia</td>
              </tr>
            {/foreach}
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>

{include file="../footer.tpl"}