<?php
    Route::get('/', 'SessionsController@index');
    Route::post('login', 'SessionsController@store');
    Route::get('logout', 'SessionsController@destroy');
    Route::post('/forgotPassword', 'UsersController@postForgotPassword');
    Route::get('/resetPassword', 'UsersController@getResetPassword');
    Route::post('/resetPassword', 'UsersController@postResetPassword');
    Route::get('/activate', 'UsersController@getActivate');
    
    
    Route::get("users/search",'UsersController@search');
    Route::resource('users', 'UsersController');
    Route::get("users/{users}/undestroy",'UsersController@undestroy');
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