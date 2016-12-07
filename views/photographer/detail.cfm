<link rel="stylesheet" type="text/css" href="/assets/css/freelancer-detail.css">
<style type="text/css">
	body {
		background: black;
	}
</style>


	<cfset id = url.id>
		<!--- Freelancer Information --->
		<div id="Frl-info">
			<div class="container">
				<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
					<img src="/assets/image/team02.jpg" class="img-responsive" alt="Cinque Terre">
				</div>
				<div class="col-lg-9 col-md-8 col-sm-6 col-xs-12">
					<cfoutput>
						<h2>#SESSION.detailUserID.lastName# #SESSION.detailUserID.firstName#</h2>
						<p><span class="glyphicon glyphicon-flag"></span> Đến từ: #SESSION.detailUserID.location#</p>
						<p><span class="glyphicon glyphicon-phone"></span> #SESSION.detailUserID.phoneNumber#</p>
					</cfoutput>
					<cfif SESSION.isUserLoggedIn EQ false>
						<a href="/index.cfm/user/register"style="button" class="btn btn-danger"><span class="glyphicon glyphicon-camera"></span> ĐĂNG NHẬP ĐỂ ĐẶT LỊCH HẸN</a>
					<cfelse>
						<a href="#Frl-order"style="button" class="btn btn-success"><span class="glyphicon glyphicon-camera"></span> ĐẶT LỊCH HẸN</a>
					</cfif>
					
				</div>
			</div>
		</div>

		<!--- Freelancer's skill --->
		<div id="Frl-skill">	
			<div class="container">
				<div class="col-lg-6">
					<cfoutput>
						<h3>Kỹ năng</h3>
						<h5>Chụp</h5>
						<div class="progress "><div id="photo-skill" style="width:#SESSION.detailUserID.photoSkill#%">#SESSION.detailUserID.photoSkill#%</div></div>
						<h5>Quay</h5>
						<div class="progress"><div id="film-skill" style="width:#SESSION.detailUserID.videoSkill#%">#SESSION.detailUserID.videoSkill#%</div></div>
						<h5>Photoshop</h5>
						<div class="progress"><div id="pts-skill" style="width:#SESSION.detailUserID.psdSkill#%">#SESSION.detailUserID.psdSkill#%</div></div>
						<h5>Video</h5>
						<div class="progress"><div id="video-skill" style="width:#SESSION.detailUserID.filmSkill#%">#SESSION.detailUserID.filmSkill#%</div></div>
					</cfoutput>
				</div> <!--- End Skill --->
				<div class="col-lg-6">
					<h3>Thông tin khác</h3>
					<ul class="nav nav-tabs nav-justified">
					  <li class="active"><a data-toggle="tab" href="#home">Giới thiệu</a></li>
					  <li><a data-toggle="tab" href="#menu1">Mạng xã hội</a></li>
					  <li><a data-toggle="tab" href="#menu2">Sự kiện quan trọng</a></li>
					</ul>
					<div class="tab-content">
					  <div id="home" class="tab-pane fade in active">
					    <p>I'm student</p>
							<p>Aenean lacinia bibendum nulla sed consectetur. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vestibulum id ligula porta felis euismod semper. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p><br>
							<p>Donec sed odio dui. Donec sed odio dui. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Maecenas faucibus mollis interdum.</p>
					  </div>
					  <div id="menu1" class="tab-pane fade">
					    <h3>Menu 1</h3>
					    <p>Some content in menu 1.</p>
					  </div>
					  <div id="menu2" class="tab-pane fade">
					    <h3>Menu 2</h3>
					    <p>Some content in menu 2.</p>
					  </div>
					</div>
				</div> <!--- End Other Info --->
			</div>
		</div>



		<!--- Freelancer Filters Image --->
		<!--- Freelancer filter --->
		<div id="Frl-filter">
		  <ul class="isotope-filter list-inline">
		  	<li><a class="active" data-filter="">Tất cả</a></li>
		  	<li><a data-filter=".650">650x650</a></li>
		  	<li><a data-filter=".450">450x400</a></li>
		  	<li><a data-filter=".350">350x350</a></li>
		  	<li><a data-filter=".150">650x150</a></li>
		  </ul>
			<div class="row">
				<div class="grid">
				  <div class="img-grid 650 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/650x650">
				  </div>
				  <div class="img-grid 350 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/350x350">
				  </div>
				  <div class="img-grid 650 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/650x650">
				  </div>
				  <div class="img-grid 650 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/650x650">
				  </div>
				  <div class="img-grid 450 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/450x400">
				  </div>
				  <div class="img-grid 350 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/350x350">
				  </div>
				  <div class="img-grid 650 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/650x650">
				  </div>
				  <div class="img-grid 350 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/350x350">
				  </div>
				  <div class="img-grid 650 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/650x650">
				  </div>
				  <div class="img-grid 350 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/350x350">
				  </div>
				  <div class="img-grid 450 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/450x400">
				  </div>
				  <div class="img-grid 650 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/650x650">
				  </div>
				  <div class="img-grid 350 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/350x350">
				  </div>
				  <div class="img-grid 650 150 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/650x150">
				  </div>
				  <div class="img-grid 650 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/650x650">
				  </div>
				  <div class="img-grid 450 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/450x400">
				  </div>
				  <div class="img-grid 650 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/650x650">
				  </div>
				  <div class="img-grid 650 150 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/650x150">
				  </div>
				  <div class="img-grid 450 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/450x400">
				  </div>
				  <div class="img-grid 650 150 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/650x150">
				  </div>
				  <div class="img-grid 650 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/650x650">
				  </div>
				  <div class="img-grid 450 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/450x400">
				  </div>
				  <div class="img-grid 650 150 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/650x150">
				  </div>
				  <div class="img-grid 650 col-lg-3">
				  	<img class="img-responsive" src="http://placehold.it/650x650">
				  </div>
				</div>
			</div>
		</div>


		<!--- Freelancer Order Show --->
		<cfoutput>
			<cfif #SESSION.isUserLoggedIn# eq true>
				<div id="Frl-order">
					<div class="form">
				    <div id="order-show">   
				      <h1>Đặt lịch hẹn</h1>
				      <form method="post">
					      <div class="top-row">
					        <div class="field-wrap">
					          <label>
					            Họ tên<span class="req">*</span>
					          </label>
					          <input name="nameBook" type="text" required autocomplete="off" />
					        </div>
					        <div class="field-wrap">
					          <label>
					            Số điện thoại<span class="req">*</span>
					          </label>
					          <input name="phoneBook" type="text"required autocomplete="off"/>
					        </div>
					      </div>
								<!--- Chọn sẵn thể loại ban đầu cho người dùng --->
				        <select class="field-wrap" name="kindBook">
								  <option value="volvo">Bạn muốn chụp thể loại nào?</option>
								  <cfloop query="#SESSION.kind#">
										<option value="#SESSION.kind.name#">#SESSION.kind.name#</option>
									</cfloop>
								</select>
					        <!--- <input type="email"required autocomplete="off"/> --->
				
					      <div class="field-wrap" >
					        <label>
					          Bạn muốn chụp ở đâu?<span class="req">*</span>
					        </label>
					        <input name="locationBook" type="text"required autocomplete="off"/>
					      </div>
						    <div class="form-group">
						      <div class="input-group date form_datetime" data-date="" data-date-format="dd MM yyyy - hh:ii" data-link-field="dtp_input1">
						        <input class="form-control" size="16" type="text" value="" readonly>
										<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
						      </div>
									<input type="hidden" id="dtp_input1" value="" name="dateBook"/><br/>
						    </div>
					      <input class="btn btn-block btn-success" type="submit" name="btnSubmit" value="Đặt lịch hẹn"/>
				      </form><!-- /form -->
				    </div>
					</div> 
				</div>
			</cfif>
		</cfoutput>
         