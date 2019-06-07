<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UOM Register Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="card">
			<div class="card-header bg-primary text-white">
				<h3>Welcome to Employee Register Page</h3>
			</div>

			<div class="card-body ">
				<form action="save" method="POSt">
					<div class="row form-group">
						<div class="col-4">
							<label for="empid">ID NO</label>
						</div>
						<div class="col-6">
							<input type="text" class="form-control" id="empid" name="empId">
						</div>
					</div>
					<div class="row form-group">
						<div class="col-4">
							<label for="empname">Name</label>
						</div>
						<div class="col-6">
							<input type="text" class="form-control" id="empname" name="empName">
						</div>
					</div>
					<div class="row from-group">
						<div class="col-4 form-group">
							<label for="deg">Designation</label>
						</div>
						<div class="col-6">
							<select class="form-control" id="deg" name="desg">
								<option value="">-SELECT-</option>
								<option value="DEVELOPER">Developer</option>
								<option value="QA">QA</option>
								<option value="DBA">DBA</option>

							</select>
						</div>
					</div>
					<div class="row form-group">
						<div class="col-4">
							<label for="empsal">Salary</label>
						</div>
						<div class="col-6">
							<input type="text" class="form-control" id="empsal" name="empSal">
						</div>
					</div>

					<div class="row">
						<div class="col-4"></div>
						<div class="col-4">
							<input type="submit" class="btn btn-primary" value="Register" />
						</div>
						<div class="col-4"></div>
					</div>
				</form>
			</div>
			<div class="card-footer bg-success text-white">
				<h3>Successfully Registered</h3>
			</div>
		</div>

	</div>
</body>
</html>