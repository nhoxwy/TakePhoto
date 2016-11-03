<link rel="stylesheet" type="text/css" media="all" href="/assets/css/show-image.css">
<link rel="stylesheet" type="text/css" media="all" href="/assets/css/magnific-popup.css">
<script src="http://code.jquery.com/jquery-1.11.1.js"></script>
<script src="/assets/js/jquery.magnific-popup.js" type="text/javascript"></script>


<div id="show-image">
	<div class="container">
		<h3>
			<img class="img-user" src="https://www.facebook.com/images/profile/timeline/app_icons/photos_24.png"/>
			<a href="#">Tên Album</a>
		</h3>
		<hr/>
		<div class="col-sm-9">
				<ul id="portfolio" class="clearfix">
			      <li><a href="/assets/image/item01@2x.jpg" title="Tên Album"><img src="/assets/image/item01@2x.jpg" alt="brick and by windows"></a></li>
			      
			      <li><a href="/assets/image/item02@2x.jpg" title="Tên Album"><img src="/assets/image/item02.jpg" alt="old-style ipad icons"></a></li>
			      
			      <li><a href="/assets/image/item03@2x.jpg" title="Tên Album"><img src="/assets/image/item03.jpg" alt="mobile iphone app profile ui"></a></li>
			      
			      <li><a href="/assets/image/item04@2x.jpg" title="Tên Album"><img src="/assets/image/item04.jpg" alt="new balance shoes"></a></li>
			      
			      <li><a href="/assets/image/item05@2x.jpg" title="Tên Album"><img src="/assets/image/item05.jpg" alt="rive radio icon"></a></li>
			      
			      <li><a href="/assets/image/item06@2x.jpg" title="Tên Album"><img src="/assets/image/item06.jpg" alt="blood pressure app ui"></a></li>
			      
			      <li><a href="/assets/image/item07@2x.jpg" title="Tên Album"><img src="/assets/image/item07.jpg" alt="memories feed ui iphone"></a></li>
			      
			      <li><a href="/assets/image/item08@2x.jpg" title="Tên Album"><img src="/assets/image/item08.jpg" alt="apple device vector icons"></a></li>
			    </ul>
			</div>
		<div class="col-sm-3">
			<div class="back_link">
				<a href="/index.cfm/user/editFreelancer" class="back"><i class="glyphicon glyphicon-arrow-left"></i>Quay lại trang trước</a>
			</div>
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
		</div>
	</div>
</div>

<script>
$('#portfolio').magnificPopup({
    delegate: 'a',
    type: 'image',
    image: {
      cursor: null,
      titleSrc: 'title'
    },
    gallery: {
      enabled: true,
      preload: [0,1],
      navigateByImgClick: true
		}
  });
</script>