<div class="icons">
	<a href="index.html"><i class="halflings-icon home"></i></a>
	<a href="#"><i class="halflings-icon cog"></i></a>
</div>
<h2>Login to your account</h2>
<form class="form-horizontal" action="" method="post">
	<fieldset>
		<div class="input-wrap">
		<div class="input-prepend input-group" title="Username">
			<span class="input-group-addon"><i class="halflings-icon user"></i></span>
			<input class="form-control" name="user_login" id="user_login" type="text" placeholder="type login"/>
		</div>
			{{ login_error }}
		</div>
		<div class="input-wrap">
		<div class="input-prepend input-group" title="Password">
			<span class="input-group-addon"><i class="halflings-icon lock"></i></span>
			<input class="form-control" name="password" id="password" type="password" placeholder="type password"/>
		</div>
			{{ password_error }}
		</div>
		<label class="remember" for="remember"><input type="checkbox" id="remember" />Remember me</label>

		<div class="button-login">	
			<input type="hidden" name="login" value="login" />
			<button type="submit" class="btn btn-primary">Login</button>
		</div>
		<div class="clearfix"></div>
	</fieldset>
</form>
<hr>
<h3>Forgot Password?</h3>
<p>
	No problem, <a href="#">click here</a> to get a new password.
</p>	