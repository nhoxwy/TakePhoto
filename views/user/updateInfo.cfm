<link rel="stylesheet" type="text/css" href="/assets/css/updateInfo.css">

<cfoutput>
  <cfif SESSION.isUserLoggedIn EQ true>
    <div id="updateInfo">
      <h1 class="text-center updateInfo-title">Xin chào, #SESSION.userLoggedIn.firstname#</h1>
      <h3 class="text-center">Thay đổi thông tin cá nhân của bạn</h3>
      <div class="col-sm-6 col-md-4 col-md-offset-4">
        <div class="account-wall">
          <img class="profile-img" src="https://x.myspacecdn.com/new/common/images/user.png" alt="">
          <form class="form-signin" method="post">
              <input type="text" class="form-control" name="lastnameUpdate" placeholder="Họ" value="#SESSION.userLoggedIn.lastName#" required>
              <input type="text" class="form-control" name="firstnameUpdate" placeholder="Tên" value="#SESSION.userLoggedIn.firstName#" required>
              <input type="text" class="form-control" name="phoneUpdate" value="#SESSION.userLoggedIn.phonenumber#" minlength="10" maxlength="11" placeholder="Số điện thoại của bạn" required>
              <div class="form=group">
                <div class="col-xs-4" style="padding-left:0px;">
                  <select class="form-control" id="dayOfBirth" name="dayOfBirth">
                    <option selected value="#dateFormat(#SESSION.userLoggedIn.dateOfBirth#,"dd")#">#dateFormat(#SESSION.userLoggedIn.dateOfBirth#,"dd")#</option>
                    <cfloop index="i" from="1" to="31">
                        <option value="#i#">#i#</option>
                    </cfloop>
                  </select>
                </div>
                <div class="col-xs-4" style="padding-right:0px; padding-left:0px">
                  <select class="form-control" id="monthOfBirth" name="monthOfBirth">
                    <option selected value="#dateFormat(#SESSION.userLoggedIn.dateOfBirth#,"mm")#">#dateFormat(#SESSION.userLoggedIn.dateOfBirth#,"mm")#</option>
                    <cfloop index="j" from="1" to="12">
                        <option value="#j#">#j#</option>
                    </cfloop>
                  </select>
                  </div>
                <div class="col-xs-4" style="padding-right:0px;">
                  <select class="form-control" id="yearOfBirth" name="yearOfBirth">
                    <option selected value="#dateFormat(#SESSION.userLoggedIn.dateOfBirth#,"yyyy")#">#dateFormat(#SESSION.userLoggedIn.dateOfBirth#,"yyyy")#</option>
                    <cfloop index="k" from="1900" to="#dateFormat(now(),"yyyy")#">
                        <option value="#k#">#k#</option>
                    </cfloop>
                  </select>
                </div>
              </div>
              <input type="submit" class="btn btn-lg btn-primary btn-block" name="btnSubmit" value="Cập nhật thông tin">
              <a href="/index.cfm/user/info" class="pull-right inline">Hủy bỏ?</a>  
          </form>
        </div>
      </div>
    </div>
    <cfelse>
      <cfscript>
        location("/index.cfm/user/register",false);
      </cfscript>
  </cfif>
</cfoutput>