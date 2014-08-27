<?php

    use Illuminate\Console\Command;
    use Symfony\Component\Console\Input\InputOption;
    use Symfony\Component\Console\Input\InputArgument;
    use Illuminate\Filesystem\Filesystem;

    class InstallOAuthCommand extends Command
    {


        /**
         * The console command name.
         *
         * @var string
         */
        protected $name = 'plugins:installoauth';

        /**
         * The console command description.
         *
         * @var string
         */
        protected $description = 'Install OAuth Command';

        /**
         * Create a new command instance.
         *
         * @return void
         */
        public function __construct(Filesystem $files)
        {
            parent::__construct();
            $this->files = $files;

        }

        /**
         * Execute the console command.
         *
         * @return mixed
         */
        public function fire()
        {
            $path = $this->laravel['path'] . "/config/app.php";
            $reqProviders = 'LucaDegasperi\OAuth2Server\OAuth2ServerServiceProvider';
            $reqAliases = [];
            $currentProviders = $this->laravel['config']['app.providers'];
            $currentAliases = $this->laravel['config']['app.aliases'];

            $this->info('adding dependencies');
            $this->attempt('require lucadegasperi/oauth2-server-laravel:1.0.x');
            $this->attempt('update');

            if (in_array($reqProviders, $currentProviders) == false) {


                $content = file($path);

                foreach ($content as $line) {
                    if (strpos($line, "Manifest")) {
                        $n = key($content);
                        break;
                    }
                }

                if (strpos($content[$n - 7], ",") != true) $content[$n - 7] = "\t\t" . trim($content[$n - 7]) . ",\n";
                $content[$n - 6] = "\t\t'" . $reqProviders . "',\n\n";

                $content = implode("", $content);

                $this->files->put($path, $content);
            }

            if (in_array($reqAliases, $currentAliases) == false) {

            }

            exec('php artisan config:publish lucadegasperi/oauth2-server-laravel');

            if (!Schema::hasTable('oauth_client_metadata')) {

                exec('php artisan migrate --package="lucadegasperi/oauth2-server-laravel"');
                $this->info('Migrating Tables...');

            }

            $this->info('dumping and optimizing...');
            $this->attempt('dump-autoload');
            exec('php artisan  dump-autoload');
            exec('php artisan optimize');

            $this->info('OAuth Package Installed successfully!');


        }

        public function attempt($composerCmd)
        {

            exec("which composer", $composer);
            exec("which composer.phar", $composerPhar);

            if (!empty($composer)) {
                $this->info('executing command');
                exec($composer[0] . ' ' . $composerCmd);
            } elseif (!empty($composerPhar)) {
                $this->info('executing command');
                exec($composerPhar[0] . ' ' . $composerCmd);
            } else {
                die('Unable to find Composer exectuable!');
            }
        }


    }