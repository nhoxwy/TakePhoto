<script src="/assets/js/dropzone.js"></script>
<link rel="stylesheet" href="/assets/css/dropzone.css">

<style type="text/css">
	body {
		color: black;
	}
</style>
<br>
<br>
<br>
<br>

<cfoutput>
	<cfset scr = "/uploadImage/#SESSION.userLoggedIn.userID#/avatar.jpg">
	<cfimage source="#scr#" name="avatar">
	<cfset imageSetAntialiasing(avatar,"on")>
	<cfset imageScaleToFit(avatar,300,300,"lanczos")>
	<cfimage action="writetobrowser" source="#avatar#">

  <form class="dropzone" id="my-awesome-dropzone" method="post" enctype="multipart/form-data">
    <input type="submit" id="submitAva" name="btnSubmit" value="Lưu" />
		<button type="button" class="btn" onclick="redirectInfo();">Hủy</button>
  </form>
  
  <cfif form.keyExists("btnSubmit")>
    <cfif form.btnSubmit eq "Lưu">
      <cfset destination = "/uploadImage/#SESSION.userLoggedIn.userID#/avatar.jpg">
      <cffile action="uploadall"
              destination="#destination#"
              nameconflict="overwrite">
    </cfif>
  </cfif>
</cfoutput>

<script type="text/javascript">
 	function redirectInfo() {
    location.href = "/index.cfm/user/info";
 	}
  Dropzone.options.myAwesomeDropzone = {
    url: "/index.cfm/user/changeAvatar",
    parallelUploads: 1,
    maxFiles: 1,
    acceptedFiles: ".jpg",
    renameFilename: "avatar",
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
      this.on("complete", function (file) {
      });
      this.on("queuecomplete", function (file) {
        location.href = "/index.cfm/user/info";
      });
    }
  };
  myAwesomeDropzone.on("complete", function(file) {
  });
</script>