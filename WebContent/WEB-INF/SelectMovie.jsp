<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<h1><font color="red">Movie X</font></h1>
  <h2>Welcome User ${msg}</h2>
  
<!--   <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Select your Movie
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="#" name="movie">HTML</a></li>
      <li><a href="#" name="movie">CSS</a></li>
      <li><a href="#" name="movie">JavaScript</a></li>
    </ul>
  </div> -->
  <form:form action="/ADMS_MovieX/submitMovie" method="post">
  <form:select path = "Title">
                     <form:option value = "NONE" label = "Select"/>
                     <form:options items = "${movieList.title}" />
                  </form:select>
  <button class="btn btn-primary">Submit</button>
  </form:form>
</div>
</body>
</html>