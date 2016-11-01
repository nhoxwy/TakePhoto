<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Take Photo</title>

    <!-- Bootstrap -->
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet">

    <!--Style-->
    <link rel="stylesheet" href="/assets/css/style.css">
    <link rel="stylesheet" href="/assets/css/font-awesome.min.css">
    
    <!--- font --->
<!--     <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Andika&subset=latin,vietnamese' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:300,400' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Bitter:400' rel='stylesheet' type='text/css'> -->
    <link href="https://fonts.googleapis.com/css?family=Arimo:400" rel="stylesheet">
    
    <!--- animate --->
    <link rel="stylesheet" href="/assets/css/animate.css">

    <!--- owl carousel --->
    <link rel="stylesheet" href="/assets/css/owl.carousel.css">
    <link rel="stylesheet" href="/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/assets/css/owl.theme.default.min.css">

    <!--- fotorama --->
    <link  href="/assets/css/fotorama.css" rel="stylesheet">

    <!--- DateTimePicker --->
    <link href="/assets/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

    <!--- Favicon --->
    <link rel="shortcut icon" href="/assets/ico/favicon.png">

    <!--- mojs --->
    <link rel="stylesheet" type="text/css" href="/assets/js/mo.min.js">
    <link rel="stylesheet" type="text/css" href="/assets/js/mojs-player.min.js">

    <!--- Slide team's member --->
    <link rel="stylesheet" href="/assets/css/custom-slide-team.css">
    <link rel="stylesheet" href="/assets/css/style-slide-team.css">
    <link rel="stylesheet" href="/assets/css/demo-slide-team.css">
    <script src="/assets/js/modernizr.custom.79639.js"></script>
    <noscript>
      <link rel="stylesheet" href="/assets/css/styleNoJS.css">
    </noscript>
  </head>


  <body>

    <div id="header">
      <nav class="navbar navbar-trans navbar-fixed-top" role="navigation">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapsible">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a href="/index.cfm" class="navbar-brand text-danger"><b style="color: white">Take</b><b style="color: #e74c3c">Photo</b></a>
          </div>
          <div class="navbar-collapse collapse" id="navbar-collapsible">
            <ul class="nav navbar-nav navbar-left" id="main-navbar">
              <li><a href="#section2">Giúp bạn</a></li>
              <li><a href="#section3">Bạn muốn</a></li>
              <li><a href="#section6">Bạn nói</a></li>
              <li><a href="#section4">Thành viên</a></li>
              <li><a href="#section5">Liên hệ</a></li>
            </ul>
            <cfoutput>
              <ul class="nav navbar-nav navbar-left" id="category-navbar">
                <li><a href="#buildURL('photographer')#">Photographer</a></li>
                <li><a href="#buildURL('model')#">Người mẫu</a></li>
                <li><a href="#buildURL('work')#">Công việc</a></li>
                <li><a href="#buildURL('product')#">Tác phẩm</a></li>
              </ul>
              <ul class="nav navbar-nav navbar-right">
                <li>
                  <cfif SESSION.is_logged_in EQ false>
                    <a href="/index.cfm/user/login"><i class="fa fa-heart-o fa-lg"></i></a>
                  <cfelse>
                    <p class="inline">#SESSION.firstname#</p>
                    <button type="button" class="btn navbar-btn dropdown-toggle inline" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-heart"></span>         </button>
                    <ul id="hello-drd" class="dropdown-menu">
                      <li><a href="/index.cfm/user/edit-freelancer" data-type="profile">Thông tin</a></li>
                      <!-- <li role="separator" class="divider"></li> -->
                      <li><a href="/index.cfm/user/edit-customer" data-type="login">Đổi mật khẩu</a></li>
                      <!-- <li role="separator" class="divider"></li> -->
                      <li><a href="index.cfm?action=user.exit" data-type="share">Thoát</a></li>
                    </ul>
                  </cfif>
                </li>
              </ul>
            </cfoutput>   
          </div>
        </div>
      </nav>
    </div>
      
    <cfoutput>#body#</cfoutput>

    <footer id="footer">
      <div class="container">
        <div class="row text-center">
          <a href=""></a>
          <!--- <i class="fa fa-camera fa-2x" style="color: white;"></i>
          <h3>TAKEPHOTO</h3> --->
          <img src="/assets/ico/logo_main.png" style="width: 126px; height:72px;">
          <p>© 2016 TakePhoto Team. All rights reserved.</p>
        </div>
        <!--/row-->
      </div>
    </footer>

    <div class="scroll-up">
      <a href="#"><i class="fa fa-angle-up"></i></a>
    </div>

    <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h2 class="text-center"><img src="//placehold.it/110" class="img-circle"><br>Đăng Ký</h2>
          </div>
          <div class="modal-body row">
              <h6 class="text-center">Chào mừng Bạn đến với TakePhoto!</h6>
            <form class="col-md-10 col-md-offset-1 col-xs-12 col-xs-offset-0">
              <div class="form-group">
                <input type="text" class="form-control input-lg" placeholder="Email">
              </div>
              <div class="form-group">
                <input type="password" class="form-control input-lg" placeholder="Password">
              </div>
              <div class="form-group">
                <button class="btn btn-danger btn-lg btn-block">Sign In</button>
                <span class="pull-right"><a href="#">Register</a></span><span><a href="#">Need help?</a></span>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <h6 class="text-center"><a href="">Privacy is important to us. Click here to read why.</a></h6>
          </div>
        </div>
      </div>
    </div>

    <script src="/assets/js/jquery-1.9.1.min.js"></script>
    <script src="/assets/js/jquery.min.js"></script>
    <script src="/assets/js/bootstrap.min.js"></script>
    <script src="/assets/js/custom.js"></script>
    <script src="/assets/js/isotope.pkgd.min.js"></script>
    <script src="/assets/js/moment-with-locales.min.js"></script>
    <script src="/assets/js/bootstrap-datetimepicker.js"></script>
    <script src="/assets/js/jquery.ba-cond.min.js"></script>
    <script src="/assets/js/jquery.slitslider.js"></script>
    <script src="/assets/js/wow.min.js"></script>
    <script>
      new WOW().init();
    </script>

    <!--- DateTimePicker --->
    <script type="text/javascript">
      $('.form_datetime').datetimepicker({
        weekStart: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
      });
    </script>

    <!--- Slide Team --->
    <script type="text/javascript"> 
      $(function() {
      
        var Page = (function() {

          var $navArrows = $( '#nav-arrows' ),
            $nav = $( '#nav-dots > span' ),
            slitslider = $( '#slider' ).slitslider( {
              onBeforeChange : function( slide, pos ) {

                $nav.removeClass( 'nav-dot-current' );
                $nav.eq( pos ).addClass( 'nav-dot-current' );

              }
            } ),

            init = function() {

              initEvents();
              
            },
            initEvents = function() {

              // add navigation events
              $navArrows.children( ':last' ).on( 'click', function() {

                slitslider.next();
                return false;

              } );

              $navArrows.children( ':first' ).on( 'click', function() {
                
                slitslider.previous();
                return false;

              } );

              $nav.each( function( i ) {
              
                $( this ).on( 'click', function( event ) {
                  
                  var $dot = $( this );
                  
                  if( !slitslider.isActive() ) {

                    $nav.removeClass( 'nav-dot-current' );
                    $dot.addClass( 'nav-dot-current' );
                  
                  }
                  
                  slitslider.jump( i + 1 );
                  return false;
                
                } );
                
              } );

            };

            return { init : init };

        })();

        Page.init();

        /**
         * Notes: 
         * 
         * example how to add items:
         */

        /*
        
        var $items  = $('<div class="sl-slide sl-slide-color-2" data-orientation="horizontal" data-slice1-rotation="-5" data-slice2-rotation="10" data-slice1-scale="2" data-slice2-scale="1"><div class="sl-slide-inner bg-1"><div class="sl-deco" data-icon="t"></div><h2>some text</h2><blockquote><p>bla bla</p><cite>Margi Clarke</cite></blockquote></div></div>');
        
        // call the plugin's add method
        ss.add($items);

        */
      
      });
    </script>


  </body>
</html>