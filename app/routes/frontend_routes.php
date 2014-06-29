<?php

Route::get('/',['uses'=>'DashboardController@index']);

Route::get('login',['as'=>'login.create','uses'=>'SessionsController@create']);
Route::post('login',['as'=>'login.store','uses'=>'SessionsController@store']);
Route::get('register',['as'=>'register.create','uses'=>'UsersController@create']);
Route::post('register',['as'=>'register.store','uses'=>'UsersController@store']);

Route::resource('users','UsersController',['only'=>['show']]);