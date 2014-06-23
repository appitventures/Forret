<!DOCTYPE html>
<html class="bg-black">
<head>
    <meta charset="UTF-8">
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- bootstrap 3.0.2 -->
    {{ HTML::style('/assets/adminlte/css/bootstrap.min.css') }}
    <!-- font Awesome -->
    {{ HTML::style('/assets/adminlte/css/font-awesome.min.css') }}
    <!-- Theme style -->
    {{ HTML::style('/assets/adminlte/css/AdminLTE.css') }}
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    {{ HTML::script('https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js') }}
    {{ HTML::script('https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js') }}
    <![endif]-->
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
</head>

<body class="bg-black">

    <div class="form-box" id="login-box">
        @if(Session::has('flash_message'))
        <div class="alert alert-success" style="display: block;">
            <button class="close" data-close="alert"></button>
            <span>{{Session::get('flash_message')}}</span>
        </div>
        @endif
        @if(Session::has('errors'))
        <div class="alert alert-danger" style="display: block;">
            <button class="close" data-close="alert"></button>
            <span>
                @foreach($errors->all() as $message)
                    {{$message}}
                @endforeach
            </span>
        </div>
        @endif
        @yield('form')

        <div class="margin text-center">
            <span>Sign in using social networks</span>
            <br/>
            <button class="btn bg-light-blue btn-circle"><i class="fa fa-facebook"></i></button>
            <button class="btn bg-aqua btn-circle"><i class="fa fa-twitter"></i></button>
            <button class="btn bg-red btn-circle"><i class="fa fa-google-plus"></i></button>

        </div>
    </div>


<!-- jQuery 2.0.2 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="assets/adminlte/js/bootstrap.min.js" type="text/javascript"></script>

</body>
</html>