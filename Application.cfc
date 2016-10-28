component output="false" displayname="" extends="framework.one" {
	
	this.datasource = "takephoto";

	this.name = hash( getCurrentTemplatePath() );
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0,0,20,0);
	this.setClientCookies = true;


	public void function onSessionStart(){
		SESSION.is_logged_in= false ;
		SESSION.logged_in_user_id= 0 ;
		SESSION.lastname="";
		SESSION.firstname="";
		SESSION.email="";
		SESSION.password ="";
		SESSION.address ="";
		SESSION.phone ="";
	}
}