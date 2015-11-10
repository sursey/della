<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ZH">
<head>
<title>创建项目</title>
<meta charset="UTF-8">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="bootstrap/3.3.5/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet"
	href="bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="js/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(document).ajaxComplete(function(event,xhr, settings) {
			console.log(event.name);
			 $( ".log" ).append( settings.url ).append(xhr.responseHTML);
			 });
		$( ".trigger" ).click(function() {
			 $( ".result" ).load( "CreateProjectServlet" );
			});
	})
	
</script>
</head>
<body>
	<div class="trigger">Trigger</div>
	<div class="result"></div>
	<div class="log"></div>
</body>
</html>