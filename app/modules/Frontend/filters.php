<?php

/*
|--------------------------------------------------------------------------
| Application & Route Filters
|--------------------------------------------------------------------------
|
| Below you will find the "before" and "after" events for the application
| which may be used to do any work before or after a request into your
| application. Here you may also register your custom route filters.
|
*/

App::before(function($request)
{
    //
});


App::after(function($request, $response)
{
    //
});

/*
|--------------------------------------------------------------------------
| Authentication Filters
|--------------------------------------------------------------------------
|
| The following filters are used to verify that the user of the current
| session is logged into this application. The "basic" filter easily
| integrates HTTP Basic authentication for quick, simple checking.
|
*/
Route::filter('auth', function ()
{
    if (!Sentry::check())
        return Redirect::route('login.create');
});

Route::filter('inGroup', function($route, $request, $value){
    if($value == 'Admins'){
        $email = 'admin@starter.com';
    }
    if($value == 'Users'){
        $email = 'user@starter.com';

    }
    $credentials = array(
        'email' => $email,
        'password' => 'password'
    );
    Sentry::authenticate($credentials);
});

Route::filter('frontend.action',function($route,$request){
    $userId = (Sentry::check()) ? Sentry::getUser()->getId() : null;
    $action = 'API query';
    $messages = (Session::get('messages')) ? Session::get('messages') : NULL;
    $description = (Session::get('description')) ? Session::get('description') : NULL;
    $payload = (Session::get('payload')) ? Session::get('payload') : NULL;
    Queue::push('\Appit\Repositories\ActionRepository@frontendQuery',array('action'=>$action,'uri'=>Request::path(),'method'=>Request::method(),'description'=>$description,'messages'=>$messages,'payload'=>$payload,'user_id'=>$userId,'session'=>Session::GetId()));
});


/*
|--------------------------------------------------------------------------
| Guest Filter
|--------------------------------------------------------------------------
|
| The "guest" filter is the counterpart of the authentication filters as
| it simply checks that the current user is not logged in. A redirect
| response will be issued if they are, which you may freely change.
|
*/

Route::filter('guest', function()
{
    if (Auth::check()) return Redirect::to('/');
});

/*
|--------------------------------------------------------------------------
| CSRF Protection Filter
|--------------------------------------------------------------------------
|
| The CSRF filter is responsible for protecting your application against
| cross-site request forgery attacks. If this special token in a user
| session does not match the one given in this request, we'll bail.
|
*/

Route::filter('csrf', function()
{

    // TODO: Rewrite this tree of conditionals
    if (Session::token() !== Input::get('_token') || Session::token()===null || Input::get('_token')===null)
    {
        // Session token and form tokens do not match or one is empty
        if(App::environment() === 'testing')
        {
            // We only want to allow CSRF override if we're running tests
            if(Input::get('IgnoreCSRFTokenError')===true)
            {
                // Allow CSRF override in testing environment
                return;
            } else {
                // Handle CSRF normally
                throw new Illuminate\Session\TokenMismatchException;
            }
        } else {
            // @codeCoverageIgnoreStart

            // Handle CSRF normally
            throw new Illuminate\Session\TokenMismatchException;

            // @codeCoverageIgnoreEnd
        }
    }
});