$(document).ready(function() {
	console.log("myhospitalpage");
	
	var userEmail = $(".email").val();
	
	var qqq = $(".qqq"); // Q&A
	
    showQnaList(1);

    function showQnaList(page){
	MyHospitalContentService.getHospitalQList(userEmail, function(list) {
		
		var str = "";
		
		if (list == null || list.length == 0) {
        	return;
        }
		
        for (let i = 0, len = list.length || 0; i < len; i++) {
        	
            let type = list[i].qnaType;
            let group = list[i].cgroup;
            
            // A가 있는지 없는지 체크
            let aCheck = true;
            
            // Q 타입이면 출력 
            if (type === 'Q') {

            	// Q 출력 태그
                str += "<div id='accordion'><div class='card-header primary-font'><p> Q.&nbsp; <a class='card-link collapsed' data-toggle='collapse' "
                str += "	href='#collapse"+list[i].contentId+"' aria-expanded='false'>" + list[i].body + "</a></p>";
                str += "<small class='primary-font'>" + list[i].userEmail + "</small>";
                str += "<small class='float-right text-muted'>" + MyHospitalContentService.displayTime(list[i].createdDate) + "</small></div></div>";
                
                for (let j = 0, len = list.length || 0; j < len; j++) {

                    // 같은 그룹의 A가 있다면 A 출력 태그
                    if (list[j].cgroup === group && list[j].qnaType === 'A') {
                    	str += "<div id='collapse"+list[i].contentId+"'>";
                        str += "<div class='card-body'> &nbsp;&nbsp;&nbsp; A: " + list[j].body + " ";
                        str += "<div class='del float-right' data-ano='"+list[j].contentId+"' style='cursor:pointer'> X </div><br><br>";
                        str += "<small class='primary-font'> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; " +list[j].name+ " </small> ";
                        str += "<small class='float-right text-muted'>" + MyHospitalContentService.displayTime(list[j].createdDate) + "</small><hr> ";
                        str += "</div></div>";
                        
                        // A가 있는지 없는지 체크 
                        aCheck = false;
                    } 

                }
                
                // aCheck true이면 Q는 있지만 A는 없음 
                // 병원 측에서 A를 입력할 수 있는 textarea를 출력
                if(aCheck) {
                	
                	str += "<br><div class='qq container' style='background-color:white;'>";
                	str += "<input type='hidden' class='form-control' id='userEmail' name='userEmail' value='"+ userEmail +"'>";
                	str += "<input type='hidden' class='form-control' id='hospitalId' name='hospitalId' value='"+ list[i].hospitalId +"'>";
                	str += "	<div class='form-group'>";
                	str += "    <textarea class='form-control "+list[i].contentId+"' rows='3' id='body' name='body'></textarea></div>";
                	str += "<button type='submit' class='answerBtn btn btn-secondary float-right' data-no='"+ list[i].hospitalId +"' data-qno='"+list[i].contentId+"'>Submit</button></div><br><br><br><hr>";
                }
                
            }
        }
		qqq.html(str);
		
	}); // getQList
    }
    
    
    // Answer Insert
    qqq.on("click", ".answerBtn", function(e){
    	var qno = $(this).attr("data-qno");
    	var body = $("."+qno).val();
    	var hospitalId = $(this).attr("data-no");
    	
    	// 유효성 체크
    	if(body.trim() === ""){
    		alert("내용을 입력하세요!");
    		return;
    	}
    	
    	MyHospitalContentService.insertAnswer({
    		body : body,
    		userEmail : userEmail,
    		hospitalId : hospitalId,
    		cgroup : qno
    	},
    	function(result){
    		console.log(result);
    		showQnaList(1);
    		
    	});
    });
    
    
    // 해당 병원 Q&A에서 A 삭제
    qqq.on("click", ".del", function (e) {

        var ano = $(this).attr("data-ano");
        
        MyHospitalContentService.removeA(ano, function(result){
        		showQnaList(1);
        }, function(err) {
        	console.log('A Delete ERROR....');
        });

        alert("처리되었습니다");

    });
    
    
    
});