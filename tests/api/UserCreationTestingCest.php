<?php
use \ApiGuyTester;
use Faker\Factory as faker;

class UserCreationTestingCest {
    public function _before() {
    }

    public function _after() {
    }

    public function confirm_201_when_attempting_to_create_user_with_valid_data(ApiGuyTester $I) {
        $faker = faker::create();
        $first_name = $faker->firstName;
        $last_name = $faker->lastName;
        $email = $faker->email;
        $I->wantTo('confirm I can create a user');
        $I->sendPOST('/users', ['first_name' => $first_name, 'last_name' => $last_name, 'email' => $email, 'password' => 'thisIsAPassword']);
        $I->canSeeResponseCodeIs(200);
        $I->canSeeResponseIsJson();
        $I->canSeeResponseContains($first_name);
        $I->canSeeResponseContains($last_name);
        $I->canSeeResponseContains($email);
    }

    public function confirm_422_and_proper_message_when_attempting_create_a_user_without_first_name(ApiGuyTester $I){
        $faker = faker::create();
        $last_name = $faker->lastName;
        $email = $faker->email;
        $I->wantTo('confirm I cant create a user without a firstname');
        $I->sendPOST('/users', ['last_name' => $last_name, 'email' => $email, 'password' => 'thisIsAPassword']);
        $I->canSeeResponseCodeIs(422);
        $I->seeResponseContainsJson(['message'=>'Error creating user','errors'=>['first_name'=>['Key first_name must be present']]]);
    }

    public function confirm_422_and_proper_message_when_attempting_create_a_user_without_last_name(ApiGuyTester $I){
        $faker = faker::create();
        $first_name = $faker->firstName;
        $email = $faker->email;
        $I->wantTo('confirm I cant create a user without a lastname');
        $I->sendPOST('/users', ['first_name' => $first_name, 'email' => $email, 'password' => 'thisIsAPassword']);
        $I->canSeeResponseCodeIs(422);
        $I->seeResponseContainsJson(['message'=>'Error creating user','errors'=>['last_name'=>['Key last_name must be present']]]);
    }
    public function confirm_422_and_proper_message_when_attempting_create_a_user_without_email(ApiGuyTester $I){
        $faker = faker::create();
        $first_name = $faker->firstName;
        $last_name = $faker->lastName;
        $email = $faker->email;
        $I->wantTo('confirm I cant create a user without an email');
        $I->sendPOST('/users', ['first_name' => $first_name, 'last_name' => $last_name, 'password' => 'thisIsAPassword']);
        $I->canSeeResponseCodeIs(422);
        $I->seeResponseContainsJson(['message'=>'Error creating user','errors'=>['email'=>['Key email must be present']]]);
    }

    public function confirm_422_and_proper_message_when_attempting_create_a_user_without_password(ApiGuyTester $I){
        $faker = faker::create();
        $first_name = $faker->firstName;
        $last_name = $faker->lastName;
        $email = $faker->email;
        $I->wantTo('confirm I cant create a user without a password');
        $I->sendPOST('/users', ['first_name' => $first_name, 'last_name' => $last_name, 'email' => $email]);
        $I->canSeeResponseCodeIs(422);
        $I->seeResponseContainsJson(['message'=>'Error creating user','errors'=>['password'=>['Key password must be present']]]);
    }

}