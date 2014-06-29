<?php
Route::get('login',['as'=>'adminlogin','uses'=>'Controllers\Admin\SessionsController@create']);
Route::post('login',['uses'=>'Controllers\Admin\SessionsController@store']);


Route::get('/', 'Controllers\Admin\DashboardController@index');
Route::get('users/search','Controllers\Admin\UsersController@search');
Route::resource('users', 'Controllers\Admin\UsersController');

Route::get('login','Controllers\Admin\SessionsController@create');
Route::post('login','Controllers\Admin\SessionsController@store');
Route::get('logout','Controllers\Admin\SessionsController@destroy');