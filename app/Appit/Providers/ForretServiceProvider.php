<?php namespace Appit\Providers;

use Illuminate\Support\ServiceProvider;

class ForretServiceProvider extends ServiceProvider {

    /**
     * Register the binding
     */
    public function register() {
        $this->app->bind('Appit\Interfaces\UserInterface', 'Appit\Repositories\UserRepository');

        // modules
        include app_path() .'/modules/providers.php';

        // plugins
        include app_path() .'/modules/Plugins/providers.php';
    }
}
