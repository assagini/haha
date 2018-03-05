<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminLTE 2 | Dashboard</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
	
	
	
<!--x Bootstrap 3.3.4 -->
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
	
	
	
<!--x Font Awesome Icons -->
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />



<!-- Ionicons -->
<link
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"
	rel="stylesheet" type="text/css" />
	
	
	
<!--x Theme style -->
<link href="/resources/dist/css/AdminLTE.min.css" rel="stylesheet"
	type="text/css" />
	
	
	
<!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
<link href="/resources/dist/css/skins/_all-skins.min.css"
	rel="stylesheet" type="text/css" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<!-- jQuery 2.1.4 -->
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>







<body class="skin-blue sidebar-mini">






<!-- 
	<div class="wrapper"> -->


			<!--_________________________________________________________________________________  -->


			<!-- Main content -->
			
	<!--로그인, 회원가입 모달버튼  -->
	<button type="button" class="btn btn-default btn-lg" id="myBtn_login">Login</button>
	<button type="button" class="btn btn-default btn-lg" id="myBtn_join">회원가입</button>
			
			
			
			<section class="content">
				<div class="row">
					<!-- left column -->
					<div class="col-md-12">
						<!-- general form elements -->
						<div class="box box-primary">
						
						
						
							<div class="box-header">
								<h3 class="box-title">REGISTER BOARD</h3>
							</div>
							<!-- /.box-header -->

							<form role="form" method="post">
								<div class="box-body">
									<div class="form-group">
										<label for="exampleInputEmail1">Title</label> <input
											type="text" name='title' class="form-control"
											placeholder="Enter Title">
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">Content</label>
										<textarea class="form-control" name="content" rows="3"
											placeholder="Enter ..."></textarea>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Writer</label> <input
											type="text" name="writer" class="form-control"
											placeholder="Enter Writer">
									</div>
								</div>
								<!-- /.box-body -->

								<div class="box-footer">
									<button type="submit" class="btn btn-primary">Submit</button>
								</div>
							</form>


						</div>
						<!-- /.box -->
					</div>
					<!--/.col (left) -->

				</div>
				<!-- /.row -->
			</section>
			<!-- /.content -->
		


		<!--______________________________________________________________________________  -->

	
	
	
	<!-- ./wrapper -->


	<!-- Bootstrap 3.3.2 JS -->
	<script src="/resources/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
		
		
		
	<!-- FastClick -->
	<script src='/resources/plugins/fastclick/fastclick.min.js'></script>
	
	
	<!-- AdminLTE App -->
	<script src="/resources/dist/js/app.min.js" type="text/javascript"></script>
	
	
	<!-- AdminLTE for demo purposes -->
	<script src="/resources/dist/js/demo.js" type="text/javascript"></script>
</body>
</html>
