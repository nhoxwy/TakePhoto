component  {
	query function startFilter(string location) {
		qr=new Query();
		if (location != "") {
			qr=queryExecute("
				SELECT * FROM user 
				WHERE location=? AND classify=?",
				[{value=location,cfsqltype="cf_sql_varchar"},"Nhiếp ảnh gia"],
				{datasource="takephoto"});
		} else if (location == "") {
			qr=queryExecute("
				SELECT * FROM user 
				WHERE classify=?",
				["Nhiếp ảnh gia"],
				{datasource="takephoto"});
		}
		return qr;
	}
}