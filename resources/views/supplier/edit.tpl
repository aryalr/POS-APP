{include file="../header.tpl"}

<div class="container mt-5">
    <div class="card shadow">
        <div class="card-header bg-primary text-white">
            <h4 class="mb-0">Edit Supplier</h4>
        </div>
        <div class="card-body">
            <form method="POST" action="index.php?page=supplier_update">
                <input type="hidden" name="id_supplier" value="{$supplier.id_supplier}">

                <div class="mb-3">
                    <label for="supplierName" class="form-label">Nama Supplier</label>
                    <input type="text" class="form-control" id="supplierName" name="supplier_name"
                        value="{$supplier.supplier_name}" required>
                </div>

                <div class="mb-3">
                    <label for="contactInfo" class="form-label">Kontak</label>
                    <textarea class="form-control" id="contactInfo" name="contact_info" rows="4"
                        required>{$supplier.contact_info}</textarea>
                </div>

                <div class="d-flex justify-content-between">
                    <button type="submit" class="btn btn-success">Update</button>
                    <a href="index.php?page=supplier" class="btn btn-secondary">Batal</a>
                </div>
            </form>
        </div>
    </div>
</div>

{include file="../footer.tpl"}