<div class="icons">
	<a href="index.html"><i class="halflings-icon home"></i></a>
	<a href="#"><i class="halflings-icon cog"></i></a>
</div>
<h2>Register</h2>
<form class="form-horizontal" action="" method="post">
	<fieldset>
	
		<div class="input-wrap">
		<div class="input-prepend input-group" title="last name">
			<input class="form-control" name="last" id="last" type="text" placeholder="Last name"/>
			{{ error_last }}
		</div>
		</div>
		
		<div class="input-wrap">
		<div class="input-prepend input-group" title="First name">
			<input class="form-control" name="first" id="first" type="text" placeholder="First name"/>
			{{ error_first }}
		</div>
		</div>
		
		<div class="input-wrap">
		<div class="input-prepend input-group" title="Nickname">
			<input class="form-control" name="nickname" id="nickname" type="text" placeholder="Nickname"/>
			{{ error_nickname }}
		</div>
		</div>
		
		<div class="input-wrap">
		<div class="input-prepend input-group" title="login">
			<input class="form-control" name="login" id="login" type="text" placeholder="Login"/>
			{{ error_login }}
		</div>
		</div>
		
		<div class="input-wrap">
		<div class="input-prepend input-group" title="Password">
			<input class="form-control" name="password" id="password" type="password" placeholder="Password"/>
			{{ error_password }}
		</div>
		</div>
		

		<div class="button-login">	
			<input type="hidden" name="register" value="register" />
			<button type="submit" class="btn btn-primary">Register</button>
		</div>
		<div class="clearfix"></div>
	</fieldset>
</form>
<hr>
