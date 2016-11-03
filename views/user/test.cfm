<link rel="stylesheet" type="text/css" href="/assets/css/updateInfo.css">

<cfoutput>
  <cfif SESSION.isUserLoggedIn EQ true>
    <div id="updateInfo">
      <h1 class="text-center updateInfo-title">Cập nhật thông tin</h1>
      <h3 class="text-center">Thay đổi thông tin cá nhân của bạn</h3>
      <div class="col-sm-6 col-md-4 col-md-offset-4">
        <div class="account-wall">
          <img class="profile-img" src="https://x.myspacecdn.com/new/common/images/user.png" alt="">
          <form class="form-signin" method="post" onsubmit="return">
              <input type="text" class="form-control" name="lastnameUpdate" placeholder="#SESSION.lastName#" required>
              <input type="text" class="form-control" name="firstnameUpdate" placeholder="#SESSION.firstName#" required>
              <input type="text" class="form-control" name="phoneUpdate" minlength="10" maxlength="11" placeholder="#SESSION.phone#" required>
              <input type="submit" class="btn btn-lg btn-primary btn-block" name="btnSubmit" value="Cập nhật">
              <a href="/index.cfm/user/editFreelancer" class="pull-right inline">Hủy bỏ?</a>  
          </form>
        </div>
      </div>
    </div>
  </cfif>
</cfoutput>