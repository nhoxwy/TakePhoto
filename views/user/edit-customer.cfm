<link rel="stylesheet" type="text/css" href="/assets/css/edit-customer.css">


<div id="edit-customer">
  <div class="container">
    <div class="col-md-7 col-xs-12">
      <img src="/assets/ico/map_login.png" class="img-responsive" style="width: 90%; height:90%; ">
    </div>
    <div class="col-md-5 col-xs-12">
      <div class="col-xs-12">
        <div class="alert alert-info alert-dismissable" id="divinfo">
          <a class="panel-close close" data-dismiss="alert">×</a> 
          <i class="glyphicon glyphicon-exclamation-sign"></i>
           Bạn muốn <strong>chỉnh sửa thông tin</strong> trang cá nhân ?
        </div>
        <div class="alert alert-success alert-dismissable" id="divsuccess">
          <a class="panel-close close" data-dismiss="alert">×</a> 
          <i class="glyphicon glyphicon-ok"></i>
           Bạn đã <strong>cập nhật</strong> thành công. <a href="#"><strong>Xem lại trang</strong></a>
        </div>
      </div>
      <div class="col-xs-12">
          <form class="form-horizontal" role="form">
              <div class="form-group">
                  <label class="col-lg-4 control-label">Ảnh đại diện</label>
                  <div class="col-lg-8">
                      <input class="form-control" value="" type="file">
                  </div>
              </div>
              <div class="form-group">
                  <label class="col-lg-4 control-label">Họ và Tên:</label>
                  <div class="col-lg-8">
                      <input class="form-control" placeholder="Nguyễn Văn An" value="" type="text">
                  </div>
              </div>
              <div class="form-group">
                  <label class="col-lg-4 control-label">Số điện thoại:</label>
                  <div class="col-lg-8">
                      <input class="form-control" placeholder="0123..." value="" type="text">
                  </div>
              </div>
              
              <div class="form-group">
                  <label class="col-lg-4 control-label">Email:</label>
                  <div class="col-lg-8">
                      <input class="form-control" placeholder="takephoto@gmail.com" value="" type="email">
                  </div>
              </div>
  
              <div class="form-group">
          <div class="col-xs-4"><input type="text" class="form-control" id="dayOfBirth" placeholder="Ngày sinh"></div>
          <div class="col-xs-4">
            <select class="form-control">
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
              
              <div class="form-group target">
                <label class="col-md-4 control-label">Mật khẩu cũ:</label>
                  <div class="col-md-8">
                      <input class="form-control" placeholder="Mật khẩu hiện tại" value="" type="password">
                  </div>
              </div>
  
              <div class="form-group">
                  <label class="col-md-4 control-label">Mật khẩu mới:</label>
                  <div class="col-md-8">
                      <input class="form-control" placeholder="Mật khẩu muốn đổi" value="" type="password">
                  </div>
              </div>
              <div class="form-group target">
                  <label class="col-md-4 control-label">Nhập lại:</label>
                  <div class="col-md-8">
                      <input class="form-control" placeholder="Mật khẩu đã được chọn đổi" value="" type="password">
                  </div>
              </div>
              <div class="form-group">
                  <label class="col-md-4 control-label"></label>
                  <div class="col-md-8">
                      <input class="btn btn-danger btn-orange" id="update" value="Cập nhật thông tin" type="button"> <span class=""></span>
                      <input class="btn btn-default" value="Hủy bỏ" type="reset">
                  </div>
              </div>
          </form>
      </div>
    </div>
  </div>
</div>

<script>
  $(document).ready(function(){
    $("#update").click(function(){
      $("#divinfo").fadeOut();
      $("#divsuccess").fadeIn();
    });
    $(".close").click(function(){
      $("#divinfo").fadeOut();
      $("#divsuccess").fadeOut();
    });
  });
</script>