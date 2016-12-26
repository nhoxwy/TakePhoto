<script src="/assets/js/dropzone.js"></script>
<link rel="stylesheet" href="/assets/css/dropzone.css">

<style type="text/css">
  body {
    color: black; 
  }  
</style><br>
<br>
<br>
<br>
<br>
<cfif SESSION.isUserLoggedIn eq true>
  
  <!--- <form method="post" action="submit">
    <input type="text" name="albumName" placeholder="Album chưa đặt tên">
  </form> --->
  <form class="dropzone" id="my-awesome-dropzone" method="post" enctype="multipart/form-data">
    <input type="submit" id="btnSubmit" name="btnSubmit" value="Đăng" />
  </form>
  
  <cfset uid = createUUID()>
  <cfif form.keyExists("btnSubmit")>
    <cfif form.btnSubmit eq "Đăng">
      <cfset photoName = "#SESSION.userLoggedIn.userID#_#SESSION.maxAlbumID.albumID#_#uid#">
      <cfset destination = "/uploadImage/#SESSION.userLoggedIn.userID#/#photoName#.jpg">
      <cffile action="uploadall"
              destination="#destination#"
              nameconflict="makeunique">
      <cfquery datasource="takephoto">
        INSERT INTO photo (albumId,photoName)
        VALUES ("#SESSION.maxAlbumID.albumID#","#photoName#")
      </cfquery>
    </cfif>
  </cfif>
  </cfif>

<script type="text/javascript">

  Dropzone.options.myAwesomeDropzone = {
    url: "/index.cfm/user/createAlbum",
    parallelUploads: 30,
    maxFiles: 30,
    acceptedFiles: "image/*",
    renameFilename: "#createUUID()#",
    addRemoveLinks: true,
    autoProcessQueue: false, 
    init: function() {
    var myAwesomeDropzone = this;

      this.element.querySelector("input[type=submit]").addEventListener("click", function(e) {
        e.preventDefault();
        e.stopPropagation();
        myAwesomeDropzone.processQueue();
      });
      this.on("sendingmultiple", function() {
      });
      this.on("successmultiple", function(files, response) {
      });
      this.on("errormultiple", function(files, response) {
      });
      this.on("queuecomplete", function (file) {
        location.href = "/index.cfm/user/info";
      });
    }
  };
  myAwesomeDropzone.on("complete", function(file) {
    myAwesomeDropzone.removeFile(file);
  });
</script>