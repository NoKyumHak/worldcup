<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/member/reserve.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<form id="reserve_form" method="post">
			<div class="wrap">
				<div class="subjecet">
					<span>예약하기!!</span>
				</div>
				<div class="caution_wrap">
					<div class="caution_fieldset">
						<fieldset id="caution">
							<legend>*주의 사항*</legend>
								<list>
									<li>당일 예약시간 20분 전에 내원하여 원무팀 수납/창구 방문 접수 후 진료 받으시기 바랍니다</li>
									<li>예약 변경/취소는 진료 1일전까지 꼭 연락 주시기 바랍니다.</li>
								</list>
						</fieldset>
					</div>
				</div>
				<div class="user_wrap">
					<div class="user_name">이름</div>
					<div class="user_input_box">
						<input class="user_input" type="hidden" name="memberName" readonly="readonly" value='<c:out value="${reserveDetail.memberNum }"/>'>
					</div>
				</div>
				<div class="idnum_wrap">
					<div class="idnum_name">주민 등록 번호</div>
					<div class="idnum_input_box">
						<input class="idnum_input" name="memberIDNum" maxlength="14"
							readonly="readonly">
					</div>
				</div>
				<div class="phone_wrap">
					<div class="phone_name">전화 번호</div>
					<div class="phone_input_box">
						<input class="phone_input" name="memberPhone" readonly="readonly">
					</div>
				</div>
				<div class="subject_wrap">
					<div class="subject_name">진료 과</div>
					<div class="subject_input_box">
						<input class="subject_input" name="subject">
					</div>
				</div>
				<div class="checkDate_wrap">
					<div class="checkDate_name">진료 희망일</div>
					<input name="checkDate" autocomplete="off" readonly="readonly">
				</div>
				<div class="reserve_button_wrap">
					<input type="button" class="reserve_button" value="예약하기">
				</div>
			</div>
		</form>
	</div>
	<script>
		let checkForm = {};

		/* 등록 버튼 */
		$("#reserve_button").click(function() {

			e.preventDefault();
			$("#reserve_form").submit();

		});

		$(document).ready(function() {
			//예약 버튼(예약 기능 작동)
			$(".reserve_button").click(function() {
				$("#reserve_form").attr("action", "/member/reserve");
				$("#reserve_form").submit();
			});
		});

		/* 캘린더 위젯 적용 */

		/* 설정 */
		const config = {
			dateFormat : 'yy-mm-dd',
			showOn : "button",
			buttonText : "날짜 선택",
			prevText : '이전 달',
			nextText : '다음 달',
			monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
					'9월', '10월', '11월', '12월' ],
			monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
					'9월', '10월', '11월', '12월' ],
			dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
			dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
			yearSuffix : '년',
			changeMonth : true,
			changeYear : true
		}

		/* 캘린더 */
		$(function() {
			$("input[name='checkDate']").datepicker(config);
		});
	</script>
</body>
</html>