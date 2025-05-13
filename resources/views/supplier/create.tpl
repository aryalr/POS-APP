{include file="../header.tpl" title="Tambah Supplier"}

<div class="container mt-4">
    <div class="card shadow">
        <div class="card-header bg-success text-white d-flex align-items-center">
            <i class="bi bi-building-add me-2 fs-4"></i>
            <h2 class="mb-0 fs-4">Tambah Supplier Baru</h2>
        </div>
        <div class="card-body">
            <form action="?page=supplier&action=store" method="post" class="needs-validation" novalidate>
                <div class="row">
                    <div class="col-md-8 mx-auto">
                        <div class="mb-4">
                            <label for="supplier_name" class="form-label fw-bold">Nama Supplier</label>
                            <input type="text" class="form-control" id="supplier_name" name="supplier_name"
                                placeholder="Masukkan nama supplier" required>
                            <div class="invalid-feedback">Nama supplier tidak boleh kosong</div>
                        </div>

                        <div class="mb-4">
                            <label for="contact_info" class="form-label fw-bold">Kontak / Alamat</label>
                            <textarea class="form-control" id="contact_info" name="contact_info" rows="4"
                                placeholder="Masukkan informasi kontak dan alamat supplier" required></textarea>
                            <div class="invalid-feedback">Informasi kontak tidak boleh kosong</div>
                            <small class="form-text text-muted mt-1">
                                <i class="bi bi-info-circle me-1"></i>
                                Masukkan nomor telepon, email, dan alamat lengkap supplier
                            </small>
                        </div>
                    </div>
                </div>

                <div class="border-top pt-3 d-flex justify-content-between">
                    <a href="?page=supplier" class="btn btn-secondary">
                        <i class="bi bi-arrow-left me-1"></i> Kembali
                    </a>
                    <button type="submit" class="btn btn-success">
                        <i class="bi bi-save me-1"></i> Simpan Supplier
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