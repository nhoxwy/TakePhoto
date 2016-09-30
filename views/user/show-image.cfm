<link rel="stylesheet" type="text/css" href="/assets/css/show-image.css">


<div id="show-image">
	<div class="container">
		<h3>
			<img class="img-user" src="https://www.facebook.com/images/profile/timeline/app_icons/photos_24.png"/>
			<a href="#">Tên Album</a>
		</h3>
		<hr/>
		<div class="col-sm-9">
			<div class="carousel slide article-slide" id="article-photo-carousel">
			  <!-- Wrapper for slides -->
				<div class="carousel-inner cont-slider">
				    <div class="item active">
				      	<img alt="" title="" src="/assets/image/catelory_gallery_cuoi_hoi.jpg">
				    </div>
				    <div class="item">
				      	<img alt="" title="" src="/assets/image/catelory_gallery_ky_yeu.jpg">
				    </div>
				    <div class="item">
				      	<img alt="" title="" src="/assets/image/catelory_gallery_cuoi_hoi.jpg">
				    </div>
				    <div class="item">
				      	<img alt="" title="" src="/assets/image/catelory_gallery_macro.jpg">
				    </div>
				    <div class="item">
				      	<img alt="" title="" src="/assets/image/catelory_gallery_gia_dinh.jpg">
				    </div>
				 </div>
			  <!-- Indicators -->
				<ol class="carousel-indicators">
				   	<li class="active" data-slide-to="0" data-target="#article-photo-carousel">
				     	<img class="img-responsive" alt="" src="/assets/image/catelory_gallery_cuoi_hoi.jpg">
				    </li>
				    <li class="" data-slide-to="1" data-target="#article-photo-carousel">
				     	<img class="img-responsive" alt="" src="/assets/image/catelory_gallery_ky_yeu.jpg">
				    </li>
				    <li class="" data-slide-to="2" data-target="#article-photo-carousel">
				      	<img class="img-responsive" alt="" src="/assets/image/catelory_gallery_cuoi_hoi.jpg">
				    </li>
				    <li class="" data-slide-to="3" data-target="#article-photo-carousel">
				     	<img class="img-responsive" alt="" src="/assets/image/catelory_gallery_macro.jpg">
				    </li>
				    <li class="" data-slide-to="4" data-target="#article-photo-carousel">
				      	<img class="img-responsive" alt="" src="/assets/image/catelory_gallery_gia_dinh.jpg">
				    </li>
				</ol>
			</div>
		</div>
		<div class="col-sm-3">
			<div class="input-group"> 
	            <input class="form-control" placeholder="Thêm bình luận" type="text">
	            <span class="input-group-addon">
	                <a href="#"><i class="glyphicon glyphicon-edit"></i></a>  
	            </span>
	        </div>
	        <ul class="comments-list">
	            <li class="comment">
	                <a class="pull-left" href="#">
	                    <img class="avatar" src="http://bootdey.com/img/Content/user_1.jpg" alt="avatar">
	                </a>
	                <div class="comment-body">
	                    <div class="comment-heading">
	                        <h4 class="user">Nguyễn Hoàng Duy</h4>
	                        <h5 class="time">Cách đây 3 phút</h5>
	                    </div>
	                    <p>Hình đẹp quá!!!!!!!!!!!!!!!!</p>
	                </div>
	                <ul class="comments-list">
	                    <li class="comment">
	                        <a class="pull-left" href="#">
	                            <img class="avatar" src="http://bootdey.com/img/Content/user_3.jpg" alt="avatar">
	                        </a>
	                        <div class="comment-body">
	                            <div class="comment-heading">
	                                <h4 class="user">Nguyễn Chí Linh</h4>
	                                <h5 class="time">Cách đây 1 phút</h5>
	                            </div>
	                            <p>Đúng đẹp luôn</p>
	                        </div>
	                    </li> 
	                </ul>
	            </li>
	            <li class="comment">
	                <a class="pull-left" href="#">
	                    <img class="avatar" src="http://bootdey.com/img/Content/user_2.jpg" alt="avatar">
	                </a>
	             	<div class="comment-body">
	                    <div class="comment-heading">
	                        <h4 class="user">Khách hàng</h4>
	                        <h5 class="time">Cách đây 1 ngày</h5>
	                    </div>
	                    <p>Tuyệt vời.</p>
	                </div>
	            </li> 
	        </ul>
			<a href="/index.cfm/user/edit-freelancer" class="back"><i class="glyphicon glyphicon-arrow-left"></i>Quay lại trang trước</a>
		</div>
	</div>
</div>


<script>
	$(document).ready(function(){
		$('.carousel').carousel({
			interval: 2s;
		});
	});
</script>