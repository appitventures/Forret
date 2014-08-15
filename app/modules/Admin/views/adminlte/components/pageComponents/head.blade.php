<meta charset="utf-8"/>
<title>
    <?php
    if(isset($title)){
        echo $title;
    }
    else{
        echo "No title set";
    }
    ?>
</title>
{{ HTML::style('/assets/adminlte/css/bootstrap.min.css') }}
<!-- font Awesome -->
{{ HTML::style('/assets/adminlte/css/font-awesome.min.css') }}
<!-- Ionicons -->
{{ HTML::style('/assets/adminlte/css/ionicons.min.css') }}
<!-- Morris chart -->
{{ HTML::style('/assets/adminlte/css/morris/morris.css') }}
<!-- jvectormap -->
{{ HTML::style('/assets/adminlte/css/jvectormap/jquery-jvectormap-1.2.2.cs') }}
<!-- fullCalendar -->
{{ HTML::style('/assets/adminlte/css/fullcalendar/fullcalendar.css') }}
<!-- Daterange picker -->
{{ HTML::style('/assets/adminlte/css/daterangepicker/daterangepicker-bs3.css') }}
<!-- bootstrap wysihtml5 - text editor -->
{{ HTML::style('/assets/adminlte/css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css') }}
<!-- Theme style -->
{{ HTML::style('/assets/adminlte/css/AdminLTE.css') }}

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
{{ HTML::script('https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js') }}
{{ HTML::script('https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js') }}
<![endif]-->
<link rel="shortcut icon" href="favicon.ico"/>