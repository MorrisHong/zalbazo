var userInfoService = (function(){

	function getUser(callback, error) {

		$.get("/user/get" + ".json", function(result) {
			if (callback) {
				callback(result);
			}
		}).fail(function(xhr, status, err) {

			if (error) {
				error();
			}

		});
	} // get
	
	
	return {
		getUser : getUser
	}
	
})();