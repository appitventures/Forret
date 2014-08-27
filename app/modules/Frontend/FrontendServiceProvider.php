<?php namespace Frontend;

use Illuminate\Support\ServiceProvider;

class FrontendServiceProvider extends ServiceProvider
{

    public function register()
    {
        $this->app['view']->addNamespace('Frontend', __DIR__ .'/Views/'. $this->app['config']->get('theme.frontend'));

        include 'filters.php';
        include 'routes.php';
    }
}
