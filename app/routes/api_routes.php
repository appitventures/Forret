<?php
Route::get('/', 'Controllers\Api\SessionsController@index');
Route::post('login', 'Controllers\Api\SessionsController@store');
Route::get('logout', 'Controllers\Api\SessionsController@destroy');
Route::post('/forgotPassword', 'Controllers\Api\UsersController@postForgotPassword');
Route::get('/resetPassword', 'Controllers\Api\UsersController@getResetPassword');
Route::post('/resetPassword', 'Controllers\Api\UsersController@postResetPassword');
Route::get('/activate', 'Controllers\Api\UsersController@getActivate');


Route::get("users/search",'Controllers\Api\UsersController@search');
Route::resource('users', 'Controllers\Api\UsersController');
Route::get("users/{users}/undestroy",'Controllers\Api\UsersController@undestroy');
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