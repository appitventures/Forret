<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Dingo\Api\Auth\Provider\OAuth2;
class OAuthServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        app('Dingo\Api\Auth\Auth')->extend('oauth', function ($app) {
        $provider = new OAuth2($app['oauth2-server.authorizer']->getChecker());
        
         $provider->setUserResolver(function ($id) {
        // Logic to return a user by their ID.
    });

        
        $provider->setClientResolver(function ($id) {
                // Logic to return a client by their ID.
        });
        return $provider;
        });
        
       
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}




