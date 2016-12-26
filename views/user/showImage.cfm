<link rel="stylesheet" type="text/css" media="all" href="/assets/css/show-image.css">
<link rel="stylesheet" type="text/css" media="all" href="/assets/css/magnific-popup.css">
<script src="http://code.jquery.com/jquery-1.11.1.js"></script>
<script src="/assets/js/jquery.magnific-popup.js" type="text/javascript"></script>
<style type="text/css">
	body {
		color: black;
	}
</style>

<cfset alid = url.alid>
<cfoutput>
	<div id="show-image">
		<div class="container">
			<h3>
				<img class="img-user" src="https://www.facebook.com/images/profile/timeline/app_icons/photos_24.png"/> #SESSION.detailAlbum.albumName#
			</h3>
			<div class="back_link">
				<a href="/index.cfm/user/info" class="back"><i class="glyphicon glyphicon-arrow-left"></i>Trở về</a>
			</div>
		  <button type="button" class="btn" data-toggle="modal" data-target=".delAlbumModal">Xóa album</button>
		  <div class="modal fade delAlbumModal">
		  	<div class="modal-dialog">
		    	<div class="modal-content">
		      	<div class="modal-header">
		        	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		        	<h4 class="modal-title">Xóa album ảnh</h4>
		      	</div>
		      	<div class="modal-body">
		        	<p>Bạn muốn xóa album ảnh "#SESSION.detailAlbum.albumName#" này?</p>
		      	</div>
		      	<div class="modal-footer">
		        	<form method="post">
		        		<button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
		        		<input type="submit" class="btn btn-danger" name="btnSubmit" value="Xóa album">
		        	</form>
		      	</div>
		    	</div><!-- /.modal-content -->
		  	</div><!-- /.modal-dialog -->
			</div><!-- /.modal -->
			<hr/>
			<div class="col-sm-9">
				<ul id="portfolio" class="clearfix">
				<cfloop query="#SESSION.detailAlbum#">
					<li>
						<cfset destination = "/uploadImage/#SESSION.detailAlbum.userID#/#SESSION.detailAlbum.photoName#.jpg">
						<a href="#destination#">
							<cfimage action="resize" width="236" height="157" source="#destination#" name="resized">
							<cfimage action="writetobrowser" format="jpg" source="#resized#">
						</a>
					</li>
				  </cfloop>
			  </ul>
			</div>
			<div class="col-sm-3">
				<div class="input-group"> 
					<input class="form-control" placeholder="Thêm bình luận" type="text">
					<span class="input-group-addon">
						<a><i class="glyphicon glyphicon-edit"></i></a>  
					</span>
				</div>
				<ul class="comments-list">
					<li class="comment">
						<a class="pull-left">
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
								<a class="pull-left">
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
						<a class="pull-left">
							<img class="avatar" src="http://bootdey.com/img/Content/user_2.jpg" alt="avatar">
						</a>
						<div class="comment-body">
							<div class="comment-heading">
								<h4 class="user">Trân Misu</h4>
								<h5 class="time">Cách đây 1 ngày</h5>
							</div>
							<p>Tuyệt vời.</p>
						</div>
					</li> 
				</ul>
			</div>
		</div>
	</div>

</cfoutput>





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