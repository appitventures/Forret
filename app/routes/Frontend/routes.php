<?php

 Route::get('/',function(){
     return Redirect::away('https://github.com/appitventures/Forret');
 });
Route::get('homepage',['uses'=>'DashboardController@index']);
