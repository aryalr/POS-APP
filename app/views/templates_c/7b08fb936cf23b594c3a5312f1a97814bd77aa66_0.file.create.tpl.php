<?php
/* Smarty version 4.5.5, created on 2025-05-15 11:53:54
  from '/opt/lampp/htdocs/POS-APP/app/views/templates/supplier/create.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.5',
  'unifunc' => 'content_6825b9b23a1831_14483133',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7b08fb936cf23b594c3a5312f1a97814bd77aa66' => 
    array (
      0 => '/opt/lampp/htdocs/POS-APP/app/views/templates/supplier/create.tpl',
      1 => 1746963271,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../header.tpl' => 1,
    'file:../footer.tpl' => 1,
  ),
),false)) {
function content_6825b9b23a1831_14483133 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:../header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('title'=>"Tambah Supplier"), 0, false);
?>

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

<?php $_smarty_tpl->_subTemplateRender("file:../footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
