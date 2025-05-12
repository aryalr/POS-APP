{include file="../header.tpl" title="Tambah Supplier"}

<h2>Tambah Supplier</h2>

<form action="?page=supplier&action=store" method="post">
    <div class="mb-3">
        <label for="supplier_name" class="form-label">Nama Supplier</label>
        <input type="text" class="form-control" id="supplier_name" name="supplier_name" required>
    </div>
    <div class="mb-3">
        <label for="contact_info" class="form-label">Kontak / Alamat</label>
        <textarea class="form-control" id="contact_info" name="contact_info" rows="3" required></textarea>
    </div>
    <button type="submit" class="btn btn-success">Simpan</button>
    <a href="?page=supplier" class="btn btn-secondary">Batal</a>
</form>

{include file="../footer.tpl"}
