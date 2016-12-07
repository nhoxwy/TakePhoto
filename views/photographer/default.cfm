<link rel="stylesheet" type="text/css" href="/assets/css/photographer.css">


<cfoutput>
	<div class="container">
		<div id="photographer-menu">
			<div class="row">
				<form method="post">
					<div class="col-md-3 col-md-offset-1 col-xs-5">
						<select class="form-control" id="kind" name="kind">
							<option value="" selected>Thể loại</option>
							<cfloop query="#SESSION.kind#">
								<option value="#SESSION.kind.name#">#SESSION.kind.name#</option>
							</cfloop>
	        	</select>
					</div>
					<!--- <div class="col-md-3 col-xs-7">
						<select class="form-control" id="style" name="style">
							<option value="" selected>Phong cách</option>
	            <option value="">Tất cả</option>
	        	</select>
					</div> --->
					<div class="col-md-3 col-xs-7">
						<select class="form-control" id="place" name="location">
							<option value="" selected>Địa điểm</option>
					    <cfloop query= "#SESSION.location#">
					    	<option value="#SESSION.location.name#">#SESSION.location.name#</option>
					    </cfloop>
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
				<!--- <cfdump var = #SESSION.Filter#> --->
				<cfloop query= "#SESSION.Filter#">
					<ul>
						<li class="col-md-3">
							<a href="/index.cfm/photographer/detail?id=#SESSION.Filter.userID#">
								<img src="/assets/image/team01.jpg" class="img-responsive img-circle">
								<h4>#SESSION.Filter.lastName# #SESSION.Filter.firstName#</h4>
								<p class="fa fa-map-marker text-left"> #SESSION.Filter.location#</p>
								&nbsp;&nbsp;
								<br>
								<span class="fa fa-heart text-right"> #SESSION.Filter.voteHeart#</span>&nbsp;&nbsp;&nbsp;<span class="fa fa-pencil-square-o"> #SESSION.Filter.comment# đánh giá</span>
								<hr>
								<button id="book-btn" class="btn btn-success" type="button">Hãy hẹn tôi</button>
							</a>
						</li>
					</ul>
				</cfloop>
			</div>
		</div> <!--- End list-photographer --->
	</div>
</cfoutput>





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