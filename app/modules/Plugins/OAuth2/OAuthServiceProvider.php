<?php namespace Plugins\OAuth2;

use Illuminate\Support\ServiceProvider;

class OAuthServiceProvider extends ServiceProvider
{

    /**
     * Register in IoC container
     */
    public function register()
    {
        $this->app->bind('OAuth', 'Plugins\OAuth2\OAuth');
    }

}