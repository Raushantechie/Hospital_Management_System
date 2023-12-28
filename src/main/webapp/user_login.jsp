<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login Page</title>

<style>
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
<%@include file="component/allcss.jsp"%>


</head>
<body>

	<%@include file="component/navbar.jsp"%>

	<div class="container p-s">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">User Login</p>
						<form action="#" method="post">
							<div class="mb-3">

								<label class="form-level">Email address</label> <input required
									name="email" type="email" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input
									type="password" name="password" class="form-control">

							</div>
							<buttton type="submit"
								class="btn bg-success text-white col-md-12">Login</buttton>
						</form><br>
						<span>Don't have an account? <a href="signup.jsp" class="text-decoration-none">Create One</a></span>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>