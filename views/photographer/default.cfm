<link rel="stylesheet" type="text/css" href="/assets/css/photographer.css">

<div class="container">
	<div id="photographer-menu">
		<div class="row">
			<div class="col-md-2 col-md-offset-1 col-xs-5">
				<div class="dropdown">
				  <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">Thể loại
				  <span class="glyphicon glyphicon-menu-down"></span></button>
				  <ul class="dropdown-menu">
				    <li><a href="#">Tất cả</a></li>
				    <li><a href="#">Cưới hỏi</a></li>
				    <li><a href="#">Kỷ yếu</a></li>
				    <li><a href="#">Macro</a></li>
				    <li><a href="#">Nghệ thuật</a></li>
				    <li><a href="#">Ngoại cảnh</a></li>
				    <li><a href="#">Tập thể</a></li>
				    <li><a href="#">Phong cảnh</a></li>
				    <li><a href="#">Streetlife</a></li>
				    <li><a href="#">Sự kiện</a></li>
				    <li><a href="#">Thể thao</a></li>
				    <li><a href="#">Thời trang</a></li>
				  </ul>
				</div>
			</div>
			<div class="col-md-2 col-xs-7">
				<div class="dropdown">
				  <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">Phong cách
				  <span class="glyphicon glyphicon-menu-down"></span></button>
				  <ul class="dropdown-menu">
				    <li><a href="#">Tự nhiên</a></li>
				    <li><a href="#">Hàn Quốc</a></li>
				    <li><a href="#">Streetlife (đời thường)</a></li>
				    <li><a href="#">Cá tính, tự do</a></li>
				    <li><a href="#">Cốt truyện</a></li>
				    <li><a href="#">Ngẫu nhiên, sáng tạo</a></li>
				    <li><a href="#">Cổ điển (vintage)</a></li>
				    <li><a href="#">Hiện đại</a></li>
				    <li><a href="#">Cổ điển và hiện đại</a></li>
				    <li><a href="#">Phóng sự</a></li>
				    <li><a href="#">Bụi</a></li>
				    <li><a href="#">Panoramic</a></li>
				    <li><a href="#">High Dynamic Range</a></li>
				    <li><a href="#">Phơi sáng</a></li>
				    <li><a href="#">Light painting</a></li>
				    <li><a href="#">Hồng ngoại</a></li>
				  </ul>
				</div>
			</div>
			<div class="col-md-2 col-xs-5">
		      <div class="input-group date form_datetime" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input1">
		        <input class="form-control" size="16" type="text" value="Ngày chụp" readonly>
					<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
		      </div>
				<input type="hidden" id="dtp_input1" value="" /><br/>
			</div>
			<div class="col-md-2 col-xs-7">
				<div class="dropdown">
				  <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">Địa điểm
				  <span class="glyphicon glyphicon-menu-down"></span></button>
				  <ul class="dropdown-menu">
				    <li><a href="#">Tự nhiên</a></li>
				    <li><a href="#">Hàn Quốc</a></li>
				    <li><a href="#">Streetlife (đời thường)</a></li>
				    <li><a href="#">Cá tính, tự do</a></li>
				    <li><a href="#">Cốt truyện</a></li>
				    <li><a href="#">Ngẫu nhiên, sáng tạo</a></li>
				    <li><a href="#">Cổ điển (vintage)</a></li>
				    <li><a href="#">Hiện đại</a></li>
				    <li><a href="#">Cổ điển và hiện đại</a></li>
				    <li><a href="#">Phóng sự</a></li>
				    <li><a href="#">Bụi</a></li>
				    <li><a href="#">Panoramic</a></li>
				    <li><a href="#">High Dynamic Range</a></li>
				    <li><a href="#">Phơi sáng</a></li>
				    <li><a href="#">Light painting</a></li>
				    <li><a href="#">Hồng ngoại</a></li>
				  </ul>
				</div>
			</div>
			<div class="col-md-2 col-xs-12">
				<div class="dropdown">
				  <button id="review-button" class="btn dropdown-toggle" type="button" data-toggle="dropdown">Yêu thích
					  <span id="review-down" class="glyphicon glyphicon-arrow-down"></span>
					  <span id="review-up" class="glyphicon glyphicon-arrow-up"></span>
					</button>
				</div>
			</div>
		</div>
	</div> <!--- End photographer-menu --->
	<hr>	
	
	<div id="list-photographer">
		<div class="row">
			<ul>
				<li class="col-md-3">
					<a href="/index.cfm/photographer/photographer-detail">
						<img src="/assets/image/team01.jpg" class="img-responsive img-circle">
						<h4>Nguyễn Chí Linh</h4>
						<p class="fa fa-map-marker"> Tp.Hồ Chí Minh</p>
						&nbsp;&nbsp;
						<br>
							<span class="fa fa-heart"> 68</span>&nbsp;&nbsp;&nbsp;<span class="fa fa-pencil-square-o"> 17 đánh giá</span>
							<hr>
						<button id="busy-btn" class="btn btn-danger" type="button">Rất tiếc, tôi bận</button>
					</a>
				</li>
				<li class="col-md-3">
					<a href="/index.cfm/photographer/photographer-detail">
						<img src="/assets/image/team01.jpg" class="img-responsive img-circle">
						<h4>Nguyễn Chí Linh</h4>
						<p class="fa fa-map-marker text-left"> Tp.Hồ Chí Minh</p>
						&nbsp;&nbsp;
						<br>
							<span class="fa fa-heart text-right"> 68</span>&nbsp;&nbsp;&nbsp;<span class="fa fa-pencil-square-o"> 17 đánh giá</span>
							<hr>
						<button id="mayBe-btn" class="btn" type="button">Tôi sẽ sắp xếp</button>
					</a>
				</li>
				<cfloop from="1" to="17" index="i">
					<li class="col-md-3">
						<a href="/index.cfm/photographer/photographer-detail">
							<img src="/assets/image/team01.jpg" class="img-responsive img-circle">
							<h4>Nguyễn Chí Linh</h4>
							<p class="fa fa-map-marker text-left"> Tp.Hồ Chí Minh</p>
							&nbsp;&nbsp;
							<br>
							<span class="fa fa-heart text-right"> 68</span>&nbsp;&nbsp;&nbsp;<span class="fa fa-pencil-square-o"> 17 đánh giá</span>
							<hr>
							<button id="book-btn" class="btn btn-success" type="button">Hãy hẹn tôi</button></a>
					</li>
				</cfloop>
				<li class="col-md-3">
					<a href="/index.cfm/photographer/photographer-detail">
						<img src="/assets/image/team01.jpg" class="img-responsive img-circle">
						<h4>Nguyễn Chí Linh</h4>
						<p class="fa fa-map-marker text-left"> Tp.Hồ Chí Minh</p>
						&nbsp;&nbsp;
						<br>
							<span class="fa fa-heart text-right"> 68</span>&nbsp;&nbsp;&nbsp;<span class="fa fa-pencil-square-o"> 17 đánh giá</span>
							<hr>
						<button class="btn" type="button"><i class="fa fa-check"></i> Đã hẹn</button>
					</a>
				</li>
			</ul>
		</div>
	</div> <!--- End list-photographer --->
</div>



<script>
$(document).on('ready', function(){
    $('.kv-ltr-theme-fa-alt').rating({
        hoverOnClear: false,
        theme: 'krajee-fa',       
        defaultCaption: '{rating} hearts',
        starCaptions: function (rating) {
            return rating == 1 ? 'One heart' : rating + ' hearts';
        },
        filledStar: '<i class="fa fa-heart"></i>',
        emptyStar: '<i class="fa fa-heart-o"></i>'
    });
});



const shape = new mojs.Shape({
  scale: { 1 : 0 },
  duration: 2000,
  onComplete () {
    console.log( 'completed' );
  }
}).then({
  scale: 1
}).play();
</script>