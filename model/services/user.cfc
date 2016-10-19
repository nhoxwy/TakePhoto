

component  {
	 function login(string email,string password) {
		qr=new Query();
		qr=queryExecute("SELECT * FROM user where email= ? AND password=?",
			[{value=email,cfsqltype="cf_sql_varchar"},{value=password,cfsqltype="cf_sql_varchar"}],{datasource="takephoto"});
		return qr;
	}

	function register(string lastname,string firstname,string email,string password)
	{
		
		queryExecute("INSERT INTO user(lastname,firstname,email,password) 
			VALUES (?,?,?,?)",[lastname,firstname,email,password],{datasource="takephoto"});
	}
	function load_change_password()
	{
		qr=new Query();
		// qr=queryExecute("SELECT email FROM user where email=?",[{value=SESSION.email,cfsqltype="cf_sql_varchar"}],{datasource="takephoto"});
		return qr;
	}

}