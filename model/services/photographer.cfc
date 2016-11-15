component  {

	function filterFreelancer(string location) {
		qr=new Query();
		qr=queryExecute("
			SELECT * FROM user 
			WHERE location=?",[{value=location,cfsqltype="cf_sql_varchar"}],{datasource="takephoto"});
		return qr;
	}
}