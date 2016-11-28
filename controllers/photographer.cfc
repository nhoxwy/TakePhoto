component output="false" accessors="true" persistent="true" {
    property photographerService; 
    property greetingService;

    public function init(required any fw){
        variables.fw =fw;
        return this;
    }
    
    function default() {
        SESSION.location = variables.greetingService.myLocation();
        SESSION.Filter = variables.photographerService.startFilter("");
        if(structKeyExists(form,"btnSubmit")){
            SESSION.Filter = variables.photographerService.startFilter(form.location);
        }
    }
}