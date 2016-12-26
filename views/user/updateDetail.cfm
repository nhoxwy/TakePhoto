<link rel="stylesheet" type="text/css" href="/assets/css/updateDetail.css">

<cfoutput>
  <cfif SESSION.isUserLoggedIn EQ true>
    <div id="updateDetail">
      <h1 class="text-center updateDetail-title">Xin chào, #SESSION.userLoggedIn.firstname#</h1>
      <h3 class="text-center">Thay đổi thông tin chi tiết của bạn</h3>
      <div class="col-sm-6 col-md-4 col-md-offset-4">
        <div class="account-wall">
          <img class="profile-img" src="https://x.myspacecdn.com/new/common/images/user.png" alt="">
          <form class="form-signin" method="post">
              <textarea class="form-control" name="lastnameUpdate" value="#SESSION.userLoggedIn.about#" placeholder="Tôi là #SESSION.userLoggedIn.firstname#" rows="4" required></textarea>
              <div class="form=group">
                <div class="col-xs-6" style="padding-left:0px;">
                    <select class="form-control" id="photoSkill" name="photoSkill">
                        <option disabled selected>Chụp ảnh</option>
                        <cfloop index="i" from="0" to="100">
                            <option value="#i#">#i#%</option>
                        </cfloop>
                    </select>
                </div>
                 <div class="col-xs-6" style="padding-right:0px;">
                    <select class="form-control" id="videoSkill" name="videoSkill">
                        <option disabled selected>Quay phim</option>
                        <cfloop index="i" from="0" to="100">
                             <option value="#i#">#i#%</option>
                        </cfloop>
                    </select>
                </div>
                </div>
                <div class="form=group">
                <div class="col-xs-6" style="padding-left:0px;">
                    <select class="form-control" id="ptsSkill" name="ptsSkill">
                        <option disabled selected>Photoshop</option>
                        <cfloop index="i" from="0" to="100">
                             <option value="#i#">#i#%</option>
                        </cfloop>
                    </select>
                </div>
                <div class="col-xs-6" style="padding-right:0px;">
                    <select class="form-control" id="filmSkill" name="filmSkill">
                        <option disabled selected>Dựng phim</option>
                        <cfloop index="i" from="0" to="100">
                            <option value="#i#">#i#%</option>
                        </cfloop>
                    </select>
                </div>
                </div>
                <select class="form-control" id="place" name="place">
                    <option disabled selected>Đến từ</option>
                    <cfloop query="#SESSION.location#">
                        <option value="#SESSION.location.name#">#SESSION.location.name#</option>
                    </cfloop>
                </select>
              <input type="submit" class="btn btn-lg btn-primary btn-block" name="btnSubmit" value="Cập nhật chi tiết">
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