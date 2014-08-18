<?php
Route::group(['namespace'=>'Frontend\Controllers'],function(){
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

    Route::post('oauth/access_token', function () {
        return AuthorizationServer::performAccessTokenFlow();
    });

    Route::get('/oauth/authorize', array('before' => 'check-authorization-params|auth', ['as' => 'oauth.create', 'uses' => 'SessionsController@getAuthToken']));


    Route::resource('users','UsersController',['only'=>['show']]);
});