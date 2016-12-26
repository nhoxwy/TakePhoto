<link rel="stylesheet" type="text/css" href="/assets/css/info.css">
<link href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css" rel="stylesheet" media="screen">
<style type="text/css">
   body {
      color: #000000;
   }
}
</style>

<cfif SESSION.isUserLoggedIn EQ true> 
   <cfset scr = "/uploadImage/#SESSION.userLoggedIn.userID#/avatar.jpg">
   <cfimage source="#scr#" name="avatar">
   <cfset imageSetAntialiasing(avatar,"on")>
   <cfset imageScaleToFit(avatar,280,280,"lanczos")>

   <div class="container edit">
      <h3 class="about">
         <img class="img-user" src="https://www.facebook.com/images/profile/timeline/app_icons/info_24.png"/>
         <a>Thông tin</a>
      </h3>
      <hr/>
      <div class="row">
         <div class="col-sm-2">
            <ul class="nav nav-tabs tabs-left" id="mytab" data-tabs="tabs">
               <li class="active"><a href="#overview" data-toggle="tab">Tổng quan</a></li>
               <li><a href="#book" data-toggle="tab">Lịch hẹn</a></li>
               <li><a href="#detail" data-toggle="tab">Chi tiết về bạn</a></li>
            </ul>
         </div>
         <cfoutput>
            <div class="col-sm-10">
               <div class="tab-content">
                  <div class="tab-pane active" id="overview">
                     <div class="col-sm-12 col-md-4 no-pad">
                        <div class="user-image">
                           <!--- <img src="/uploadImage/#SESSION.userLoggedIn.userID#/avatar.jpg" alt="avatar" class="img-responsive"> --->
                           <cfimage action="writetobrowser" source="#avatar#">
                        </div>
                        <div class="user-i-image">
                           <a href="/index.cfm/user/changeAvatar" style="text-decoration:none;"><i class="fa fa-camera fa-2x"></i></a>
                        </div>
                     </div>
                     <div class="col-sm-12 col-md-8">
                        <div class="row">
                           <h4 style="color: rgb(231,76,60);">#SESSION.userLoggedIn.lastName# #SESSION.userLoggedIn.firstName#</h4>
                           <i class="glyphicon glyphicon-map-marker"></i>#SESSION.userLoggedIn.location#
                           <hr/>
                        </div>
                        <div class="row">
                           <div class="col-sm-6 col-md-6 show">
                              <i class="glyphicon glyphicon-envelope"></i>#SESSION.userLoggedIn.email#
                              <hr/>
                              <i class="glyphicon glyphicon-phone"></i>#SESSION.userLoggedIn.phonenumber#
                              <hr/>
                              <i class="glyphicon glyphicon-gift"></i>#dateFormat(#SESSION.userLoggedIn.dateOfBirth#,"dd-mm-yyyy")#
                              <hr/>
                              </p>
                           </div>
                           <div class="col-sm-6 col-md-6 show">
                              <i class="glyphicon glyphicon-question-sign"></i><a href="/index.cfm/user/changePassword">Đổi mật khẩu?</a>
                              <hr/>
                              <i class="glyphicon glyphicon-info-sign"></i><a>Chuyển tài khoản/Xóa</a>
                              <hr/>
                              <i class="glyphicon glyphicon-pencil"></i><a href="/index.cfm/user/updateInfo">Chỉnh sửa thông tin</a>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="tab-pane" id="book">
                     <cfloop query="#SESSION.userLoggedInBook#">
                        <div class="col-sm-6 col-md-4">
                           <img src="http://3.bp.blogspot.com/-IbEOTNtCMyU/TfCAdHaAxEI/AAAAAAAAA8U/EATib38SSAM/s320/joe-mcelderry.jpg" class="img-responsive img-rounded"/>
                        </div>
                        <div class="col-sm-6 col-md-8">
                           <div class="row">
                              <h4 style="color:rgb(231,76,60);">#SESSION.userLoggedInBook.nameBook#</h4>
                              <small><cite>#SESSION.userLoggedInBook.fromBook#<i class="glyphicon glyphicon-map-marker"></i></cite></small>
                              <hr/>
                           </div>
                           <div class="row">
                              <div class="col-sm-6 col-md-6 show">
                                 <a><i class="glyphicon glyphicon-envelope"></i>#SESSION.userLoggedInBook.mailBook#</a>
                                 <hr/>
                                 <a><i class="glyphicon glyphicon-phone"></i>#SESSION.userLoggedInBook.phoneBook#</a>
                                 <hr/>
                                 <a><i class="glyphicon glyphicon-time"></i>#dateFormat(#SESSION.userLoggedInBook.dateBook#,"dd-mm-yyyy")#</a>
                                 <hr/>
                                 </p>
                              </div>
                              <div class="col-sm-6 col-md-6 show">
                                 <a><i class="glyphicon glyphicon-camera"></i>Chụp ảnh #SESSION.userLoggedInBook.kindBook#</a>
                                 <hr/>
                                 <a><i class="glyphicon glyphicon-tree-deciduous"></i>Chụp tại #SESSION.userLoggedInBook.locationBook#</a>
                                 <hr/>
                                 <div class="dropdown">
                                    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Trạng thái
                                    <span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                       <li><a>Chấp nhận</a></li>
                                       <li><a>Đang chờ</a></li>
                                    </ul>
                                    <a><i class="glyphicon glyphicon-trash"></i>Xóa bỏ người này?</a>
                                 </div>
                              </div>
                           </div>
                           <hr/>
                        </div>
                     </cfloop>
                  </div>
                  <div class="tab-pane" id="detail">
                     <div class="col-lg-6">
                        <legend>Giới thiệu bản thân<a href="/index.cfm/user/updateDetail"><i class="glyphicon glyphicon-pencil"></i></a></legend>
                        <p>#SESSION.userLoggedIn.about#</p>
                     </div>
                     <div class="col-lg-6 skill">
                        <legend>Các chỉ số kỹ năng</legend>
                        <h5>Kỹ năng chụp</h5>
                        <div class="progress">
                           <div class="progress-bar" id="photo-skill" style="width:#SESSION.userLoggedIn.photoSkill#%">#SESSION.userLoggedIn.photoSkill#%</div>
                        </div>
                        <h5>Kỹ năng quay</h5>
                        <div class="progress">
                           <div class="progress-bar" id="film-skill" style="width:#SESSION.userLoggedIn.videoSkill#%">#SESSION.userLoggedIn.videoSkill#%</div>
                        </div>
                        <h5>Xử lý ảnh</h5>
                        <div class="progress">
                           <div class="progress-bar" id="pts-skill" style="width:#SESSION.userLoggedIn.psdSkill#%">#SESSION.userLoggedIn.psdSkill#%</div>
                        </div>
                        <h5>Xử lý video</h5>
                        <div class="progress">
                           <div class="progress-bar" id="video-skill" style="width:#SESSION.userLoggedIn.filmSkill#%">#SESSION.userLoggedIn.filmSkill#%</div>
                        </div>
                     </div>
                     <!-- End Skill -->
                  </div>
               </div>
            </div>
         </cfoutput>
      </div>


      <!--- Phần album ảnh --->
      <cfoutput>
         <form method="post">
            <h3 class="album">
               <img class="img-user" src="https://www.facebook.com/images/profile/timeline/app_icons/photos_24.png"/>
               <a>Album của #SESSION.userLoggedIn.firstName#</a>
            </h3>
            <input type="submit" class="btn btn-danger" name="btnSubmit" value="Tạo Album">
         </form>
         <hr/>
         <div class="row">
            <cfloop query="#SESSION.userLoggedInAlbum#">
               <a href="/index.cfm/user/showImage?alid=#SESSION.userLoggedInAlbum.albumID#">
                  <div class="item col-xs-12 col-sm-6 col-md-4 col-lg-4">
                     <div class="thumbnail">
                        <div class="caption">
                           <h4 class="group inner list-group-item-heading">#SESSION.userLoggedInAlbum.albumName#</h4>
                        </div>
                        <div class="cycler">
                           <img class="group list-group-image img-responsive active" src="/uploadImage/#SESSION.userLoggedIn.userID#/#SESSION.userLoggedInAlbum.photoName#.jpg"/>
                        </div>
                     </div>
                  </div>
               </a>
            </cfloop>
         </div>
      </cfoutput>
   </div>
<cfelse>
   <cfscript>
      location("/index.cfm/user/register",false);
   </cfscript>
</cfif>



<script src="http://code.jquery.com/jquery-1.11.1.js"></script>
<script type="text/javascript" src="/assets/js/jquery.uploadPreview.js"></script>
<script>
	function cycleImages(){
  		var $active = $('.cycler .active');
  		var $next = ($active.next().length > 0) ? $active.next() : $('.cycler img:first');
  		$next.css('z-index',2);//move the next image up the pile
  		$active.fadeOut(2000,function(){//fade out the top image
		$active.css('z-index',1).show().removeClass('active');//reset the z-index and unhide the image
      	$next.css('z-index',3).addClass('active');//make the next image the top one
  		});
	}
	$(document).ready(function(){
		 $('#mytab a').click(function (e) {
            e.preventDefault()
            $(this).tab('show');
        });
		$(".cycler>img").hover(function(){
			setTimeout('cycleImages()', 2000);
		},function(){
			return false;
		});
	    $(".user-i-image i").mouseover(function(){
	    	$(".user-image").css("opacity","0.5");
         $(".user-i-image i").css("color","rgb(231,76,60)");
	    });
	    $(".user-i-image i").mouseleave(function(){
	    	$(".user-image").css("opacity","1");
         $(".user-i-image i").css("color","#fff");
	    });
       $("#edit-password-form-div").click(function(){
         $("#edit-password-div").css("display", "block");
       });
       $("#edit-password-form #password-cancel").click(function() {
         $("#edit-password-div").hide();
      })
	});
  
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