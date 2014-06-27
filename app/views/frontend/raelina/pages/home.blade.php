<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>{{$title or 'No Title Set'}}</title>


    <!-- Bootstrap Core CSS -->
    {{HTML::style('http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css')}}

    <!-- Fonts -->
    {{HTML::style('http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css')}}
    {{HTML::style('http://fonts.googleapis.com/css?family=Dosis:300,400,700')}}
    {{HTML::style('http://fonts.googleapis.com/css?family=Montserrat:400,700')}}

    <!-- Custom Theme CSS -->
    {{HTML::style('/assets/raelina/css/grayscale.css')}}

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">

<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand" href="#page-top">
                <!--add in the small forret logo here -->  <span class="light">Forret</span>
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
            <ul class="nav navbar-nav">
                <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                <li class="hidden">
                    <a href="#page-top"></a>
                </li>
                <li class="page-scroll">
                    <a href="#about">About</a>
                </li>
                <li class="page-scroll">
                    <a href="#download">Download</a>
                </li>
                <li class="page-scroll">
                    <a href="#contact">Contact</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>

<section class="intro">
    <div class="intro-body">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-4">
                    <h1 class="brand-heading">Build Anything
                </div>
                <div class="col-md-20 col-md-pull-1">
                    <div class="gif-image">
                    </div></h1>
                    <p class="intro-text">
                        A Laravel 4 application to jumpstart your project. <br>Separated into three modules: API, Admin & Frontend</p>
                    <div class="page-scroll">
                        <a href="#about" class="btn btn-circle">
                            <i class="fa fa-angle-double-down animated"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>

<section id="about">
    <div class="container content-section text-left">
        <div class="about">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-2">
                    <h2>About Forret</h2>
                    <div class="highlight">
                                <pre>
                                <code class="html">
                                    <span class="nt"><meta</span>
                                    <span class="na">name=</span>
                                    <span class="s">"viewport"</span>
                                    <span class="na">content=</span>
                                <span class="s">"example code things go here width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
                                </span>
                            <span class="nt">
                        </span>
                                </code>
                </pre>
                    </div>


                    <p>The purpose of this application is to provide a starting point for development. This demo uses <a href="https://github.com/laravel/laravel/tree/develop">Laravel 4</a> at its core and <a href="https://github.com/cartalyst/sentry">Sentry 2</a> for user authentication and roles.</p>
                    <p>The code is seperated into two different "modules", consisting of a User frontend, ad an Admin backend. Both of which make internal API calls. <bR>The API is built on <a href="https://github.com/dingo/api">Dingo/Api.</a> The admin panel has been built with <a href="https://github.com/almasaeed2010/AdminLTE">AdminLTE.</a></p>
                    <p>The HTML and views for <a href="http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?WT.ac=category_item&WT.z_author=keenthemes">Metronic</a> can be provided upon request however the assets will need to be acquired through ThemeForrest.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="download" class="content-section text-center">
    <div class="download-section">
        <div class="container">
            <div class="col-lg-10 col-lg-offset-2">
                <h2>Download Forret</h2>
                <p>You can download Forret or get the source code directly from <a href="https://github.com/appitventures/Forret">GitHub</a> if you prefer.</p>
            </div>
        </div>
    </div>
</section>

<section id="contact" class="container content-section text-left">
    <div id="contact">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-2">
                <h2>Contact Forret</h2>
                <p>This Starter kit is open-sourced software licensed under the <a href="http://opensource.org/licenses/MIT">MIT license</a> and published by <a href="http://www.appitventures.com">AppIt Ventures</a></p>
                <ul class="list-inline banner-social-buttons">
                    <li><a href="https://twitter.com/AppIt_Ventures" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
                    </li>
                    <li><a href="https://github.com/appitventures" class="btn btn-default btn-lg"><i class="fa fa-github fa-fw"></i> <span class="network-name">Github</span></a>
                    </li>
                    <li><a href="https://plus.google.com/114189393803492144875/posts" class="btn btn-default btn-lg"><i class="fa fa-google-plus fa-fw"></i> <span class="network-name">Google+</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>


<!-- Core JavaScript Files -->
{{HTML::script('https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js')}}
{{HTML::script('http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js')}}
{{HTML::script('http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js')}}

<!-- Custom Theme JavaScript -->
{{HTML::script('/assets/raelina/js/grayscale.js')}}

</body>

</html>
