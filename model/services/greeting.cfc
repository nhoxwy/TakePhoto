component {
    // query function greet() {
    //     qr=queryExecute("SELECT * from location",{},{datasource="takephoto"});
    //     return qr;
    // } 
    query function location() {
        qr=queryExecute("SELECT name from location",{},{datasource="takephoto"});
        return qr;
    }
    query function kind() {
        qr=queryExecute("SELECT name from kind",{},{datasource="takephoto"});
        return qr;
    } 
}
