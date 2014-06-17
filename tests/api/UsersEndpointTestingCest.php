<?php
use \ApiGuyTester;
use Faker\Factory as faker;
class UsersEndpointTestingCest
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
        $I->canSeeResponseCodeIs(401);
    }

    public function confirm_200_when_viewing_own_profile_if_logged_in(ApiGuyTester $I){
        $I->wantTo('confirm I can view a users profile after logging in');
        $I->sendPOST('/sessions', ['email' => 'user@forret.com', 'password' => 'password']);
        $I->sendGET('/users/1');
        $I->canSeeResponseCodeIs(200);
    }

    public function confirm_403_when_viewing_other_users_profile_if_logged_in(ApiGuyTester $I){
        $I->wantTo('confirm I cant view another users profile after logging in');
        $I->sendPOST('/sessions', ['email' => 'user@forret.com', 'password' => 'password']);
        $I->sendGET('/users/2');
        $I->canSeeResponseCodeIs(403);
    }

    public function confirm_403_when_trying_to_delete_a_user_if_not_logged_in(ApiGuyTester $I){
        $I->wantTo('confirm I cant delete a user if I have not logged in');
        $I->sendDELETE('/users/8');
        $I->canSeeResponseCodeIs(401);
    }

    public function confirm_403_when_trying_to_delete_a_user_if_logged_in_as_user(ApiGuyTester $I){
        $I->wantTo('confirm I cant delete a user if I have logged in as a user');
        $I->sendPOST('/sessions', ['email' => 'user@forret.com', 'password' => 'password']);
        $I->sendDELETE('/users/8');
        $I->canSeeResponseCodeIs(401);
    }

    public function confirm_200_when_deleting_a_user_if_logged_as_admin(ApiGuyTester $I){
        $I->wantTo('confirm I can delete a user if I have logged in as admin');
        $I->sendPOST('/sessions', ['email' => 'admin@forret.com', 'password' => 'password']);
        $I->sendDELETE('/users/8');
        $I->canSeeResponseCodeIs(200);
    }

    public function confirm_200_when_attempting_to_undestroy_a_destroyed_user(ApiGuyTester $I){
        $I->wantTo('confirm I can undestroy a destroyed user');
        $I->sendPOST('/sessions', ['email' => 'admin@forret.com', 'password' => 'password']);
        $I->sendDELETE('/users/8');
        $I->sendGET('/users/8/undestroy');
        $I->canSeeResponseCodeIs(200);
        $I->canSeeResponseIsJson();
    }

    public function confirm_200_when_attempting_to_update_user_profile_when_logged_in_as_that_user(ApiGuyTester $I){
        $f = faker::create();
        $firstname = $f->firstName;
        $city = $f->city;
        $I->wantTo('confirm I can update my profile');
        $I->sendPOST('/sessions',['email'=>'user@forret.com','password'=>'password']);
        $I->sendPUT('/users/1',['first_name'=>$firstname,'city'=>$city]);
        $I->canSeeResponseCodeIs(200);
        $I->seeResponseContains($firstname);
        $I->seeResponseContains($city);
    }

    public function confirm_403_when_attempting_to_update_user_profile_when_logged_in_as_different_user(ApiGuyTester $I){
        $f = faker::create();
        $firstname = $f->firstName;
        $city = $f->city;
        $I->wantTo('confirm I can update my profile');
        $I->sendPOST('/sessions',['email'=>'user@forret.com','password'=>'password']);
        $I->sendPUT('/users/2',['first_name'=>$firstname,'city'=>$city]);
        $I->canSeeResponseCodeIs(403);
    }
}