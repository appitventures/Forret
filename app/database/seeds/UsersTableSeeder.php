<?php

// Composer: "fzaninotto/faker": "v1.3.0"
use Faker\Factory as Faker;

class UsersTableSeeder extends Seeder {
    public function run(){
        $faker = Faker::create();

        foreach(range(1, 100) as $index){
            $useruser = Sentry::getUserProvider()->create([
                'email' => $faker->email,
                'first_name' => $faker->firstName,
                'last_name' => $faker->lastName,
                'password' => 'password',
                'phone_number' => $faker->phoneNumber,
                'address1' => $faker->streetAddress,
                'city' => $faker->city,
                'state' => 'CO',
                'zip' => $faker->postcode
            ]);
            $userGroup = Sentry::getGroupProvider()->findByName('Users');
            $useruser->addGroup($userGroup);
        }
    }
}