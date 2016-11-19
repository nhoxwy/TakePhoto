component output="false" displayname=""  extends="framework.one" {

	this.datasource = "takephoto";

	this.name = hash( getCurrentTemplatePath() );
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0,0,0,30);
	this.setClientCookies = true;
	// This.clientManagement= true;

	//orm settings
	this.ormEnabled = true;
	this.ormSettings.cfclocation = expandPath("/model");
	this.ormSettings.automanageSession = false;
	this.ormSettings.flushatrequestend = false;
	this.ormSettings.useDBForMapping = false;


	function onApplicationStart(){
		return true;
	}

	function onSessionStart(){
		SESSION.isUserLoggedIn = false;
		SESSION.location = "";
		// SESSION.userID = 0;
	}



	// function onRequestStart(string targetPage){
	// 	if(structKeyExists(url, 'reload')){
	// 		onApplicationStart();
	// 		ormReload();
	// 	}
	// }


	// function onError( any Exception, string EventName){
	// 	// include 'error.cfm';
	// 	var errorEmail = new mail();
	// 	errorEmail.setTo('you@domain.com');
	// 	errorEmail.setFrom('system@domain.com');
	// 	errorEmail.setSubject('An Error has Occured');
	// 	errorEmail.setBody('
	// 		Message: #arguments.exception.message# <br />
	// 		Details: #arguments.exception.detail# <br />
	// 		Type: #arguments.exception.type# <br />
	// 	');
	// 	errorEmail.setType('html');
	// 	errorEmail.send();
	// }


}