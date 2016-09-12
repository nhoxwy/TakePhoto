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
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Andika&subset=latin,vietnamese' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Bitter:400' rel='stylesheet' type='text/css'>

    
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
    <link rel="shortcut icon" href="/assets/image/favicon.png">
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
            <a href="/index.cfm/main" class="navbar-brand text-danger" href="#">TakePhoto</a>
          </div>
          <div class="navbar-collapse collapse" id="navbar-collapsible">
            <ul class="nav navbar-nav navbar-left">
              <li><a href="#section1">Slogan</a></li>
              <li><a href="#section2">Giúp bạn?</a></li>
              <li><a href="#section3">Cho bạn?</a></li>
              <li><a href="#section6">Bạn nói?</a></li>
              <li><a href="#section4">Thành viên</a></li>
              <li><a href="#section5">Góp ý</a></li>
              <li><a href="#section7">Liên hệ</a></li>
              <!--- <li>&nbsp;</li> --->
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li><a href="/index.cfm/user/register"><i class="fa fa-heart-o fa-lg"></i></a></li>
            </ul>
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
          <img src="/assets/image/logo_main.png" style="width: 126px; height:72px;">
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
    <script src="/assets/js/bootstrap.min.js"></script>
    <script src="/assets/js/custom.js"></script>
    <script src="/assets/js/isotope.pkgd.min.js"></script>
    <script src="/assets/js/moment-with-locales.min.js"></script>
    <script src="/assets/js/bootstrap-datetimepicker.js"></script>

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

  </body>
</html>