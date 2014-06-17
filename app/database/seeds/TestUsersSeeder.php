<?php

// Composer: "fzaninotto/faker": "v1.3.0"
use Faker\Factory as Faker;
use Carbon\Carbon;

class TestUsersSeeder extends Seeder {
    public function run() {
        $faker = Faker::create();
        $userEmail = 'user@forret.com';
        $adminEmail = 'admin@forret.com';

        $useruser = Sentry::register(['email' => $userEmail,'password' => 'password','first_name' => $faker->firstName,'last_name' => $faker->lastName]);
        $useruser->addGroup(Sentry::getGroupProvider()->findByName('Users'));
        $user = User::find($useruser->getId());
        $user->activated = 1;
        $user->activated_at = Carbon::now()->toDateTimeString();
        $user->save();
        $adminUser = Sentry::register(['email' => $adminEmail,'password' => 'password','first_name' => $faker->firstName,'last_name' => $faker->lastName]);
        $adminUser->addGroup(Sentry::getGroupProvider()->findByName('Users'));
        $adminUser->addGroup(Sentry::getGroupProvider()->findByName('Admins'));
        $admin = User::find($adminUser->getId());
        $admin->activated = 1;
        $admin->activated_at = Carbon::now()->toDateTimeString();
        $admin->save();
    }
}