{include file="../header.tpl" title="Cetak Transaksi"}

<div class="content-wrapper">
  <div class="container mt-4">
    <div class="card shadow">
      <div class="card-header bg-primary text-white">
        <h2 class="mb-0 fs-4"><i class="bi bi-graph-up me-2"></i>Laporan Penjualan</h2>
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table class="table table-striped table-hover">
            <thead class="table-dark">
              <tr>
                <th>ID Transaksi</th>
                <th>Tanggal</th>
                <th>Kasir</th>
                <th>Total</th>
                <th class="text-center">Aksi</th>
              </tr>
            </thead>
            <tbody>
              {foreach from=$laporan item=row}
                <tr>
                  <td class="align-middle">{$row.id_sale}</td>
                  <td class="align-middle">{$row.sale_date}</td>
                  <td class="align-middle">{$row.username}</td>
                  <td class="align-middle">Rp {number_format($row.total_amount, 0, ',', '.')}</td>
                  <td class="text-center align-middle">
                    <div class="btn-group" role="group">
                      <a href="index.php?page=report&action=detail&id={$row.id_sale}" class="btn btn-info btn-sm">
                        <i class="bi bi-eye"></i> Detail
                      </a>
                      <a href="index.php?page=report&action=print&id={$row.id_sale}" class="btn btn-success btn-sm"
                        target="_blank">
                        <i class="bi bi-printer"></i> Print Nota
                      </a>
                    </div>
                  </td>
                </tr>
              {foreachelse}
                <tr>
                  <td colspan="5" class="text-center py-3">Tidak ada data laporan penjualan.</td>
                </tr>
              {/foreach}
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
{include file="../footer.tpl"}