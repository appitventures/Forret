<?php

Route::get('/','Controllers\Frontend\DashboardController@index');
Route::get('/login','Controllers\Frontend\SessionsController@create');
Route::post('/login','Controllers\Frontend\SessionsController@store');
Route::get('/profile','Controllers\Frontend\UsersController@index');