
component output="false" accessors="true" persistent="true" {
	property userService; 

    public function init(required any fw){
        variables.fw =fw;
        return this;
    }
    
    
    function default(struct rc) {
	}


/* 	function login(struct rc){
		
		if (SESSION.isUserLoggedIn eq true) {
        	location ("/index.cfm",false);
		} else {
			SESSION.isUserLoggedIn = false;
			rc.error_message = "";
			if(CGI.REQUEST_METHOD == "POST")
			{
				email 		= rc.emaillogin?:"";
				password 	= rc.passwordlogin?:"";

				if(email != "" && password != "")
				{
					var checkUser = variables.userService.login(email,password);
					if(checkUser.recordCount() == 1)
					{
						SESSION.isUserLoggedIn = true;
						SESSION.userID = checkUser.userID;
						SESSION.firstName = checkUser.firstName;
						SESSION.lastName = checkUser.lastName;
						SESSION.email = checkUser.email;
						SESSION.password = checkUser.password;
						SESSION.phone = checkUser.phoneNumber;
						SESSION.location = checkUser.location;
						SESSION.dateOfBirth=dateFormat(checkUser.dateOfBirth,"dd-mm-yyyy");
						location("/index.cfm",false);
					}
					else{
						rc.error_message = "Sai email hoặc mật khẩu";
					} 
				}	
			}
		}
	}
 */
	
	function changePassword() {
		if(SESSION.isUserLoggedIn eq true) {
			if(CGI.REQUEST_METHOD=="POST") {
				if(structKeyExists(form,"btnSubmit")){
					if(form.btnSubmit eq "Đổi mật khẩu") {
						oldPassword = encrypt(form.oldPassword,"taKepHoTO","CFMX_COMPAT","Base64");
						if(oldPassword eq SESSION.password) {
							// newPassword = form.newPassword;
							var updatePassword = variables.userService.updatePassword(form.newPassword);
							location("/index.cfm/user/editFreelancer",false);
						} else {
							rc.error_message = "Sai mật khẩu cũ";
						}
					}
				}
			}
		}
	}

	function register(struct rc) {
		if (SESSION.isUserLoggedIn eq true) {
	        location ("/index.cfm",false);
		} else if (SESSION.isUserLoggedIn eq false) {
			rc.error_message = "";
			if(CGI.REQUEST_METHOD=="POST")
			{
				if(structKeyExists(form,"btnSubmit")){
					if(form.btnSubmit eq "Đăng ký") {
						lastname	=form.lastname;
						firstname	=form.firstname;
						email		=form.email;
						password	=form.password;

						day 		=form.dayOfBirth;
						month 		=form.monthOfBirth;
						year 		=form.yearOfBirth;
						date 		=createDate(year,month,day);
						dateOfBirth =dateFormat(createODBCDate(date),"yyyy-mm-dd");
						if(form.sex==0)
						{
							sex="Nữ";
						} else {
							sex="Nam";
						}

						if(form.classify==0)
						{
							classify="Khách Hàng";
						} else {
							classify="Nhiếp ảnh gia";
						}
						var registerUser=variables.userService.register(lastname,firstname,email,password,dateOfBirth,sex,classify);
						location("/index.cfm/main/default",false);
					}else if(form.btnSubmit eq "Đăng nhập") {
						email 		= form.emaillogin;
						password 	= form.passwordlogin;

						if(email != "" && password != "")
						{
							var checkUser = variables.userService.login(email,password);
							if(checkUser.recordCount() == 1)
							{
								SESSION.isUserLoggedIn = true;
								SESSION.userID = checkUser.userID;
								SESSION.firstName = checkUser.firstName;
								SESSION.lastName = checkUser.lastName;
								SESSION.email = checkUser.email;
								SESSION.password = checkUser.password;
								SESSION.phone = checkUser.phoneNumber;
								SESSION.location = checkUser.location;
								SESSION.dateOfBirth=dateFormat(checkUser.dateOfBirth,"dd-mm-yyyy");
								location("/index.cfm",false);
							}
							else{
								rc.error_message = "Sai email hoặc mật khẩu";
							} 
						}	
					}
				}
			}
		} /* Complete login and register */
	}


	function updateInfo() {
		if (SESSION.isUserLoggedIn eq true) {
			if(CGI.REQUEST_METHOD=="POST"){
				if(structKeyExists(form,"btnSubmit")){
					if(form.btnSubmit eq "Cập nhật thông tin") {
						lastname = form.lastnameUpdate;
						firstname = form.firstnameUpdate;
						phone = form.phoneUpdate;
						var updateInfo = variables.userService.updateInfo(lastname,firstname,phone);
						location("/index.cfm/user/editFreelancer",false);
					}
				}
			}
		}
	} /* Complete update Information */



	function exit()
	{
		SESSION.isUserLoggedIn = false;
		location("/index.cfm",false)
	}
}
