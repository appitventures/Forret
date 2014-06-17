<?php
use \ApiGuyTester;
use Faker\Factory as faker;

class LoginTestingCest {
    public function _before() {
    }

    public function _after() {
    }

    public function confirm_I_can_login_with_proper_user_credentials(ApiGuyTester $I) {
        $I->wantTo('confirm I can login with the correct user credentials');
        $I->sendPOST('/sessions', ['email' => 'user@forret.com', 'password' => 'password']);
        $I->seeResponseCodeIs(200);
    }

    public function confirm_I_can_login_with_proper_admin_credentials(ApiGuyTester $I) {
        $I->wantTo('confirm I can login with the correct admin credentials');
        $I->sendPOST('/sessions', ['email' => 'admin@forret.com', 'password' => 'password']);
        $I->seeResponseCodeIs(200);
    }

    public function confirm_I_get_a_401_and_proper_message_when_attempting_to_login_with_invalid_email(ApiGuyTester $I) {
        $I->wantTo('confirm I get a 401 and the proper validation message when using an invalid email to login');
        $I->sendPOST('/sessions', ['email' => 'user@asdf.com', 'password' => 'password']);
        $I->seeResponseCodeIs(401);
        $I->seeResponseContainsJson(['message' => 'A user could not be found with a login value of [user@asdf.com].']);
    }

    public function confirm_I_get_a_401_and_proper_message_when_attempting_to_login_with_invalid_password(ApiGuyTester $I) {
        $I->wantTo('confirm I get a 401 and the proper validation message when using an invalid password to login');
        $I->sendPOST('/sessions', ['email' => 'user@forret.com', 'password' => 'pass1234']);
        $I->seeResponseCodeIs(401);
        $I->seeResponseContainsJson(['message' => 'A user was found to match all plain text credentials however hashed credential [password] did not match.']);
    }
}