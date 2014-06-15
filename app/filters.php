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

use Symfony\Component\HttpKernel\Exception\UnauthorizedHttpException;

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
Route::filter('auth', function(){

    if (!Sentry::check()) return Redirect::route('login');
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
	// var_dump($_SESSION);
 //            var_dump($_POST);
 //            die();

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