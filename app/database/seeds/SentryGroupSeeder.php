<?php

class SentryGroupSeeder extends Seeder {

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Sentry::getGroupProvider()->create([
            'name' => 'Users',
            'permissions' => ['user' => 1,'admin'=>0]
        ]);

        Sentry::getGroupProvider()->create([
            'name' => 'Admins',
            'permissions' => ['user'=>1,'admin' => 1]
        ]);
    }

}