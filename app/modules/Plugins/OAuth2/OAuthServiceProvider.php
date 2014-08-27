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

        $this->app['view']->addNamespace('OAuth2', __DIR__ .'/Views/');

        require 'filters.php';
        require 'routes.php';
        require 'composers.php';
    }
}
