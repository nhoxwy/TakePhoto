component {
	
	function startFilter(string location) {
		qr = new Query();
		qr = queryExecute("
			SELECT firstName, lastName, voteHeart, comment FROM user 
			WHERE location=? AND classify=?",
			[
				{value=location,cfsqltype="cf_sql_varchar"},
				{value="Nhiếp ảnh gia"}
			],{datasource="takephoto"});
		return qr;
	}
}