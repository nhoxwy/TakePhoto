component  {
	function startFilter(string kind, string location) {
		qr=new Query();
		if (location != "") {
			if (kind != "") {
				qr=queryExecute("
					SELECT * 
					FROM (	
							SELECT * FROM user
							WHERE classify=:class AND location=:loca
						) A
					INNER JOIN vote
						ON vote.userID = A.userID
					WHERE kind=:kind",
					{
						class="Nhiếp ảnh gia",
						loca={value=location,cfsqltype="cf_sql_varchar"},
						kind={value=kind,cfsqltype="cf_sql_varchar"}
					},{datasource="takephoto"});
			}
			else {
				qr=queryExecute("
					SELECT * FROM user 
					INNER JOIN vote
						ON vote.userID = user.userID
					WHERE classify=? AND location=?",
					["Nhiếp ảnh gia",{value=location,cfsqltype="cf_sql_varchar"}],
					{datasource="takephoto"});
			}
		} else {
			if (kind != "") {
				qr=queryExecute("
					SELECT * FROM user 
					INNER JOIN vote
						ON vote.userID = user.userID
					WHERE kind=? AND classify=?",
					[{value=kind,cfsqltype="cf_sql_varchar"},"Nhiếp ảnh gia"],
					{datasource="takephoto"});
			}
			else {
				qr=queryExecute("
					SELECT * FROM user
					INNER JOIN vote
						ON vote.userID = user.userID
					WHERE classify=?",
					["Nhiếp ảnh gia"],
					{datasource="takephoto"});
			}
		}
		return qr;
	}

	function detail(numeric id) {
		qr = new query();
		qr = queryExecute("
			SELECT *
			FROM user
			INNER JOIN skill
				ON skill.userID = user.userID
			WHERE user.userID=?",
			[{value=id}],
			{datasource="takephoto"});
		return qr;
	}

	function book(numeric userID,string nameBook,string phoneBook,string kindBook,string locationBook,string dateBook) {
		queryExecute("
			INSERT INTO book (userID,nameBook,phoneBook,kindBook,locationBook,dateBook,statusBook)
			VALUES (?,?,?,?,?,?,?)"
			,[{value = userID}
			,{value = nameBook}
			,{value = phoneBook}
			,{value = kindBook}
			,{value = locationBook}
			,{value = dateFormat(dateBook,"yyyy-mm-dd")}
			,"Đang chờ"]
			,{datasource="takephoto"});
	}
}