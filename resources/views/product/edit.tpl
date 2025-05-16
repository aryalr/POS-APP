{include file="../header.tpl"}

<div class="container mt-4">
  <div class="card shadow">
    <div class="card-header bg-warning text-dark d-flex align-items-center">
      <i class="bi bi-pencil-square me-2 fs-4"></i>
      <h2 class="mb-0 fs-4">Edit Produk</h2>
    </div>
    <div class="card-body">
      <form method="POST" action="?page=product&action=update" class="needs-validation" novalidate>
        <input type="hidden" name="id_product" value="{$product.id_product}">

        <div class="row mb-3">
          <div class="col-md-6">
            <div class="form-group mb-3">
              <label for="product_name" class="form-label fw-bold">Nama Produk</label>
              <input type="text" class="form-control" id="product_name" name="product_name"
                value="{$product.product_name}" required>
              <div class="invalid-feedback">Harap masukkan nama produk</div>
            </div>

            <div class="form-group mb-3">
              <label for="purchase_price" class="form-label fw-bold">Harga Beli (Rp)</label>
              <div class="input-group">
                <span class="input-group-text">Rp</span>
                <input type="number" class="form-control" id="purchase_price" name="purchase_price"
                  value="{$product.purchase_price}" required min="0">
                <div class="invalid-feedback">Harap masukkan harga beli yang valid</div>
              </div>
            </div>

            <div class="form-group mb-3">
              <label for="selling_price" class="form-label fw-bold">Harga Jual (Rp)</label>
              <div class="input-group">
                <span class="input-group-text">Rp</span>
                <input type="number" class="form-control" id="selling_price" name="selling_price"
                  value="{$product.selling_price}" required min="0">
                <div class="invalid-feedback">Harap masukkan harga jual yang valid</div>
              </div>
            </div>
          </div>

          <div class="col-md-6">
            <div class="form-group mb-3">
              <label for="stock" class="form-label fw-bold">Stok</label>
              <input type="number" class="form-control" id="stock" name="stock" value="{$product.stock}" required
                min="0">
              <div class="invalid-feedback">Harap masukkan jumlah stok yang valid</div>
            </div>

            <div class="form-group mb-3">
              <label for="id_supplier" class="form-label fw-bold">Supplier</label>
              <select class="form-select" id="id_supplier" name="id_supplier" required>
                <option value="" disabled>Pilih supplier</option>
                {foreach $suppliers as $supplier}
                  <option value="{$supplier.id_supplier}" {if $supplier.id_supplier == $product.id_supplier}selected{/if}>
                    {$supplier.supplier_name}
                  </option>
                {/foreach}
              </select>
              <div class="invalid-feedback">Harap pilih supplier</div>
            </div>
          </div>
        </div>

        <div class="border-top pt-3 d-flex justify-content-between">
          <a href="index.php?page=product" class="btn btn-secondary">
            <i class="bi bi-arrow-left me-1"></i> Kembali
          </a>
          <button type="submit" class="btn btn-success">
            <i class="bi bi-save me-1"></i> Simpan Perubahan
          </button>
        </div>
      </form>
    </div>
  </div>
</div>

<script>
  // Bootstrap form validation
  (function() {
    'use strict';
    window.addEventListener('load', function() {
      var forms = document.getElementsByClassName('needs-validation');
      var validation = Array.prototype.filter.call(forms, function(form) {
        form.addEventListener('submit', function(event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }
          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  })();
</script>

{include file="../footer.tpl"}