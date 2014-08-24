<?php

Route::group(['prefix' => 'admin', 'namespace' => 'Admin\Controllers'], function ()
{
    // before
    //  admin - sentry check and check if user is in Admins group
    //  api - set the API user for internal requests to the current user
    Route::group(['before' => 'admin|api'], function ()
    {
        Route::get('/', 'DashboardController@index');
        Route::get('users/search', 'UsersController@search');
        Route::resource('users', 'UsersController');

        Route::group(['prefix' => 'oauth'], function ()
        {
            Route::get('clients', function ()
            {
                return Api::get('oauth/clients');
            });
        });
    });


    Route::get('login', [
        'as' => 'adminlogin',
        'uses' => 'SessionsController@create'
    ]);
    Route::post('login', 'SessionsController@store');

    Route::get('logout', 'SessionsController@destroy');

});
