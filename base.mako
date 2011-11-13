<!DOCTYPE html>

<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<meta charset="utf-8" />
	
	<!-- Set the viewport width to device width for mobile -->
	<meta name="viewport" content="width=device-width" />
	
	<title>Phil and Hilary</title>
  
	<!-- Included CSS Files -->
	<link rel="stylesheet" href="stylesheets/foundation.css">
	<link rel="stylesheet" href="stylesheets/app.css">
	<link rel="stylesheet" href="stylesheets/colorbox.css">

	<!--[if lt IE 9]>
		<link rel="stylesheet" href="stylesheets/ie.css">
	<![endif]-->

	
	<!-- IE Fix for HTML5 Tags -->
	<!--[if lt IE 9]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- Included JS Files -->
	<script src="javascripts/foundation.js"></script>
	<script src="javascripts/app.js"></script>
	<script src="javascripts/jquery.colorbox-min.js"></script>
        <script>
	    $(document).ready(function(){
		$(".cbimage").colorbox({rel:'cbimage'});
	    });

	</script>
</head>
<body>

	<!-- container -->
	<div class="container">
        <div class="row">
            <div class="twelve columns">
                <div id="header">
                    <h1>Phil and Hilary</h1>
                    <h4>October 22, 2011</h4>
                </div>
            </div>
        </div> <!-- ROW -->
        <%block name="main">
        </%block>
	</div> <!-- CONTAINER -->
</body>
</html>


