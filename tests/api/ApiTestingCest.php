<?php
use \ApiGuyTester;
use Faker\Factory as faker;

class ApiTestingCest
{
    public function _before()
    {
    }

    public function _after()
    {
    }

    // tests
    public function confirm_403_when_sending_get_to_users_if_not_logged_in(ApiGuyTester $I)
    {
        $I->wantTo('confirm users are returned when');
        $I->sendGet('/users');
        $I->canSeeResponseCodeIs(403);
    }

    public function confirm_201_when_attempting_to_create_user_with_valid_data(ApiGuyTester $I)
    {
        $faker = faker::create();
        $first_name = $faker->firstName;
        $last_name = $faker->lastName;
        $email = $faker->email;
        $I->wantTo('confirm I can create a user');
        $I->sendPOST('/users',['first_name'=>$first_name,'last_name'=>$last_name,'email'=>$email,'password'=>'thisIsAPassword']);
        $I->canSeeResponseCodeIs(200);
        $I->canSeeResponseIsJson();
        $I->canSeeResponseContains($first_name);
        $I->canSeeResponseContains($last_name);
        $I->canSeeResponseContains($email);
    }
}