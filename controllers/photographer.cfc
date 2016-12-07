component output="false" accessors="true" persistent="true" {
    property photographerService; 
    property greetingService;

    public function init(required any fw){
        variables.fw =fw;
        return this;
    }
    
    public function default() {
        SESSION.location = variables.greetingService.location();
        SESSION.kind = variables.greetingService.kind();
        SESSION.Filter = variables.photographerService.startFilter("","");

        if(structKeyExists(form,"btnSubmit")){
            if(form.btnSubmit eq "Tìm kiếm") {
                location = form.location;
                kind = form.kind;
                SESSION.Filter = variables.photographerService.startFilter(kind, location);
            }
        }
    }

    public function detail(struct rc) {
        SESSION.detailUserID = variables.photographerService.detail(rc.id);
        if(structKeyExists(form,"btnSubmit")) {
            if(form.btnSubmit eq "Đặt lịch hẹn") {
                var book = variables.photographerService.book(
                    rc.id,
                    form.nameBook,
                    form.phoneBook,
                    form.kindBook,
                    form.locationBook,
                    form.dateBook);
                location("/index.cfm",false);
            }
        }
    }
}