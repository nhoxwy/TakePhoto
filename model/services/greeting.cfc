component {
    function greet() {
        qr=queryExecute("SELECT * from location",{},{datasource="takephoto"});
        return qr;
    }
 
}
