<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="com.npb.domian.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>搜索结果</title>
<link href="./css/item.css" rel="stylesheet">
<link href="./css/baike.css" rel="stylesheet" type="text/css">
<link href="http://mg.kaoyan365.cn/baoyan/css/style.css"
	rel="stylesheet" type="text/css">
<!-- Site CSS -->
<script src="./js/jquery.min.js" type="text/javascript"></script>
<script src="./js/append.js" type="text/javascript"></script>
<link href="./css/style.css" rel="stylesheet" type="text/css">
<link href="./css/pages.css" rel="stylesheet" type="text/css">
<link href="./css/bootstrap.min.css" rel="stylesheet">
<link
	href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="http://static.bootcss.com/www/assets/css/site.min.css?v5"
	rel="stylesheet">
<link href="./css/item.css" rel="stylesheet">
<style>
.job-hot {
	position: absolute;
	color: #d9534f;
	right: 0;
	top: 15px;
}

a {
	text-decoration: none;
	color: grey;
}

a:hover {
	text-decoration: none;
}

#univer {
	width: 1224px;
	min-height: 355px;
	margin: 0 auto !important;
}
</style>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>


</head>
<body>


	<script>
	$(document).ready(function() {
		var searchCompoundlist=${requestScope.Compoundlist};
		getsearchCompound(searchCompoundlist);
	});	
	</script>

	<div class="container projects"
		style="width: 100%; background: rgba(251, 251, 251, 0.88);">

		<div class="projects-header page-header"
			style="position: relative; top: -15px;">
				<h style="color: grey;font-size:36px">搜索结果</h>
		</div>
		<div class="container projects" style="background: #fbfbfc;">
	</div>
		<div class="container"
			style="position: relative; top: -40px; background-color: #fbfbfc; width:100%; margin: 0 auto;">
			<div id="searchCompound">
			
			</div>
		</div>
		</div>
	<!-- 到底了 -->


	<br />
	<br />

</body>
</html>
