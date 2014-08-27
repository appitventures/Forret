<?php

// admin

Route::group(['prefix' => 'admin', 'namespace' => 'Plugins\OAuth2\Controllers\Admin', 'before' => 'admin|api'], function ()
{
    Route::group(['prefix' => 'oauth'], function ()
    {
        Route::group(['prefix' => 'clients'], function ()
        {
            Route::get('/', 'OAuthClientController@index');
            Route::post('/', 'OAuthClientController@store');
            Route::get('create', 'OAuthClientController@create');
            Route::post('{id}', 'OAuthClientController@update');
            Route::get('{id}/edit', 'OAuthClientController@edit');
            Route::get('{id}/delete', 'OAuthClientController@delete');
        });
    });
});

// api

Route::api(['version' => 'v1', 'prefix' => 'api', 'namespace' => 'Plugins\OAuth2\Controllers\Api', 'protected' => true], function ()
{

    Route::group(['prefix' => 'oauth'], function ()
    {
        /* Get access token for password grant */
        Route::post('token', [
            'uses' => 'OAuthController@access_token',
            'protected' => false
        ]);

        Route::resource('clients', 'OAuthClientController', ['except' => 'edit']);

    });

});
