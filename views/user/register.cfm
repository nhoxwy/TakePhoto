<link rel="stylesheet" type="text/css" href="/assets/css/reg.css">


<div id="reg-log">
  <div class="container">
    <div class="col-md-7 col-xs-12">
     <h4><b>Take Photo giúp bạn tìm kiếm Freelancer và làm đẹp cuộc sống của mình.</b></h4>
     <img src="/assets/ico/map_login.png" class="img-responsive" style="width: 90%; height:90%; ">
   </div>
<form class="form-signin" method="post" onsubmit="return" enctype="application/x-www-form-urlencoded">
          <input type="text" class="form-control" placeholder="Nhập email của bạn" name="emaillogin" required autofocus>
          <input type="password" class="form-control" placeholder="Mật khẩu" name="passwordlogin" required>
          <button class="btn btn-lg btn-primary btn-block" type="submit">Đăng nhập</button>
          <a href="/index.cfm?action=user.login" class="pull-right inline">Quên mật khẩu?</a>
        </form>

   <div class="col-md-5 col-xs-12">
     <div id="register">
       <form method="post" onsubmit="return checkRegister()" enctype="application/x-www-form-urlencoded">
         <div class="col-xs-12">
           <h2><b>Đăng Ký</b></h2>
           <h4>Miễn phí cho mọi người.</h4>
         </div>
         <div class="form-group col-sm-6 col-xs-12">
            <input type="text" class="form-control" id="ho" name="lastname" placeholder="Họ">
         </div>
         <div class="form-group col-sm-6 col-xs-12">
            <input type="text" class="form-control" id="ten" name="firstname" placeholder="Tên">
         </div>
         <div class="form-group col-sm-12 col-xs-12">
            <input type="email" class="form-control" id="email-reg" name="email" placeholder="Email">
         </div>
         <div class="form-group col-sm-12 col-xs-12">
            <input type="password" class="form-control" id="password" name="password" minlength="6" placeholder="Mật khẩu">
         </div>
         <div class="form-group col-sm-12 col-xs-12">
            <input type="password" class="form-control" id="re-password" name="re_password" placeholder="Nhập lại mật khẩu">
         </div>
         <div class="form-group">
            <div class="col-xs-4"><input type="text" class="form-control" id="dayOfBirth" name="dayOfBirth" placeholder="Ngày sinh"></div>
            <div class="col-xs-4">
              <select class="form-control" id="monthOfBirth" name="monthOfBirth">
                <option value="1">Tháng 1</option>
                <option value="2">Tháng 2</option>
                <option value="3">Tháng 3</option>
                <option value="4">Tháng 4</option>
                <option value="5">Tháng 5</option>
                <option value="6">Tháng 6</option>
                <option value="7">Tháng 7</option>
                <option value="8">Tháng 8</option>
                <option value="9">Tháng 9</option>
                <option value="10">Tháng 10</option>
                <option value="11">Tháng 11</option>
                <option value="12">Tháng 12</option>
              </select>
            </div>
            <div class="col-xs-4">
              <input type="text" class="form-control" id="yearOfBirth" name="yearOfBirth" placeholder="Năm sinh">
            </div>
         </div>
         <div class="form-group col-sm-12 col-xs-12">
          <br>
          <label>Tôi là:</label>
            <input type="radio" name="sex" value="0" checked="checked"> Nữ &emsp;
            <input type="radio" name="sex" value="1"> Nam
         </div>
         <div class="form-group col-sm-12 col-xs-12">
          <label>Tôi muốn làm:</label>
            <input type="radio" name="classify" value="0" checked="checked"> Khách hàng &emsp;
            <input type="radio" name="classify" value="1"> Nhiếp ảnh gia
          </div>
         <div class="col-xs-12">
          <input class="btn btn-success col-xs-12 col-sm-4" type="submit" value="Đăng Ký" style="color: white; text-align: center;" />
          <p class="col-xs-12 col-sm-8" style="font-size: 13px;">Bằng cách nhấp vào Đăng ký, bạn đồng ý với <a href="">Các điều khoản</a> của chúng tôi.</p>
        </div>
       </form>
     </div>

   </div>
 </div>
</div>



<script type="text/javascript">
  function checkRegister(){
    var pass=document.getElementById("password");
    var confirmpass=document.getElementById("re-password");
    if(pass.value!=confirmpass.value)
    {
      alert("Mật khẩu phải trùng khớp");
      return false;
    
    }
    return true;
  }
</script>