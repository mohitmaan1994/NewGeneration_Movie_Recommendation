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
<div>
<h1><font color="red">MOVIE X</font></h1>

<p>
Hey, What&#39;s your User ID?
</p>
<form action="/ADMS_MovieX/submitUserid" method="post">
    <input class="btn btn-default" type="number" size="50" name="userId">
<button class="btn btn-primary">Submit</button>
</form>

 <p> 10,000+ Users  &amp;  50,000+ Movies </p>
 </div>

</body>
</html>