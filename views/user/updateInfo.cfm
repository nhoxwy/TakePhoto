<link rel="stylesheet" type="text/css" href="/assets/css/updateInfo.css">

<div id="updateInfo">
  <h1 class="text-center updateInfo-title">Cập nhật thông tin</h1>
  <h3 class="text-center">Thay đổi thông tin cá nhân của bạn</h3>
  <div class="col-sm-6 col-md-4 col-md-offset-4">
    <div class="account-wall">
        <img class="profile-img" src="https://x.myspacecdn.com/new/common/images/user.png" alt="">
        <form class="form-signin" method="post" onsubmit="return" enctype="application/x-www-form-urlencoded">
            <input type="text" class="form-control" id="ho" name="lastname" placeholder="Họ của bạn">
            <input type="text" class="form-control" id="ten" name="firstname" placeholder="Tên của bạn">
            <input type="text" class="form-control" id="email-reg" name="phone" minlength="10" maxlength="11" placeholder="Số điện thoại của bạn">
            <button class="btn btn-lg btn-primary btn-block" type="submit">Cập nhật</button>
            <a href="/index.cfm/user/edit-freelancer" class="pull-right inline">Hủy bỏ?</a>  
        </form>
    </div>
  </div>
</div>