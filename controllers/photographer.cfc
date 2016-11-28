component output="false" accessors="true" persistent="true" {
    property photographerService; 
    property firstName;

    public function init(required any fw){
        variables.fw = fw;
        return this;
    }
    
    public function default() {
		if(structKeyExists(form,"btnSubmit")){
			SESSION.Filter = variables.photographerService.startFilter(form.location);
    	}
    }
}