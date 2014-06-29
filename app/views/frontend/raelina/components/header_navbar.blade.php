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
                @if($auth_navbar == 1)
                    <li>
                        <a href = "/users/{{$user->id}}">My Account</a>
                    </li>
                    <li>
                        <a href = '/logout'>Logout</a>
                    </li>
                @else
                    <li>
                        <a href = '/login'>Login</a>
                    </li>
                    <li>
                        <a href = '/register'>Register</a>
                    </li>
                @endif
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>