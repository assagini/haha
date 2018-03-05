<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>퍼팩트 매칭 | Log in</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
	
	
	
<!-- Bootstrap 3.3.4 -->
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
	
	
	
<!-- Font Awesome Icons -->
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
	
	
	
<!-- Theme style -->
<link href="/resources/dist/css/AdminLTE.min.css" rel="stylesheet"
	type="text/css" />
	
	
	
<!-- iCheck -->
<link href="/resources/plugins/iCheck/square/blue.css" rel="stylesheet"
	type="text/css" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>





<body class="login-page">

	<!--로그인, 회원가입 모달버튼  -->
	<button type="button" class="btn btn-default btn-lg" id="myBtn_login">Login</button>
	<button type="button" class="btn btn-default btn-lg" id="myBtn_join">회원가입</button>


	<!--__________________________로그인 폼_______________________________________  -->
	<!--___modal fade  -->
	<div class="modal fade" id="modal_login" role="dialog">
		<div class="modal-dialog">
			<div class="login-box-body col-xs-8">

				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#login_person">개인회원</a></li>
					<li><a data-toggle="tab" href="#login_company">기업회원</a></li>
				</ul>

				<br>

				<div class="tab-content">

					<!--___Login_Person  -->
					<div id="login_person" class="tab-pane fade in active">
						<form action="/user/loginPost" method="post">

							<!--___id나오는 부분-->
							<div class="form-group has-feedback">
								<input type="text" name="uid" class="form-control"
									placeholder="ID 개인 회원 로그인" />
								<!--★ glyphicon-envelope 메일그림  -->
								<span class="glyphicon  form-control-feedback"></span>
							</div>

							<!--___password나오는 부분 -->
							<div class="form-group has-feedback">
								<input type="password" name="upw" class="form-control"
									placeholder="Password" />
								<!--★ glyphicon-lock 자물쇠 그림  -->
								<span class="glyphicon form-control-feedback"></span>
							</div>

							<!--___기억하기, 로그인 /그 줄에 로그인 버튼까지 있어서 row -->
							<div class="row">
								<!--___기억하기 체크버튼  -->
								<div class="col-xs-8">
									<div class="checkbox icheck">
										<label> <input type="checkbox" name="useCookie">
											기억하기
										</label>
									</div>
								</div>
								<!--//___기억하기 체크버튼  -->

								<!--___로그인 버튼 -->
								<div class="col-xs-4">
									<button type="submit"
										class="btn btn-primary btn-block btn-flat">로그인</button>
								</div>
								<!--//___로그인 버튼 -->

							</div>
							<!--//___기억하기, 로그인 -->

						</form>

						<a href="#">아이디를 잊어버렸어요</a> <br> <a href="#">패스워드를 잊어버렸어요</a>


						<button type="button" class="close" data-dismiss="modal">&times;</button>

					</div>
					<!--//___login_person  -->


					<!--___login_company  -->
					<div id="login_company" class="tab-pane fade">
						<form action="/user/loginPost" method="post">

							<!--___id나오는 부분-->
							<div class="form-group has-feedback">
								<input type="text" name="uid" class="form-control"
									placeholder="ID 기업회원 로그인" />
								<!--glyphicon-envelope 메일그림  -->
								<span class="glyphicon  form-control-feedback"></span>
							</div>

							<!--___password나오는 부분 -->
							<div class="form-group has-feedback">
								<input type="password" name="upw" class="form-control"
									placeholder="Password" />
								<!--glyphicon-lock 자물쇠 그림  -->
								<span class="glyphicon form-control-feedback"></span>
							</div>

							<!--___기억하기, 로그인 /그 줄에 로그인 버튼까지 있어서 row -->
							<div class="row">
								<!--___기억하기 체크버튼  -->
								<div class="col-xs-8">
									<div class="checkbox icheck">
										<label> <input type="checkbox" name="useCookie">
											기억하기
										</label>
									</div>
								</div>
								<!--//___기억하기 체크버튼  -->

								<!--___로그인 버튼 -->
								<div class="col-xs-4">
									<button type="submit"
										class="btn btn-primary btn-block btn-flat">로그인</button>
								</div>
								<!--//___로그인 버튼 -->
							</div>
							<!-- //기억하기,로그인 -->

						</form>

						<a href="#">아이디를 잊어버렸어요</a> <br> <a href="#">패스워드를 잊어버렸어요</a>

						<button type="button" class="close" data-dismiss="modal">&times;</button>

					</div>
					<!--//___login_company  -->

				</div>
				<!--//___tab-content  -->

			</div>
			<!--//___login-box-body -->

		</div>
		<!--//___modal-dialog  -->

	</div>
	<!--//___modal fade  -->
	<!--//______로그인 폼  -->


	<!--______________________회원가입 폼______________________________________  -->
	<!--___modal fade  -->
	<div class="modal fade" id="modal_join" role="dialog">
		<div class="modal-dialog">
			<div class="login-box-body col-xs-8">

				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#join_person">개인회원</a></li>
					<li><a data-toggle="tab" href="#join_company">기업회원</a></li>
				</ul>

				<br>

				<div class="tab-content">

					<!--___join_person  -->
					<div id="join_person" class="tab-pane fade in active">
						<form action="/user/loginPost" method="post">

							<!--___id나오는 부분-->
							<div class="form-group has-feedback">
								아이디<input type="text" name="uid" class="form-control"
									placeholder="4~10자리를 입력하세요." /> <span
									class="glyphicon  form-control-feedback"></span>
							</div>

							<!--___password나오는 부분 -->
							<div class="form-group has-feedback">
								비밀번호<input type="password" name="upw" class="form-control"
									placeholder="6자리를 입력하세요." />
								<!--★ glyphicon-lock 자물쇠 그림  -->
								<span class="glyphicon form-control-feedback"></span>
							</div>

							<!--___이름 나오는 부분-->
							<div class="form-group has-feedback">
								이름<input type="text" name="uid" class="form-control"
									placeholder="이름을 입력하세요." /> <span
									class="glyphicon  form-control-feedback"></span>
							</div>

							<!--___생년월일 나오는 부분-->
							<div class="form-group has-feedback">
								생년월일<input type="text" name="uid" class="form-control"
									placeholder="생년월일 폼 적용" /> <span
									class="glyphicon  form-control-feedback"></span>
							</div>


							<!--___이메일 나오는 부분-->
							<div class="form-group has-feedback">
								이메일<input type="text" name="uid" class="form-control"
									placeholder="이메일을 입력하세요. 예) iampeel@naver.com" /> <span
									class="glyphicon  form-control-feedback"></span>
							</div>

							<!--___이메일 인증 버튼  -->
							<a href="register.html" class="text-center">이메일 인증하기</a>

							<div class="row">

								<div class="col-xs-8"></div>

								<!--___가입하기 버튼 -->
								<div class="col-xs-4">
									<button type="submit"
										class="btn btn-primary btn-block btn-flat">가입하기</button>
								</div>
								<!--//___가입하기 버튼 -->

							</div>

						</form>

					</div>
					<!--//___join_person  -->


					<!--___join_company  -->
					<div id="join_company" class="tab-pane fade">
						<form action="/user/loginPost" method="post">

							<!--___id나오는 부분-->
							<div class="form-group has-feedback">
								아이디<input type="text" name="uid" class="form-control"
									placeholder="4~10자리를 입력하세요." /> <span
									class="glyphicon  form-control-feedback"></span>
							</div>

							<!--___password나오는 부분 -->
							<div class="form-group has-feedback">
								비밀번호<input type="password" name="upw" class="form-control"
									placeholder="6자리를 입력하세요." />
								<!--★ glyphicon-lock 자물쇠 그림  -->
								<span class="glyphicon form-control-feedback"></span>
							</div>


							<!--___회사명 나오는 부분-->
							<div class="form-group has-feedback">
								회사명<input type="text" name="uid" class="form-control"
									placeholder="회사명을 입력하세요." /> <span
									class="glyphicon  form-control-feedback"></span>
							</div>


							<!--___담당자 이름 나오는 부분-->
							<div class="form-group has-feedback">
								담당자 이름<input type="text" name="uid" class="form-control"
									placeholder="담당자 이름을 입력하세요." /> <span
									class="glyphicon  form-control-feedback"></span>
							</div>


							<!--___이메일 나오는 부분-->
							<div class="form-group has-feedback">
								이메일<input type="text" name="uid" class="form-control"
									placeholder="이메일을 입력하세요. 예) iampeel@naver.com" /> <span
									class="glyphicon  form-control-feedback"></span>
							</div>


							<!--___이메일 인증 버튼  -->
							<div>
								<a href="register.html" class="text-center">이메일 인증하기</a>
							</div>


							<!--___사업자 등록 번호 나오는 부분-->
							<br>
							<div class="form-group has-feedback">
								사업자 등록번호<input type="text" name="uid" class="form-control"
									placeholder="'-'없이 숫자만 입력하세요" /> <span
									class="glyphicon  form-control-feedback"></span>
							</div>


							<!--___사업자 등록번호 인증 버튼  -->
							<div>
								<a href="register.html" class="text-center">사업자 등록번호 인증하기</a>
							</div>




							<div class="row">

								<div class="col-xs-8"></div>

								<!--___가입하기 버튼 -->
								<div class="col-xs-4">
									<button type="submit"
										class="btn btn-primary btn-block btn-flat">가입하기</button>
								</div>
								<!--//___가입하기 버튼 -->

							</div>

						</form>
					
					
			


					</div>
					<!--//___join_company  -->

				</div>
				<!--//___tab-content  -->

			</div>
			<!--//___join-box-body -->

		</div>
		<!--//___modal-dialog  -->

	</div>
	<!--//___modal fade  -->
	<!--//______회원가입 폼  -->










	<!-- jQuery 2.1.4 -->
	<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>

	<!-- Bootstrap 3.3.2 JS -->
	<script src="/resources/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>

	<!-- iCheck -->
	<script src="/resources/plugins/iCheck/icheck.min.js"
		type="text/javascript"></script>

	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
		});
	</script>





	<!--___로그인 모달  -->
	<script>
		$(document).ready(function() {
			$("#myBtn_login").click(function() {
				$("#modal_login").modal();
			});
		});
	</script>








	<!--___회원가입 모달  -->
	<script>
		$(document).ready(function() {
			$("#myBtn_join").click(function() {
				$("#modal_join").modal();
			});
		});
	</script>



</body>
</html>