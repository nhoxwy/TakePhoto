component output="false" accessors="true" persistent="true" {
	property photographerService; 

    public function init(required any fw){
        variables.fw =fw;
        return this;
    }
    
    
    function default() {
    	if(structKeyExists(form,"btnSubmit")){
			if(form.btnSubmit eq "Tìm kiếm") {
				location 		= form.location;
				if(location != "")
				{
					var checkUser = variables.photographerService.filterLocation(location);
					// if(checkUser.recordCount() == 1)
					// {
					// 	SESSION.isUserLoggedIn = true;
					// 	SESSION.userID = checkUser.userID;
					// 	SESSION.firstName = checkUser.firstName;
					// 	SESSION.lastName = checkUser.lastName;
					// 	SESSION.email = checkUser.email;
					// 	SESSION.password = checkUser.password;
					// 	SESSION.phone = checkUser.phoneNumber;
					// 	SESSION.location = checkUser.location;
					// 	SESSION.dateOfBirth=dateFormat(checkUser.dateOfBirth,"yyyy-mm-dd");
					// 	SESSION.dayOfBirth=dateFormat(checkUser.dateOfBirth,"dd");
					// 	SESSION.monthOfBirth=dateFormat(checkUser.dateOfBirth,"mm");
					// 	SESSION.yearOfBirth=dateFormat(checkUser.dateOfBirth,"yyyy");
					// 	SESSION.about = checkUser.about;
					// 	SESSION.photoSkill = checkUser.about;
					// 	SESSION.videoSkill = checkUser.about;
					// 	SESSION.ptsSkill = checkUser.about;
					// 	SESSION.filmSkill = checkUser.about;
					// 	location("/index.cfm",false);
					// }
					else{
						rc.error_message = "Không tìm thấy dữ liệu";
					} 
				}	
			}
		}
	}


}