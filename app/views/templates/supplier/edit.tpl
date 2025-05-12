{include file="../header.tpl"}

<h2>Edit Supplier</h2>

<form method="POST" action="index.php?page=supplier_update">
    <input type="hidden" name="id_supplier" value="{$supplier.id_supplier}">
    
    <div>
        <label>Nama Supplier</label>
        <input type="text" name="supplier_name" value="{$supplier.supplier_name}" required>
    </div>
    
    <div>
        <label>Kontak</label>
        <textarea name="contact_info" required>{$supplier.contact_info}</textarea>
    </div>
    
    <div>
        <button type="submit">Update</button>
        <a href="index.php?page=supplier">Batal</a>
    </div>
</form>

{include file="../footer.tpl"}
