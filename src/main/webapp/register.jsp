<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">




<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/LoginAndRegister/register.css">
<title>Insert title here</title>

</head>

<body>

	<div class="container">

		<%
		String error = (String) request.getAttribute("error");

		if (error != null) {
		%>
		<h1 id="already_email_available"><%=error%></h1>
		<%
		}
		%>


		<div class="title">Registration</div>


		<div class="content">

			<form id="form"
				action="<%=request.getContextPath()%>/RegisterServlet" method="post">


				<div class="user-details">
					<div class="input-box">
						<span class="details">First Name</span> <input type="text"
							id="first_name" name="first_name" placeholder="Enter your name"
							pattern="[A-Za-z]{0,32}" required>
					</div>

					<div class="input-box">
						<span class="details">Last Name</span> <input type="text"
							id="last_name" name="last_name" placeholder="Enter your username"
							pattern="[A-Za-z]{0,32}" required>
					</div>

					<div class="input-box">
						<span class="details">Email</span> <input type="email" id="email"
							name="email" placeholder="Enter your email"
							title="Please input a valid email" required>
					</div>

					<div class="input-box">
						<span class="details">Phone Number</span> <input type="tel"
							id="phone_number" name="phone_number"
							placeholder="Enter your number"
							title="Please enter a valid phone number" required minlength="10"
							maxlength="10">
					</div>

					<div class="input-box">
						<span class="details">Password</span> <input type="password"
							id="password" name="password" placeholder="Enter your password"
							pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$"
							title="Uppercase letters: A-Z. Lowercase letters: a-z. Special: !@#$%^&*()"
							required>
					</div>

					<div class="input-box">
						<span class="details">Confirm Password</span> <input
							type="password" id="confirm_password" name="confirm_password"
							placeholder="Confirm your password"
							title="Please correct the match password"
							pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$" required>
					</div>
				</div>


				<div class="button">
					<button type="submit" id="btn_register">Register</button>
				</div>

			</form>
			<p class="text-center">
				Already Have an account?<a href="login.jsp">login</a>
			</p>
		</div>


	</div>
	</div>

</body>
</html>