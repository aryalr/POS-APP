{include file="header.tpl"}

<div class="container mt-4">
    <h2>Daftar Supplier</h2>

    <form method="post" action="index.php?page=suppliers&action=store" class="mb-4">
        <div>
            <label>Nama Supplier:</label>
            <input type="text" name="name" required>
        </div>
        <div>
            <label>Kontak:</label>
            <input type="text" name="contact">
        </div>
        <div>
            <label>Alamat:</label>
            <input type="text" name="address">
        </div>
        <button type="submit">Tambah Supplier</button>
    </form>

    <table border="1" cellpadding="8" cellspacing="0">
        <thead>
            <tr>
                <th>Nama</th>
                <th>Kontak</th>
                <th>Alamat</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            {foreach from=$suppliers item=supplier}
            <tr>
                <td>{$supplier.supplier_name}</td>
                <td>{$supplier.contact_info}</td>
                <td>{$supplier.address}</td>
                <td>
                    <a href="index.php?page=suppliers&action=delete&id={$supplier.id}" onclick="return confirm('Hapus supplier ini?')">Hapus</a>
                </td>
            </tr>
            {/foreach}
        </tbody>
    </table>
</div>

{include file="footer.tpl"}
