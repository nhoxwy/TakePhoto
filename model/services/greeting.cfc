component {
    function greet() {
        qr=queryExecute("SELECT * from catelogue",{},{datasource="takephoto"});
        return qr;
    }
 
}
