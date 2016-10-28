<link rel="stylesheet" type="text/css" href="/assets/css/login.css">

<div id="login">
  <h1 class="text-center login-title">Chào mừng bạn quay trở lại</h1>
  <h3 class="text-center">Đăng nhập để sử dụng dịch vụ</h3>
  <div class="col-sm-6 col-md-4 col-md-offset-4">
    <div class="account-wall">
        <img class="profile-img" src="https://x.myspacecdn.com/new/common/images/user.png"
            alt="">
        <form class="form-signin" method="post" onsubmit="return" enctype="application/x-www-form-urlencoded">
          <input type="text" class="form-control" placeholder="Nhập email của bạn" name="emaillogin" required autofocus>
          <input type="password" class="form-control" placeholder="Mật khẩu" name="passwordlogin" required>
          <button class="btn btn-lg btn-primary btn-block" type="submit">Đăng nhập</button>
          <a href="#" class="pull-right inline">Quên mật khẩu?</a>
        </form>
    </div>
    <a href="/index.cfm/user/register" class="text-center new-account">Tạo tài khoản</a>
  </div>
</div>