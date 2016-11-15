<link rel="stylesheet" type="text/css" href="/assets/css/photographer.css">

<div class="container">
	<div id="photographer-menu">
		<div class="row">
			<form method="post">
				<div class="col-md-2 col-md-offset-1 col-xs-5">
					<select class="form-control" id="kind" name="kind">
						<option disabled selected>Thể loại</option>
            <option value="1">Tất cả</option>
            <option value="2">Cưới hỏi</option>
            <option value="3">Kỷ yếu</option>
            <option value="4">Macro</option>
            <option value="5">Nghệ thuật</option>
            <option value="6">Ngoại cảnh</option>
            <option value="7">Phong cảnh</option>
            <option value="8">Street Life</option>
            <option value="9">Sự kiện</option>
            <option value="10">Thể thao</option>
            <option value="11">Thời trang</option>
            <option value="12">Gia đình</option>
            <option value="13">Flycam</option>
        	</select>
				</div>
				<div class="col-md-2 col-xs-7">
					<select class="form-control" id="style" name="style">
						<option disabled selected>Phong cách</option>
            <option value="1">Tất cả</option>
            <option value="2">Tự nhiên</option>
            <option value="3">Hàn Quốc</option>
            <option value="4">Đời thường</option>
            <option value="5">Cá tính</option>
            <option value="6">Tự do</option>
            <option value="7">Cổ điển</option>
            <option value="8">Hiện đại</option>
            <option value="9">Phóng sự</option>
            <option value="10">Phơi sáng</option>
            <option value="11">Hồng ngoại</option>
            <option value="12">Chuyển động</option>
            <option value="13">Cốt truyện</option>
        	</select>
				</div>
				<div class="col-md-2 col-xs-5">
						        <div class="input-group date form_datetime" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input1">
				    	<input class="form-control" size="16" type="text" value="Ngày chụp" readonly>
						<span class="input-group-addon">
							<span class="glyphicon glyphicon-th"></span>
						</span>
						      	</div>
					<input type="hidden" id="dtp_input1" value="" /><br/>
				</div>
				<div class="col-md-2 col-xs-7">
					<select class="form-control" id="place" name="location">
						<option disabled selected>Địa điểm</option>
			      <option value="1">TP.Hồ Chí Minh</option>
			      <option value="2">Hà Nội</option>
			      <option value="3">Nha Trang - Khánh Hòa</option>
			      <option value="4">Đà Nẵng</option>
			      <option value="5">Huế</option>
			      <option value="6">Cần Thơ</option>
			      <option value="7">Lạng Sơn</option>
			      <option value="8">Quảng Nam</option>
			      <option value="9">Phú Yên</option>
			      <option value="10">Bình Thuận</option>
			      <option value="11">Ninh Thuận</option>
			      <option value="12">Phú Quốc - Kiên Giang</option>
			      <option value="13">Bến Tre</option>
			      <option value="14">Hà Giang</option>
			      <option value="15">Hải Phòng</option>
			  	</select>
				</div>
				<div class="col-md-2 col-xs-12">
					<input id="review-button" class="btn btn-success" name="btnSubmit" type="submit" value="Tìm kiếm">
				</div>
			</form>
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