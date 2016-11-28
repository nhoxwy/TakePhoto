component {
    // query function greet() {
    //     qr=queryExecute("SELECT * from location",{},{datasource="takephoto"});
    //     return qr;
    // } 
    query function myLocation() {
        qr=queryExecute("SELECT * from location",{},{datasource="takephoto"});
        return qr;
    } 
}
