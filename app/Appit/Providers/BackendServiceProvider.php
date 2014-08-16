<?php  namespace Appit\Providers;

use Illuminate\Support\ServiceProvider;

class BackendServiceProvider extends ServiceProvider {

    /**
     * Register the binding
     */
    public function register() {
        $this->app->bind('Appit\Interfaces\UserInterface', 'Appit\Repositories\UserRepository');
    }
} 