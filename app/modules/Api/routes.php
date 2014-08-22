<?php

Route::api(['version'=>'v1','prefix'=>'api','namespace'=>'Api\Controllers'],function() {

// OAuth2 Server

    Route::get('oauth/authorize', [
        'before' => 'check-authorization-params|auth',
        function () {
            $params = Session::get('authorize-params');
            $params['user_id'] = Auth::user()->id;
            return View::make('authorization-form', ['params' => $params]);
    }]);

    Route::post('oauth/authorize', array('before' => 'check-authorization-params|auth|csrf', function()
    {
        // get the data from the check-authorization-params filter
        $params = Session::get('authorize-params');

        // get the user id
        $params['user_id'] = Auth::user()->id;

        // check if the user approved or denied the authorization request
        if (Input::get('approve') !== null) {

            $code = AuthorizationServer::newAuthorizeRequest('user', $params['user_id'], $params);

            Session::forget('authorize-params');

            return Redirect::to(AuthorizationServer::makeRedirectWithCode($code, $params));
        }

        if (Input::get('deny') !== null) {

            Session::forget('authorize-params');

            return Redirect::to(AuthorizationServer::makeRedirectWithError($params));
        }
    }));

    Route::post('oauth/access_token', function()
    {
        return AuthorizationServer::performAccessTokenFlow();
    });

    Route::get('tester', function ()
    {
        return API::user();
    });

    Route::get('/', 'SessionsController@index');    // api.auth
    Route::post('login', 'SessionsController@store');
    Route::get('logout', 'SessionsController@destroy');
    Route::post('/forgotPassword', 'UsersController@postForgotPassword');
    Route::get('/resetPassword', 'UsersController@getResetPassword');
    Route::post('/resetPassword', 'UsersController@postResetPassword');
    Route::get('/activate', 'UsersController@getActivate');


    Route::get("users/search",'UsersController@search');
    Route::get("users/{users}/undestroy",'UsersController@undestroy');
    Route::resource('users', 'UsersController');

    Route::resource('sessions','SessionsController');

    Route::get('/logout',function(){
        Sentry::logout();
    });



    Route::group(['prefix' => 'auth'], function(){
        Route::get('signin', ['as' => 'signin', 'uses' => 'AuthController@getSignin']);
        Route::post('signin', 'AuthController@store');
        Route::get('activate/{activationCode}', ['as' => 'activate', 'uses' => 'AuthController@getActivate']);
        Route::get('forgot-password', ['as' => 'forgot-password', 'uses' => 'AuthController@getForgotPassword']);
        Route::post('forgot-password', 'AuthController@postForgotPassword');
        Route::get('forgot-password/{passwordResetCode}', ['as' => 'forgot-password-confirm', 'uses' => 'AuthController@getForgotPasswordConfirm']);
        Route::post('forgot-password/{passwordResetCode}', 'AuthController@postForgotPasswordConfirm');
        Route::get('logout', ['as' => 'logout', 'uses' => 'AuthController@getLogout']);
    });

});