/**
 * 
 */
function validation () {
	var eId = document.getElementById('id');
	if (eId.value == '') {
		alert('아이디 입력해 주세요');
		return false;
	}
	
	var ePw = document.getElementById('password');
	if (ePw.value == '') {
		alert('비밀번호 입력해 주세요');
		return false;
	}
	
	var ePwc = document.getElementById('password_c');
	if (ePwc.value == '') {
		alert('비밀번호 확인 입력해 주세요');
		return false;
	}
	
	var eName = document.getElementById('name');
	if (eName.value == '') {
		alert('이름 입력해 주세요');
		return false;
	}
	
	var ePhone = document.getElementById('phone');
	if (ePhone.value == '') {
		alert('전화번호 입력해 주세요');
		return false;
	}
	
	var eAddr = document.getElementById('address');
	if (eAddr.value == '') {
		alert('주소 입력해 주세요');
		return false;
	}
	
	if (ePw.value != ePwc.value) {
		alert('비밀번호와 비밀번호 확인이 다릅니다');
		return false;
	}
	return true;
}

function checkId() {
	/**
	 * window라는 객체가 존재(브라우저의 내용을 담고 있음)
	 * window.open(url, name, options,...);
	 */
	window.open('checkId.jsp', 'checkId', 
			'top=200,left=400,width=300,height=300');
}































