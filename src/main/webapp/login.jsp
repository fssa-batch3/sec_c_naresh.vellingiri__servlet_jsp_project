<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
  integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/LoginAndRegister/login.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"
    integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

<div class="login-page">


    <div class="form">
      <p class="text-center" id="login_form">Login Form</p>

      <form id="form" method = "post" action = "<%=request.getContextPath()%>/LoginServlet">

        <input type="email" id="email" placeholder="&#xf007;  email" name="useremail">
        <input type="password" id="password" placeholder="&#xf023;  password" name = "password" >
        <i style="color:#17a589 ;" id="password_eye" class="fas fa-eye-slash"></i>
        <br>
        <br>
        <a href="register.html"> <button>LOGIN</button></a>

      </form>

      <a href="register.html" id="account_creation"><button>Create an account</button> </a>

</body>
</html>