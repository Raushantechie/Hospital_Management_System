<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Appointment Booking Page</title>
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
						<form action="addAppointment.jsp" method="post">
							<div class="mb-3">
								<label class="form-level">First Name:</label> <input type="text"
									name="firstName" class="form-control" required> <label
									class="form-level">Last Name:</label> <input type="text"
									name="lastName" class="form-control" required> <label
									class="form-level">Mobile Number:</label> <input type="tel"
									name="mobileNumber" class="form-control" required> <label
									class="form-level">Email Address:</label> <input type="email"
									name="email" required> <label class="form-level">Doctor
									Name:</label> <select name="doctorName" class="form-control" required>
									<option value="Dr. Smith">Dr. Smith</option>
									<option value="Dr. Johnson">Dr. Johnson</option>
									<option value="Dr. Williams">Dr. Williams</option>
								</select> <label for="timing">Appointment Timing:</label> <input
									type="datetime-local" name="timing" class="form-control"
									required> <input type="submit" value="Book Appointment"
									class="btn bg-success text-white col-md-12">
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
