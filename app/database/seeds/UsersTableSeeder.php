<?php

// Composer: "fzaninotto/faker": "v1.3.0"
use Faker\Factory as Faker;

/**
 * @property User user
 */
class UsersTableSeeder extends Seeder {

    public function run(){
        $faker = Faker::create();

        foreach(range(1, 10) as $index){
            $user = new User();
            $email = $faker->email;
            $elUser = $user->fill([
                'email' => $email,
                'first_name' => $faker->firstName,
                'last_name' => $faker->lastName,
                'password' => 'password',
                'phone_number' => $faker->phoneNumber,
                'address1' => $faker->streetAddress,
                'city' => $faker->city,
                'state' => 'CO',
                'zip' => '12345'
            ])->save();
            $useruser = Sentry::findUserByLogin($email);
            $userGroup = Sentry::getGroupProvider()->findByName('Users');
            $useruser->addGroup($userGroup);
        }
    }
}