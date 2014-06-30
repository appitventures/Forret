<?php

// Composer: "fzaninotto/faker": "v1.3.0"
use Faker\Factory as Faker;
use Carbon\Carbon;

/**
 * @property mixed admin
 * @property mixed admin1
 * @property mixed user1
 */
class TestUsersSeeder extends Seeder {
    /** @var  \User */
    protected $user;

    /**
     *
     */
    public function run() {
        $this->user = new User();
        $this->admin = new User();
        $this->user1 = new User();
        $this->admin1 = new User();
        $faker = Faker::create();
        $userEmail = 'user@forret.io';
        $adminEmail = 'admin@forret.io';

        $this->user->fill(['email' => $userEmail,'password' => 'password','first_name' => $faker->firstName,'last_name' => $faker->lastName])->forceSave();
        $useruser = Sentry::findUserByLogin($userEmail);
        $id = $useruser->getId();
        $useruser->addGroup(Sentry::getGroupProvider()->findByName('Users'));
        User::find($id)->update(['activated' => 1,'activated_at' => Carbon::now()->toDateTimeString()]);


        $this->admin->fill(['email' => $adminEmail,'password' => 'password','first_name' => $faker->firstName,'last_name' => $faker->lastName])->forceSave();
        $adminUser = Sentry::findUserByLogin($adminEmail);
        $id = $adminUser->getId();
        $adminUser->addGroup(Sentry::getGroupProvider()->findByName('Users'));
        $adminUser->addGroup(Sentry::getGroupProvider()->findByName('Admins'));
        User::find($id)->update(['activated' => 1,'activated_at' => Carbon::now()->toDateTimeString()]);
    }
}