<h1>Register</h1>
{if isset($success)}
Your account has been created!
{/if}
{else}
<form method="post" action="/users/register">
<ol>
<li>
<label>
First name:
<input type="text" name="first" />
{if isset($first_error)}
{echo $first_error}
{/if}
</label>
</li>
<li>
<label>
Last name:
<input type="text" name="last" />
{if isset($last_error)}
{echo $last_error}
{/if}
</label>
</li>
<li>
<label>
Email:
<input type="text" name="email" />
{if isset($email_error)}
{echo $email_error}
{/if}
</label>
</li>
<li>
<label>
Password:
<input type="password" name="password" />
{if isset($password_error)}
{echo $password_error}
{/if}
</label>
</li>
<li>
<input type="submit" name="register" value="register" />
</li>
</ol>
</form>
{/else}