<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/member/join.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<form action="">
			<div class="wrap">
				<div class="subjecet">
					<span>회원가입</span>
				</div>
				<div class="id_wrap">
					<div class="id_name">아이디</div>
					<div class="id_input_box">
						<input class="id_input">
					</div>
				</div>
				<div class="pw_wrap">
					<div class="pw_name">비밀번호</div>
					<div class="pw_input_box">
						<input class="pw_input">
					</div>
				</div>
				<div class="pwck_wrap">
					<div class="pwck_name">비밀번호 확인</div>
					<div class="pwck_input_box">
						<input class="pwck_input">
					</div>
				</div>
				<div class="user_wrap">
					<div class="user_name">이름</div>
					<div class="user_input_box">
						<input class="user_input">
					</div>
				</div>
				<div class="idnum_wrap">
					<div class="idnum_name">주민 등록 번호</div>
					<div class="idnum_input_box">
						<input class="idnum_input">
					</div>
				</div>
				<div class="phone_wrap">
					<div class="phone_name">전화 번호</div>
					<div class="phone_input_box">
						<input class="phone_input">
					</div>
				</div>
				<div class="mail_wrap">
					<div class="mail_name">이메일</div>
					<div class="mail_input_box">
						<input class="mail_input">
					</div>
					<div class="mail_check_wrap">
						<div class="mail_check_input_box">
							<input class="mail_check_input">
						</div>
						<div class="mail_check_button">
							<span>인증번호 전송</span>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="gender_wrap">
					<div class="gender_name">성별</div>
					<div class="gender_input_box">
						<fieldset>
							<label> <input type="radio" name="gen_info" value="1"
								checked="checked" /> <span>남자</span>
							</label>
							<label> <input type="radio"
								name="gen_info" value="0"/> <span>여자</span>
							</label>  
						</fieldset>
					</div>
				</div>
				<div class="join_button_wrap">
					<input type="button" class="join_button" value="가입하기">
				</div>
			</div>
		</form>
	</div>
</body>
</html>