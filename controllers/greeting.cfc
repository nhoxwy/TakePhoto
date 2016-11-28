component output="false" displayname="" {
	property greetingService; 

    public function init(){
    	SESSION.location = variables.greetingService.greet();
    }
}