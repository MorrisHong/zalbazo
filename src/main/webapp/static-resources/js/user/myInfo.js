$(document).ready(function() {
	
	var userEmail = '<c:out value="${useremail}"/>';
	
	var info = $(".infoinfo");
	
	var modifyBtn = $(".modifyBtn");
	
	myInfoService.getInfoList(userEmail, function(data){
		
		var str = "";
		//console.log(data[0]);
		
		if(data[0].address == null || data[0].address == "" || data[0].address == "null" || data[0].address == "(null)") {
			data[0].address = "등록된 주소가 없습니다";
		}
			
 			str += "<div class='form-group a'>";
			str += "  <span>이메일</span>";
			str += "  <input type='text' class='form-control col-12' id='email' name='email' value='" + data[0].userEmail + "' readonly>";
			str += "</div>";
			
 			str += "<div class='form-group a'>";
			str += "  <span>이름</span>";
			str += "  <input type='text' class='form-control col-12' id='name' name='name' value='" + data[0].name + "'>";
			str += "</div>";
			
 			str += "<div class='form-group a'>";
			str += "  <span>전화번호</span>";
			str += "  <input type='text' class='form-control col-12' id='tel' name='tel' value='" + data[0].tel + "'>";
			str += "</div>";

 			str += "<div class='form-group a'>";
			str += "  <span>주소</span>";
			str += "  <input type='text' class='form-control col-12' id='address' name='address' value='" + data[0].address + "' readonly>";
			str += "  <input type='button' onClick='goPopup();' value='주소찾기'/>";
			str += "</div>";

 			str += "<div class='form-group a'>";
			str += "  <span>가입일</span>";
			str += "  <input type='text' class='form-control col-12' id='joinDate' name='joinDate' value='" + myInfoService.displayTime(data[0].joinDate) + "'readonly>";
			str += "</div>";
		
		info.html(str);
		
		
	}); // getInfoList
	
	modifyBtn.on("click", function(e) {
		
		var regex= /^[0-9]*$/;
		
		if(!regex.test($("input[id='tel']").val().trim())) {
			alert("-을 제외하고 입력해주세요");
			return;
		}
		
        if ($("input[id='tel']").val().trim().length < 9 || $("input[id='tel']").val().trim().length > 11) {
            alert('전화번호는 9~11자로 입력해주세요.');
            return;
        }
		
		if($("input[id='name']").val().trim() === "" || $("input[id='name']").val().trim() == null) {
			alert("이름을 입력해주세요");
			return;
		}
			
		var modimodi = {
				name : $("input[id='name']").val(),
				tel : $("input[id='tel']").val(),
				address : $("input[id='address']").val()
		};
		
		myInfoService.update(modimodi, function(result) {
			console.log(result);
			alert(result);
		});
		
	}) // modifyBtn
});