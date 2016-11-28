<link rel="stylesheet" type="text/css" href="/assets/css/photographer.css">
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<!--- <cfquery name="qr" datasource="takephoto">
	SELECT * FROM user
	WHERE
		classify = <cfqueryparam value="Nhiếp ảnh gias">
</cfquery> --->

<cfloop query="qr">
	<cfoutput>#SESSION.firstName#</cfoutput>
</cfloop>



<br>
<br>
<br>
<br>
<br>
<br>
<br>