<?php namespace Api;

use Illuminate\Support\ServiceProvider;
use API;

class ApiServiceProvider extends ServiceProvider
{

    public function register()
    {
        include 'filters.php';
        include 'routes.php';
    }

    public function boot()
    {
        API::transform('User', 'Api\Transformers\UserTransformer');
    }
}
