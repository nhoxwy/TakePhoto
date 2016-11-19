component output="false" accessors="true" persistent="true" {
    property userService; 

    public function init(required any fw){
        variables.fw =fw;
        return this;
    }
    
    
    function default(struct rc) {
    }

    
    function changePassword() {
        if (SESSSION.location eq "") {
            SESSION.location = "*"
            var startFilter = variables.photoService.startFilter(SESSION.location);
            return startFilter;
        }
    }
}
