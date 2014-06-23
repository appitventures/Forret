<!-- jQuery 2.0.2 -->
{{ HTML::script('http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js') }}
<!-- jQuery UI 1.10.3 -->
{{ HTML::script('/assets/adminlte/js/jquery-ui-1.10.3.min.js') }}
<!-- Bootstrap -->
{{ HTML::script('/assets/adminlte/js/bootstrap.min.js') }}
<!-- Morris.js charts -->
{{ HTML::script('//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js') }}
{{ HTML::script('/assets/adminlte/js/plugins/morris/morris.min.js') }}
<!-- Sparkline -->
{{ HTML::script('/assets/adminlte/js/plugins/sparkline/jquery.sparkline.min.js') }}
<!-- jvectormap -->
{{ HTML::script('/assets/adminlte/js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js') }}
{{ HTML::script('/assets/adminlte/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js') }}
<!-- fullCalendar -->
{{ HTML::script('/assets/adminlte/js/plugins/fullcalendar/fullcalendar.min.js') }}
<!-- jQuery Knob Chart -->
{{ HTML::script('/assets/adminlte/js/plugins/jqueryKnob/jquery.knob.js') }}
<!-- daterangepicker -->
{{ HTML::script('/assets/adminlte/js/plugins/daterangepicker/daterangepicker.js') }}
<!-- Bootstrap WYSIHTML5 -->
{{ HTML::script('/assets/adminlte/js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js') }}
<!-- iCheck -->
{{ HTML::script('/assets/adminlte/js/plugins/iCheck/icheck.min.js') }}

<!-- AdminLTE App -->
{{ HTML::script('/assets/adminlte/js/AdminLTE/app.js') }}

<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
{{ HTML::script('/assets/adminlte/js/AdminLTE/dashboard.js') }}

<!-- AdminLTE for demo purposes -->
{{ HTML::script('/assets/adminlte/js/AdminLTE/demo.js') }}
@yield('pageplugins')
@yield('pagescripts')