<link rel="stylesheet" type="text/css" href="/assets/css/updateInfo.css">

<cfoutput>
  <cfif SESSION.isUserLoggedIn EQ true>
    <div id="updateInfo">
      <h1 class="text-center updateInfo-title">Cập nhật thông tin</h1>
      <h3 class="text-center">Thay đổi thông tin cá nhân của bạn</h3>
      <div class="col-sm-6 col-md-4 col-md-offset-4">
        <div class="account-wall">
          <img class="profile-img" src="https://x.myspacecdn.com/new/common/images/user.png" alt="">
          <form class="form-signin" method="post">
              <input type="text" class="form-control" name="lastnameUpdate" placeholder="Họ" value="#SESSION.lastName#" required>
              <input type="text" class="form-control" name="firstnameUpdate" placeholder="Tên" value="#SESSION.firstName#" required>
              <input type="text" class="form-control" name="phoneUpdate" value="#SESSION.phone#" minlength="10" maxlength="11" placeholder="Số điện thoại của bạn" required>
              <input type="submit" class="btn btn-lg btn-primary btn-block" name="btnSubmit" value="Cập nhật thông tin">
              <a href="/index.cfm/user/editFreelancer" class="pull-right inline">Hủy bỏ?</a>  
          </form>
        </div>
      </div>
    </div>
  </cfif>
</cfoutput>