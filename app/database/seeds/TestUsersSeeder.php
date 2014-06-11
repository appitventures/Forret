<?php

// Composer: "fzaninotto/faker": "v1.3.0"
use Faker\Factory as Faker;

class TestUsersSeeder extends Seeder {
    public function run() {
        $faker = Faker::create();
        $userEmail = 'user@starter.com';
        $adminEmail = 'admin@starter.com';

        $useruser = Sentry::getUserProvider()->create(['activated' => 1,'email' => $userEmail, 'first_name' => $faker->firstName, 'last_name' => $faker->lastName, 'phone_number' => $faker->phoneNumber, 'address1' => $faker->streetAddress, 'city' => $faker->city, 'state' => 'CO', 'zip' => $faker->postcode, 'password' => 'password']);

        $adminUser = Sentry::getUserProvider()->create(['activated' => 1,'email' => $adminEmail, 'first_name' => $faker->firstName, 'last_name' => $faker->lastName, 'phone_number' => $faker->phoneNumber, 'address1' => $faker->streetAddress, 'city' => $faker->city, 'state' => 'CO', 'zip' => $faker->postcode, 'password' => 'password']);

        $userGroup = Sentry::getGroupProvider()->findByName('Users');
        $useruser->addGroup($userGroup);
        $adminGroup = Sentry::getGroupProvider()->findByName('Admins');
        $adminUser->addGroup($userGroup);
        $adminUser->addGroup($adminGroup);
    }
}