<?php
Route::post('queue/post', function () {return Queue::marshal();});

Route::api(['version'=>'v1','prefix'=>'api'],function() {
    Route::get('/', 'Controllers\Api\SessionsController@index');
    Route::post('login', 'Controllers\Api\SessionsController@store');
    Route::get('logout', 'Controllers\Api\SessionsController@destroy');
    Route::post('/forgotPassword', 'Controllers\Api\UsersController@postForgotPassword');
    Route::get('/resetPassword', 'Controllers\Api\UsersController@getResetPassword');
    Route::post('/resetPassword', 'Controllers\Api\UsersController@postResetPassword');
    Route::get('/activate', 'Controllers\Api\UsersController@getActivate');
    include('routes/Api/routes.php');
});
Route::group(['prefix' => 'admin'], function () {
    Route::get('login',['as'=>'adminlogin','uses'=>'Controllers\Admin\SessionsController@create']);
    Route::post('login',['uses'=>'Controllers\Admin\SessionsController@store']);
    include('routes/Admin/routes.php');
});
Route::group(['namespace'=>'Controllers\Frontend'],function(){
    Route::get('testnew',function(){
        return 'new route';
    });
    include('routes/Frontend/routes.php');
});