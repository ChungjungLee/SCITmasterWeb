<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<!-- CSS 링크 -->
		<link href="css/memberJoin.css" rel="stylesheet" type="text/css">
		<!-- JavaScript 링크 -->
		<script src="javascript/memberJoin.js"></script>
		
		<title>회원가입 페이지</title>
	</head>
	<body>
		<form action="member" method="POST" onsubmit="return validation();">
			<div class="formdiv">
				<div class="headrow">
					(<span class="starchar">*</span>)부분은 필수 입력사항입니다.
				</div>
				
				<div class="row">
					<div class="headcol">
						<label>고객님의 이름(<span class="starchar">*</span>)</label>
					</div>
					
					<div class="bodycol">
						<input type="text" id="name" name="name">
					</div>
				</div>
				
				<div class="row">
					<div class="headcol">
						<label>희망 아이디(<span class="starchar">*</span>)</label>
					</div>
					
					<div class="bodycol">
						<input type="text" min="3" maxlength="12" id="id" name="id" readonly> 
						<input type="button" value="중복확인" onclick="idValidCheck()">
						<!-- <input type="hidden" id="id-valid-check"> -->
						<label id="id-valid-check"></label>
						<br>
						<label>·3~12자리 영문, 숫자 조합(대소문자 구분 없으며, 특수기호 사용은 불가)</label> 
					</div>
				</div>
				
				<div class="row">
					<div class="headcol">
						<label>비밀번호 입력(<span class="starchar">*</span>)</label>
					</div>
					
					<div class="bodycol">
						<input type="password" min="5" maxlength="8" id="password" name="password">
						<label>·5~8자리 문자와 숫자를 이용하여 만드실 수 있습니다.</label>
					</div>
				</div>
				
				<div class="row">
					<div class="headcol">
						<label>비밀번호 다시입력(<span class="starchar">*</span>)</label>
					</div>
					
					<div class="bodycol">
						<input type="password" min="5" maxlength="8" id="password-c" name="password-c">
						<label>·영문은 대소문자를 구분합니다.</label>
					</div>
				</div>
				
				<div class="row">
					<div class="headcol">
						<label>주로 사용하는 이메일(<span class="starchar">*</span>)</label>
					</div>
					
					<div class="bodycol">
						<input type="text" size="8" name="email email-account"> @ <input type="text" size="8" name="email email-domain" id="email-domain-txt">
						<select id="email-domain" onclick="emailDomain()">
							<option>직접입력</option>
							<option>gmail.com</option>
							<option>naver.com</option>
							<option>nate.com</option>
							<option>hanmail.net</option>
						</select>
						<br>
						<input type="checkbox">천리안 메일을 주로 사용하는 메일로 설정하시겠습니까?
					</div>
				</div>
				
				<div class="row">
					<div class="headcol">
						<label>주소(<span class="starchar">*</span>)</label>
					</div>
					
					<div class="bodycol">
						<input type="text" size="5" maxlength="5" name="address address-num1">
						 - 
						<input type="text" size="5" maxlength="5" name="address address-num2">
						<input type="button" value="우편번호 검색">
						<br>
						<input type="text" size="32" name="address address-street1">
						<br>
						나머지 주소<input type="text" name="address address-street2">
					</div>
				</div>
				
				<div class="row">
					<div class="headcol">
						<label>휴대폰 번호(<span class="starchar">*</span>)</label>
					</div>
					
					<div class="bodycol">
						<select name="phonenum phonenum1">
							<option>선택</option>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="017">017</option>
							<option value="019">019</option>
						</select> -
						<input type="text" size="4" maxlength="4" name="phonenum phonenum2"> -
						<input type="text" size="4" maxlength="4" name="phonenum phonenum3">
						<input type="radio" name="carrier" value="SKT" checked>SKT
						<input type="radio" name="carrier" value="KT">KT
						<input type="radio" name="carrier" value="LGU+">LGU+
					</div>
				</div>
				
				<div class="row">
					<div class="headcol">
						<label>일반 전화번호</label>
					</div>
					
					<div class="bodycol">
						<input type="text" size="3" maxlength="3" name="telnum telnum1"> -
						<input type="text" size="4" maxlength="4" name="telnum telnum2"> -
						<input type="text" size="4" maxlength="4" name="telnum telnum3">
						<input type="radio" name="teltype" checked>집
						<input type="radio" name="teltype">직장
					</div>
				</div>
				
				<div class="row">
					<div class="headcol">
						<label>천리안소식지 및 휴대폰 문자(SMS) 수신</label>
					</div>
					
					<div class="bodycol">
						<input type="checkbox"> 천리안 소식메일을 수신합니다.
						<br>
						<input type="checkbox"> 알림 및 소식등 정보 휴대폰 문자 수신
					</div>
				</div>
				
				<div class="footrow">
					<input id="submit" type="submit" value="가입">
					<input type="hidden" name="action" value="join">
					<input id="reset" type="reset" value="다시입력">
				</div>
				
			</div>
		</form>
	</body>
</html>