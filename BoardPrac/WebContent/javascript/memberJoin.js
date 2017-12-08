/**
 * 천리안 회원 가입 페이지용 자바스크립트
 */
function validation() {
	
	/* 이름 */
	var eName = document.getElementById('name');
	if (eName.value == "") {
		alert('이름을 입력해 주세요');
		return false;
	}
	
	/* 아이디 */
	var eId = document.getElementById('id');
	if (eId.value == "") {
		alert('아이디를 입력해 주세요');
		return false;
	}
	
	/* 아이디 규칙 조회 */
	
	/* 비밀번호 */
	var ePw = document.getElementById('password');
	if (ePw.value == "") {
		alert('비밀번호를 입력해 주세요');
		return false;
	}
		
	/* 비밀번호 확인 */
	var ePwc = document.getElementById('password-c');
	if (ePwc.value == "") {
		alert('비밀번호 확인을 입력해 주세요');
		return false;
	}
	
	/* 이메일 주소 확인 */
	var eArrEmail = document.getElementsByName('email');
	for (var i = 0; i < eArrEmail.length; i++) {
		if (eArrEmail[i].value == "") {
			alert('이메일 주소를 입력해 주세요');
			return false;
		}
	}
	
	/* 주소 확인 */
	var eArrAddress = document.getElementsByName('address');
	for (var i = 0; i < eArrAddress.length; i++) {
		if (eArrAddress[i].value == "") {
			alert('주소를 입력해 주세요');
			return false;
		}
	}
	
	/* 휴대폰 번호 확인 */
	var eArrPhonenum = document.getElementsByName('phonenum');
	if (eArrPhonenum[0].selectedIndex == 0) {
		alert('휴대폰 앞번호를 선택해 주세요');
		return false;
	}
	for (var i = 1; i < eArrPhonenum.length; i++) {
		if (eArrPhonenum[i].value == "") {
			alert('휴대폰 번호를 입력해 주세요');
			return false;
		}
	}
	
	
	/* 입력 정보 재확인 */
	var info = "";
	info += "이름: " + eName.value + "\n";
	info += "아이디: " + eId.value + "\n";
	info += "비밀번호: " + ePw.value + "\n";
	info += "비밀번호 확인: " + ePwc.value + "\n";
	info += "이메일 확인: " + eArrEmail[0].value + "@" + eArrEmail[1].value + "\n";
	info += "주소 확인: " + eArrAddress[0].value + "-" + eArrAddress[1].value + "\n"
			+ eArrAddress[2].value + " " + eArrAddress[3].value + "\n";
	info += "휴대폰 번호 확인: " + eArrPhonenum[0].value + "-" + eArrPhonenum[1].value + "-" + eArrPhonenum[2].value + "\n";
	alert(info);
	
	return true;
};

/* 중복 확인 체크 여부 표시 */
function idValidCheck() {
	window.open('jsp/idCheck.jsp', 'idCheck', 'top=200,left=400,width=300,height=300');
	// var eIdValid = document.getElementById('id-valid-check');
	// eIdValid.innerHTML = "중복 확인 완료!";
}

/* 이메일 도메인 클릭시 자동 완성 표시 */
function emailDomain() {
	var eDomain = document.getElementById('email-domain');
	if (eDomain.selectedIndex == 0) {
		document.getElementById('email-domain-txt').value = "";
	} else {
		document.getElementById('email-domain-txt').value = eDomain.value;
	}
}


















