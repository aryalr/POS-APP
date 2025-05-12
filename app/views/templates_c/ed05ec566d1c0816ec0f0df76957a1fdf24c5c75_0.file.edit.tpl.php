<?php
/* Smarty version 4.5.5, created on 2025-05-12 06:02:29
  from '/opt/lampp/htdocs/POS-APP/app/views/templates/supplier/edit.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.5',
  'unifunc' => 'content_682172d5701bf4_58172925',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ed05ec566d1c0816ec0f0df76957a1fdf24c5c75' => 
    array (
      0 => '/opt/lampp/htdocs/POS-APP/app/views/templates/supplier/edit.tpl',
      1 => 1747022526,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../header.tpl' => 1,
    'file:../footer.tpl' => 1,
  ),
),false)) {
function content_682172d5701bf4_58172925 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:../header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<h2>Edit Supplier</h2>

<form method="POST" action="index.php?page=supplier_update">
    <input type="hidden" name="id_supplier" value="<?php echo $_smarty_tpl->tpl_vars['supplier']->value['id_supplier'];?>
">
    
    <div>
        <label>Nama Supplier</label>
        <input type="text" name="supplier_name" value="<?php echo $_smarty_tpl->tpl_vars['supplier']->value['supplier_name'];?>
" required>
    </div>
    
    <div>
        <label>Kontak</label>
        <textarea name="contact_info" required><?php echo $_smarty_tpl->tpl_vars['supplier']->value['contact_info'];?>
</textarea>
    </div>
    
    <div>
        <button type="submit">Update</button>
        <a href="index.php?page=supplier">Batal</a>
    </div>
</form>

<?php $_smarty_tpl->_subTemplateRender("file:../footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
