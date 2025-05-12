<?php
/* Smarty version 4.5.5, created on 2025-05-12 17:05:51
  from 'C:\xampp\htdocs\POS-APP\resources\views\supplier\create.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.5',
  'unifunc' => 'content_68220e4fc2abe1_50261863',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b71f35c1029e554d8257b91e553ce221dff1f106' => 
    array (
      0 => 'C:\\xampp\\htdocs\\POS-APP\\resources\\views\\supplier\\create.tpl',
      1 => 1747060500,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../header.tpl' => 1,
    'file:../footer.tpl' => 1,
  ),
),false)) {
function content_68220e4fc2abe1_50261863 (Smarty_Internal_Template $_smarty_tpl) {
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
