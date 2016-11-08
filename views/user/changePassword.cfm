<link rel="stylesheet" type="text/css" href="/assets/css/changePassword.css">

<cfoutput>
  <cfif SESSION.isUserLoggedIn EQ true>
    <div id="changePassword">
      <h1 class="text-center changePassword-title">Cập nhật mật khẩu</h1>
      <h3 class="text-center">Bạn muốn thay đổi mật khẩu?</h3>
      <div class="col-sm-6 col-md-4 col-md-offset-4">
        <div class="account-wall">
          <img class="profile-img" src="https://x.myspacecdn.com/new/common/images/user.png" alt="">
          <form class="form-signin" onsubmit="return checkRegister()" method="post">
              <input type="password" class="form-control" id="password" name="oldPassword" placeholder="Mật khẩu cũ" required>
              <input type="password" class="form-control" id="new-password" name="newPassword" minlength="6" placeholder="Mật khẩu mới" required>
              <input type="password" class="form-control" id="re-new-password" name="reNewPassword" placeholder="Nhập lại mật khẩu mới" required>
              <input type="submit" class="btn btn-lg btn-primary btn-block" name="btnSubmit" value="Đổi mật khẩu">
              <a href="/index.cfm/user/editFreelancer" class="pull-right inline">Hủy bỏ?</a>  
          </form>
        </div>
      </div>
    </div>
  </cfif>
</cfoutput>
<script src="http://code.jquery.com/jquery-1.11.1.js"></script>
<script>
function checkRegister(){
    var pass=document.getElementById("newPassword");
    var confirmpass=document.getElementById("reNewPassword");
    if(pass.value!=confirmpass.value)
    {
      alert("Mật khẩu phải trùng khớp");
      return false;
    
    }
    return true;
  }
</script>