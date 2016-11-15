<link rel="stylesheet" type="text/css" href="/assets/css/updateDetail.css">

<cfoutput>
  <cfif SESSION.isUserLoggedIn EQ true>
    <div id="updateDetail">
      <h1 class="text-center updateDetail-title">Xin chào, #SESSION.firstname#</h1>
      <h3 class="text-center">Thay đổi thông tin chi tiết của bạn</h3>
      <div class="col-sm-6 col-md-4 col-md-offset-4">
        <div class="account-wall">
          <img class="profile-img" src="https://x.myspacecdn.com/new/common/images/user.png" alt="">
          <form class="form-signin" method="post">
              <textarea class="form-control" name="lastnameUpdate" value="#SESSION.about#" placeholder="Hãy giới thiệu đôi nét về bạn!" rows="4" required></textarea>
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
                    <option disabled selected>Địa điểm hoạt động</option>
                    <option value="1">TP.Hồ Chí Minh</option>
                    <option value="2">An Giang</option>
                    <option value="3">Bà Rịa - Vũng Tàu</option>
                    <option value="4">Bắc Giang</option>
                    <option value="5">Bắc Cạn</option>
                    <option value="6">Bạc Liêu</option>
                    <option value="7">Bắc Ninh</option>
                    <option value="8">Bến Tre</option>
                    <option value="9">Bình Định</option>
                    <option value="10">Bình Dương</option>
                    <option value="11">Bình Phước</option>
                    <option value="12">Bình Thuận</option>
                    <option value="13">Cà Mau</option>
                    <option value="14">Đăk Lăk</option>
                    <option value="15">Đăk Nông</option>
                    <option value="16">Cao Bằng</option>
                    <option value="17">Điện Biên</option>
                    <option value="18">Đồng Nai</option>
                    <option value="19">Đồng Tháp</option>
                    <option value="20">Gia Lai</option>
                    <option value="21">Hà Giang</option>
                    <option value="22">Hà Nam</option>
                    <option value="23">Hà Tĩnh</option>
                    <option value="24">Hải Dương</option>
                    <option value="25">Hậu Giang</option>
                    <option value="26">Hòa Bình</option>
                    <option value="27">Hưng Yên</option>
                    <option value="28">Nha Trang - Khánh Hòa</option>
                    <option value="29">Phú Quốc - Kiên Giang</option>
                    <option value="30">Kon Tum</option>
                    <option value="31">Lai Châu</option>
                    <option value="32">Đà Lạt - Lâm Đồng</option>
                    <option value="33">Bà Rịa -Vũng Tàu</option>
                    <option value="34">Lạng Sơn</option>
                    <option value="35">Lào Cai</option>
                    <option value="36">Long An</option>
                    <option value="37">Nam Định</option>
                    <option value="38">Nghệ An</option>
                    <option value="39">Ninh Bình</option>
                    <option value="40">Ninh Thuận</option>
                    <option value="41">Phú Thọ</option>
                    <option value="42">Quảng Bình</option>
                    <option value="43">Quảng Nam</option>
                    <option value="44">Quảng Ngãi</option>
                    <option value="45">Quảng Ninh</option>
                    <option value="46">Quảng Trị</option>
                    <option value="47">Sóc Trăng</option>
                    <option value="48">Sơn La</option>
                    <option value="49">Tây Ninh</option>
                    <option value="50">Thái Bình</option>
                    <option value="51">Thái Nguyên</option>
                    <option value="52">Thanh Hóa</option>
                    <option value="53">Thừa Thiên Huế</option>
                    <option value="54">Tiền Giang</option>
                    <option value="55">Trà Vinh</option>
                    <option value="56">Tuyên Quang</option>
                    <option value="57">Vĩnh Long</option>
                    <option value="58">Vĩnh Phúc</option>
                    <option value="59">Yên Bái</option>
                    <option value="60">Cần Thơ</option>
                    <option value="61">Phú Yên</option>
                    <option value="62">Đà Nẵng</option>
                    <option value="63">Hải Phòng</option>
                    <option value="64">Hà Nội</option>
                </select>
              <input type="submit" class="btn btn-lg btn-primary btn-block" name="btnSubmit" value="Cập nhật chi tiết">
              <a href="/index.cfm/user/editFreelancer" class="pull-right inline">Hủy bỏ?</a>  
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