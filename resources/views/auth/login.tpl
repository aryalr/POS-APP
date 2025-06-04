{include file="header.tpl"}
<div class="container mt-5">
  <h2>Login</h2>
  {if isset($error)}
    <div class="alert alert-danger">{$error}</div>
  {/if}
  <form method="POST" action="?page=login&action=login">
    <div class="mb-3">
      <label>Username</label>
      <input type="text" name="username" class="form-control" required />
    </div>
    <div class="mb-3">
      <label>Password</label>
      <input type="password" name="password" class="form-control" required />
    </div>
    <button type="submit" class="btn btn-primary">Login</button>
  </form>
</div>
{include file="footer.tpl"}