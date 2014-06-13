<?php  namespace Solum\Providers;

use Illuminate\Support\ServiceProvider;

class BackendServiceProvider extends ServiceProvider {

    /**
     * Register the binding
     */
    public function register() {
        $this->app->bind('Solum\Interfaces\UserInterface', 'Solum\Repositories\UserRepository');
    }
} 