<?php

Route::get('/',['uses'=>'DashboardController@index']);

Route::get('login',['as'=>'login.create','uses'=>'SessionsController@create']);
Route::post('login',['as'=>'login.store','uses'=>'SessionsController@store']);