<?php
Route::get('login',['as'=>'adminlogin','uses'=>'SessionsController@create']);
Route::post('login',['uses'=>'SessionsController@store']);


Route::get('/', 'DashboardController@index');
Route::get('users/search','UsersController@search');
Route::resource('users', 'UsersController');

Route::get('login','SessionsController@create');
Route::post('login','SessionsController@store');
Route::get('logout','SessionsController@destroy');