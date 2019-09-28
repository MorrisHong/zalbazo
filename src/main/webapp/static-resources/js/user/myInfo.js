$(document).ready(function() {
	
	var userEmail = '<c:out value="${useremail}"/>';
	
	var info = $(".infoinfo");
	
	var modifyBtn = $(".modifyBtn");
	
	myInfoService.getInfoList(userEmail, function(data){
		
		var str = "";
			
 			str += "<div class='form-group a'>";
			str += "  <span>이메일</span>";
			str += "  <input type='text' class='form-control col-8' id='email' name='email' value='" + data[0].userEmail + "' readonly>";
			str += "</div>";
			
 			str += "<div class='form-group a'>";
			str += "  <span>이름</span>";
			str += "  <input type='text' class='form-control col-8' id='name' name='name' value='" + data[0].name + "'>";
			str += "</div>";
			
 			str += "<div class='form-group a'>";
			str += "  <span>전화번호</span>";
			str += "  <input type='text' class='form-control col-8' id='tel' name='tel' value='" + data[0].tel + "'>";
			str += "</div>";

 			str += "<div class='form-group a'>";
			str += "  <span>주소</span>";
			str += "  <input type='text' class='form-control col-8' id='address' name='address' value='" + data[0].address + "' readonly>";
			str += "  <input type='button' onClick='goPopup();' value='주소찾기'/>";
			str += "</div>";

 			str += "<div class='form-group a'>";
			str += "  <span>가입일</span>";
			str += "  <input type='text' class='form-control col-8' id='joinDate' name='joinDate' value='" + myInfoService.displayTime(data[0].joinDate) + "'readonly>";
			str += "</div>";
		
		info.html(str);
		
		
	}); // getInfoList
	
	modifyBtn.on("click", function(e) {
		console.log($("input[id='name']").val());
		console.log($("input[id='tel']").val());
		console.log($("input[id='address']").val());
		
		var modimodi = {
				name : $("input[id='name']").val(),
				tel : $("input[id='tel']").val(),
				address : $("input[id='address']").val()
		};
		
		myInfoService.update(modimodi, function(result) {
			alert(result);
		});
		
	}) // modifyBtn
});