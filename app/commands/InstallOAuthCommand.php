<?php

    use Illuminate\Console\Command;
    use Symfony\Component\Console\Input\InputOption;
    use Symfony\Component\Console\Input\InputArgument;

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
        public function __construct()
        {
            parent::__construct();
        }

        /**
         * Execute the console command.
         *
         * @return mixed
         */
        public function fire()
        {
            exec('composer.phar require lucadegasperi/oauth2-server-laravel:1.0.x');
            $this->info('OAuth Package Installed successfully!');
        }


    }
