<?php  namespace Starter\Providers;

use Illuminate\Support\ServiceProvider;

class BackendServiceProvider extends ServiceProvider {

    /**
     * Register the binding
     */
    public function register() {
        $this->app->bind('Starter\InterRepos\Interfaces\UserInterface', 'Starter\InterRepos\Repositories\UserRepository');
    }
} 