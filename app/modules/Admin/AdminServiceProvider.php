<?php namespace Admin;

use Illuminate\Support\ServiceProvider;


class AdminServiceProvider extends ServiceProvider
{

    public function register()
    {
        $this->app['view']->addNamespace('Admin', __DIR__ .'/Views/'. $this->app['config']->get('theme.admin'));

        include 'filters.php';
        include 'routes.php';
    }
}
