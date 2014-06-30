<section id="contact" class="container content-section text-left" style="margin-top:100px;">
    <div class = 'row'>
        <div class = 'col-sm-4'></div>
                <form class="form-signin col-sm-3" role="form" method="post">
                    <div class = 'row'>
                        <h2 class="form-signin-heading">Please sign in</h2>
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
                        <div style="margin:15px;margin-bottom:0px;">
                            <input type="email" name="email" class="form-control" placeholder="Email address" required="" autofocus="">
                        </div>
                        <div style="margin:15px;margin-top:0px;">
                            <input type="password" name = "password" class="form-control" placeholder="Password" required="">
                        </div>
                    </div>
                    <div class = 'row'>
                        <div class = 'col-sm-2'></div>
                        <div class = 'col-sm-8'>
                            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                        </div>
                    </div>
                </form>
            </div>
        <div class = 'col-sm-4'></div>
    </div>
</section>