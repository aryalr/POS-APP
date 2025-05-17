{include file="../header.tpl" title="Manajemen Supplier"}

<div class="container mt-4">
    <div class="card shadow">
        <div class="card-header bg-primary text-white">
            <h2 class="mb-0 fs-4"><i class="bi bi-building me-2"></i>Daftar Supplier</h2>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                {if $suppliers|@count > 0}
                    <table class="table table-striped table-hover">
                        <thead class="table-dark">
                            <tr>
                                <th width="60">No.</th>
                                <th>Nama Supplier</th>
                                <th>Kontak / Alamat</th>
                                <th class="text-center" width="180">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach $suppliers as $index => $supplier}
                                <tr>
                                    <td class="align-middle">{$index+1}</td>
                                    <td class="align-middle fw-bold">{$supplier.supplier_name}</td>
                                    <td class="align-middle">
                                        <div style="white-space: pre-line;">{$supplier.contact_info}</div>
                                    </td>
                                    <td class="text-center align-middle">
                                        <div class="btn-group" role="group">
                                            <a href="?page=supplier&action=edit&id={$supplier.id_supplier}"
                                                class="btn btn-sm btn-warning">
                                                <i class="bi bi-pencil-square"></i> Edit
                                            </a>
                                            <a href="?page=supplier&action=delete&id={$supplier.id_supplier}"
                                                class="btn btn-sm btn-danger"
                                                onclick="return confirm('Apakah Anda yakin ingin menghapus supplier ini? Tindakan ini tidak dapat dibatalkan.')">
                                                <i class="bi bi-trash"></i> Hapus
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            {/foreach}
                        </tbody>
                    </table>
                {else}
                    <div class="alert alert-info d-flex align-items-center">
                        <i class="bi bi-info-circle-fill me-2 fs-4"></i>
                        <div>Belum ada data supplier. Silakan tambahkan supplier baru.</div>
                    </div>
                {/if}
            </div>
        </div>
        <div class="card-footer">
            <a href="?page=supplier&action=create" class="btn btn-success">
                <i class="bi bi-plus-circle"></i> Tambah Supplier Baru
            </a>
        </div>
    </div>
</div>

{include file="../footer.tpl"}