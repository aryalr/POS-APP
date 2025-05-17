{include file="../header.tpl"}

<div class="container mt-4">
  <div class="card shadow">
    <div class="card-header bg-success text-white d-flex align-items-center">
      <i class="bi bi-plus-circle me-2 fs-4"></i>
      <h2 class="mb-0 fs-4">Tambah Produk Baru</h2>
    </div>
    <div class="card-body">
      <form method="POST" action="?page=product&action=store" class="needs-validation" novalidate>
        <div class="row mb-3">
          <div class="col-md-6">
            <div class="form-group mb-3">
              <label for="product_name" class="form-label fw-bold">Nama Produk</label>
              <input type="text" class="form-control" id="product_name" name="product_name"
                placeholder="Masukkan nama produk" required>
              <div class="invalid-feedback">Harap masukkan nama produk</div>
            </div>

            <div class="form-group mb-3">
              <label for="purchase_price" class="form-label fw-bold">Harga Beli (Rp)</label>
              <div class="input-group">
                <span class="input-group-text">Rp</span>
                <input type="number" class="form-control" id="purchase_price" name="purchase_price" placeholder="0"
                  required min="0">
                <div class="invalid-feedback">Harap masukkan harga beli yang valid</div>
              </div>
            </div>

            <div class="form-group mb-3">
              <label for="selling_price" class="form-label fw-bold">Harga Jual (Rp)</label>
              <div class="input-group">
                <span class="input-group-text">Rp</span>
                <input type="number" class="form-control" id="selling_price" name="selling_price" placeholder="0"
                  required min="0">
                <div class="invalid-feedback">Harap masukkan harga jual yang valid</div>
              </div>
              <small class="form-text text-muted">Harga jual sebaiknya lebih tinggi dari harga beli</small>
            </div>
          </div>

          <div class="col-md-6">
            <div class="form-group mb-3">
              <label for="stock" class="form-label fw-bold">Stok</label>
              <input type="number" class="form-control" id="stock" name="stock" placeholder="0" required min="0">
              <div class="invalid-feedback">Harap masukkan jumlah stok yang valid</div>
            </div>

            <div class="form-group mb-3">
              <label for="id_supplier" class="form-label fw-bold">Supplier</label>
              <select class="form-select" id="id_supplier" name="id_supplier" required>
                <option value="" selected disabled>Pilih supplier</option>
                {foreach $suppliers as $supplier}
                  <option value="{$supplier.id_supplier}">{$supplier.supplier_name}</option>
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
            <i class="bi bi-plus-circle me-1"></i> Tambah Produk
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

      // Validasi untuk memastikan harga jual > harga beli
      document.getElementById('selling_price').addEventListener('change', function() {
        var purchasePrice = parseInt(document.getElementById('purchase_price').value) || 0;
        var sellingPrice = parseInt(this.value) || 0;

        if (sellingPrice <= purchasePrice && sellingPrice > 0) {
          this.setCustomValidity('Harga jual harus lebih besar dari harga beli');
        } else {
          this.setCustomValidity('');
        }
      });
    }, false);
  })();
</script>

{include file="../footer.tpl"}