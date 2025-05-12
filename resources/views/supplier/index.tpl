{include file="../header.tpl" title="Manajemen Supplier"}

<div class="d-flex justify-content-between align-items-center mb-3">
    <h2>Daftar Supplier</h2>
    <a href="?page=supplier&action=create" class="btn btn-primary">+ Tambah Supplier</a>
</div>

{if $suppliers|@count > 0}
    <table class="table table-striped">
        <thead>
            <tr>
                <th>No.</th>
                <th>Nama Supplier</th>
                <th>Kontak</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            {foreach $suppliers as $index => $supplier}
                <tr>
                    <td>{$index+1}</td>
                    <td>{$supplier.supplier_name}</td>
                    <td>{$supplier.contact_info}</td>
                    <td>
                        <a href="?page=supplier&action=edit&id={$supplier.id_supplier}" class="btn btn-sm btn-warning">Edit</a>
                        <a href="?page=supplier&action=delete&id={$supplier.id_supplier}" class="btn btn-sm btn-danger" onclick="return confirm('Hapus supplier ini?')">Hapus</a>
                    </td>
                </tr>
            {/foreach}
        </tbody>
    </table>
{else}
    <div class="alert alert-info">Belum ada data supplier.</div>
{/if}

{include file="../footer.tpl"}
