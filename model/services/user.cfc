component  {

	function login(string email,string password) {
		qr = new Query();
		qr = queryExecute("
			SELECT *
			FROM user
			INNER JOIN skill
				ON skill.userID = user.userID
			WHERE email=? AND password=?",
			[{value=email,cfsqltype="cf_sql_varchar"}
			,{value=encrypt(password,"taKepHoTO","CFMX_COMPAT","Base64"),cfsqltype="cf_sql_varchar"}]
			,{datasource="takephoto"});
		return qr;
	}

	function register(string lastname,string firstname,string email,string password,Date dateOfBirth,string sex,string classify)
	{		
		queryExecute("
			INSERT INTO user (lastname,firstname,email,password,dateOfBirth,sex,classify) 
			VALUES (?,?,?,?,?,?,?)"
			,[lastname,firstname,email,encrypt(password,"taKepHoTO","CFMX_COMPAT","Base64")
			,dateOfBirth,sex,classify]
			,{datasource="takephoto"});
	}

	function registerSkill(string email) {
		queryExecute("
			INSERT INTO skill(userID)
			SELECT userID
			FROM user
			WHERE email=?"
			,[{value=email}]
			,{datasource="takephoto"});
	}

	function updateInfo (string lastname,string firstname,string phone,Date dateOfBirth) {
		queryExecute("
			UPDATE user 
			SET lastName=?, firstName=?, phoneNumber=?, dateOfBirth=?
			WHERE userID=?",
			[{value=lastname,cfsqltype="cf_sql_varchar"}
			,{value=firstname,cfsqltype="cf_sql_varchar"}
			,{value=phone,cfsqltype="cf_sql_varchar"}
			,{value=dateOfBirth,cfsqltype="cf_sql_date"}
			,SESSION.userLoggedIn.userID]
			,{datasource="takephoto"});
	}


	function updatePassword (string newPassword) {
		queryExecute("
			UPDATE user 
			SET password=?
			WHERE userID=?"
			,[encrypt(newPassword,"taKepHoTO","CFMX_COMPAT","Base64"), SESSION.userLoggedIn.userID]
			,{datasource="takephoto"});
	}

	function getBook(numeric userID) {
		qr = new Query();
		qr = queryExecute("
			SELECT *
			FROM book
			WHERE userID=?"
			,[{value=userID}]
			,{datasource="takephoto"});
		return qr;
	}

	function getAlbum(numeric userID) {
		qr = new Query();
		qr = queryExecute("
			SELECT *
			FROM album
			WHERE userID=?"
			,[{value=userID}]
			,{datasource="takephoto"});
		return qr;
	}
}