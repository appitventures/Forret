<?php
Route::group(['namespace'=>'Controllers\Frontend'],function(){
    Route::post('queue/post', function () {return Queue::marshal();});
    Route::get('/',['as'=>'home','uses'=>'DashboardController@index']);

    Route::get('login',['as'=>'login.create','uses'=>'SessionsController@create']);
    Route::post('login',['as'=>'login.store','uses'=>'SessionsController@store']);
    Route::get('register',['as'=>'register.create','uses'=>'UsersController@create']);
    Route::post('register',['as'=>'register.store','uses'=>'UsersController@store']);
    Route::get('logout',['as'=>'logout','uses'=>function(){
        \Sentry::logout();
        return Redirect::route('home')->with('message','Successfully Logged Out!');
    }]);

    Route::resource('users','UsersController',['only'=>['show']]);
});