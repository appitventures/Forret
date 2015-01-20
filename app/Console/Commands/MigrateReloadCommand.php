<?php namespace Forret\Console\Commands;

use DB;
use Config;
use Schema;
use Illuminate\Console\Command;

class MigrateReloadCommand extends Command
{

    /**
     * The console command name.
     *
     * @var string
     */
    protected $name = 'migrate:reload';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Drop All Tables Systematically.';

    public function handle()
    {
        $tables = DB::select('SHOW TABLES');
        $tables_in_database = "Tables_in_".Config::get('database.connections.mysql.database');

        DB::statement('SET FOREIGN_KEY_CHECKS=0;');

        foreach ($tables as $table) {
            if ($table->$tables_in_database != 'messages') {
                Schema::drop($table->$tables_in_database);
                $this->info("<info>Dropped: </info>".$table->$tables_in_database);
            } else {
                $this->info("<info>Kept: </info>".$table->$tables_in_database);
            }
        }
        exec('php artisan migrate');
        $this->info('Migrated');
        exec('php artisan db:seed');
        $this->info('Seeded');
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');
    }
}
