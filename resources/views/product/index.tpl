{include file="../header.tpl" title="Manajemen Produk"}

<div class="container mt-4">
  <div class="card shadow">
    <div class="card-header bg-primary text-white">
      <h2 class="mb-0 fs-4"><i class="bi bi-box-seam me-2"></i>Daftar Produk</h2>
    </div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-striped table-hover">
          <thead class="table-dark">
            <tr>
              <th>Nama Produk</th>
              <th>Harga Beli</th>
              <th>Harga Jual</th>
              <th>Stok</th>
              <th>Supplier</th>
              <th class="text-center">Actions</th>
            </tr>
          </thead>
          <tbody>
            {foreach $products as $product}
              <tr>
                <td class="align-middle">{$product.product_name}</td>
                <td class="align-middle">Rp {number_format($product.purchase_price, 0, ',', '.')}</td>
                <td class="align-middle">Rp {number_format($product.selling_price, 0, ',', '.')}</td>
                <td class="align-middle">
                  {if $product.stock <= 5}
                    <span class="badge bg-danger">{$product.stock}</span>
                  {elseif $product.stock <= 10}
                    <span class="badge bg-warning text-dark">{$product.stock}</span>
                  {else}
                    <span class="badge bg-success">{$product.stock}</span>
                  {/if}
                </td>
                <td class="align-middle">{$product.supplier_name}</td>
                <td class="text-center align-middle">
                  <div class="btn-group" role="group">
                    <a href="?page=product&action=edit&id={$product.id_product}" class="btn btn-sm btn-warning">
                      <i class="bi bi-pencil-square"></i> Edit
                    </a>
                    <a href="?page=product&action=delete&id={$product.id_product}" class="btn btn-sm btn-danger"
                      onclick="return confirm('Yakin ingin menghapus produk ini?')">
                      <i class="bi bi-trash"></i> Delete
                    </a>
                  </div>
                </td>
              </tr>
            {foreachelse}
              <tr>
                <td colspan="6" class="text-center py-3">Tidak ada produk yang tersedia</td>
              </tr>
            {/foreach}
          </tbody>
        </table>
      </div>
    </div>
    <div class="card-footer">
      <a href="?page=product&action=create" class="btn btn-success">
        <i class="bi bi-plus-circle"></i> Tambah Produk Baru
      </a>
    </div>
  </div>
</div>

{include file="../footer.tpl"}