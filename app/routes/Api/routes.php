<?php

Route::resource('users', 'Controllers\Api\UsersController');
Route::resource('sessions','Controllers\Api\SessionsController');
Route::get('/logout',function(){
    Sentry::logout();
});



Route::group(['prefix' => 'auth'], function(){
    Route::get('signin', ['as' => 'signin', 'uses' => 'Controllers\Api\AuthController@getSignin']);
    Route::post('signin', 'Controllers\Api\AuthController@postSignin');
    Route::get('activate/{activationCode}', ['as' => 'activate', 'uses' => 'Controllers\Api\AuthController@getActivate']);
    Route::get('forgot-password', ['as' => 'forgot-password', 'uses' => 'Controllers\Api\AuthController@getForgotPassword']);
    Route::post('forgot-password', 'Controllers\Api\AuthController@postForgotPassword');
    Route::get('forgot-password/{passwordResetCode}', ['as' => 'forgot-password-confirm', 'uses' => 'Controllers\Api\AuthController@getForgotPasswordConfirm']);
    Route::post('forgot-password/{passwordResetCode}', 'Controllers\Api\AuthController@postForgotPasswordConfirm');
    Route::get('logout', ['as' => 'logout', 'uses' => 'Controllers\Api\AuthController@getLogout']);
});