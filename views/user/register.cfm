<link rel="stylesheet" type="text/css" href="/assets/css/register.css">

<div id="register">
  <div class="container">
    <div class="col-md-7 col-xs-12">
     <h4><b>Take Photo giúp bạn tìm kiếm Freelancer và làm đẹp cuộc sống của mình.</b></h4>
     <img src="/assets/ico/map_login.png" class="img-responsive" style="width: 90%; height:90%; ">
   </div>
   <div class="col-md-5 col-xs-12">
     <div id="login">
       <form method="post"> 
         <div class="form-group col-sm-6 col-xs-12">
            <label for="email">Email hoặc tên đăng nhập</label>
            <input type="email" class="form-control" id="email-login" name="email">
         </div>
         <div class="form-group col-sm-6 col-xs-12">
            <label for="password">Mật khẩu</label>
            <input type="password" class="form-control" id="password-login" name="password">
         </div>
        <div class="col-xs-12">
          <button type="submit" class="btn btn-success col-xs-12 col-sm-6" style="margin-right: 15px;">Đăng nhập</button>
          <a href="">Quên mật khẩu?</a>
        </div>
       </form>
     </div>


     <div id="reg">
       <form method="post" action="/index.cfm/user/register" enctype="application/x-www-form-urlencoded">
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
            <div class="col-xs-4"><input type="text" class="form-control" id="dayOfBirth" placeholder="Ngày sinh"></div>
            <div class="col-xs-4">
              <select class="form-control" id="monthOfBirth">
                <option>Tháng 1</option>
                <option>Tháng 2</option>
                <option>Tháng 3</option>
                <option>Tháng 4</option>
                <option>Tháng 5</option>
                <option>Tháng 6</option>
                <option>Tháng 7</option>
                <option>Tháng 8</option>
                <option>Tháng 9</option>
                <option>Tháng 10</option>
                <option>Tháng 11</option>
                <option>Tháng 12</option>
              </select>
            </div>
            <div class="col-xs-4">
              <input type="text" class="form-control" id="yearOfBirth" placeholder="Năm sinh">
            </div>
         </div>
         <div class="form-group col-sm-12 col-xs-12" id="sex">
          <br>
          <label>Tôi là:</label>
          <label class="radio-inline"><input type="radio" name="optradio">Nữ</label>
          <label class="radio-inline"><input type="radio" name="optradio">Nam</label>
         </div>
         <div class="form-group col-sm-12 col-xs-12" id="classify">
          <label>Tôi muốn làm:</label>
          <label class="radio-inline"><input type="radio" id="" name="optradio">Khách hàng</label>
          <label class="radio-inline"><input type="radio" name="optradio">Freelancer</label>
          </div>
         <div class="col-xs-12">
          <input class="btn col-xs-12 col-sm-4" type="submit" value="Đăng Ký" onclick="return checkRegister()" 
            style="background: #f44d3c; color: white; text-align: center;" />
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