<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="Secelean Monica">
	<meta name="description" content="Photography Management Platform">
	<meta name="keywords" content="pixie, photography">
	<title>Pixie</title>
	
	<!-- CSS -->
	<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/bootstrap.custom.css"/>" rel="stylesheet">
	
	<!-- Font -->
	<link
		href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900,300italic,400italic'
		rel='stylesheet' type='text/css'>
	
	<!-- Favicon -->
	<link rel="icon" href="<c:url value="/resources/images/favicon.ico"/>"
		type="image/x-icon" />
	
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	        <![endif]-->
	        
	<!-- include facebook sdk javascript -->
	<script>
      window.fbAsyncInit = function() {
        FB.init({
          appId      : '1519299641631589',
          xfbml      : true,
          version    : 'v2.0'
        });
      };

      (function(d, s, id){
         var js, fjs = d.getElementsByTagName(s)[0];
         if (d.getElementById(id)) {return;}
         js = d.createElement(s); js.id = id;
         js.src = "//connect.facebook.net/en_US/sdk.js";
         fjs.parentNode.insertBefore(js, fjs);
       }(document, 'script', 'facebook-jssdk'));
    </script>
</head>