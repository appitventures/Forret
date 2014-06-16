<?php  namespace Solum\Validation;

use Respect\Validation\Validator as V;

class UserValidator extends Validator
{
    public function forLogin($data){
        $validator = V::key('email',V::email()->notEmpty())
                      ->key('password',V::notEmpty());
        $errorMessage = 'Error logging in';
        $errorFields = ['email','password'];
        $this->validate($validator,$data,$errorMessage,$errorFields);
    }

    public function forCreate($data){
        $validator = V::key('first_name', V::string()->notEmpty()->length(1, 50))
            ->key('last_name', V::string()->notEmpty()->length(1, 50))
            ->key('email', V::email()->notEmpty())
            ->key('profile',V::readable(),false)
            ->key('phone_number',V::phone(),false)
            ->key('address1',V::string()->length(0,150),false)
            ->key('city',V::string()->length(0,150),false)
            ->key('state',V::string()->length(2),false)
            ->key('zip',V::string()->length(5,9),false)
            ->key('password', V::string()->notEmpty()->length(0, 200));
        $errorMessage = 'Error creating user';
        $errorFields = ['email','first_name','last_name','password'];
        $this->validate($validator,$data,$errorMessage,$errorFields);
    }

    public function forUpdate($data){
        $validator = V::key('first_name', V::string()->notEmpty()->length(1, 50), false)
            ->key('last_name', V::string()->notEmpty()->length(1, 50), false)
            ->key('email', V::email()->notEmpty(), false)
            ->key('password', V::string()->notEmpty()->length(0, 200), false);
        $errorMessage = 'Error updating user';
        $errorFields = ['email'=> '{{name}} must be a valid email','first_name'=>'{{name}} must be first_name','last_name','password'];
        $this->validate($validator,$data,$errorMessage,$errorFields);
    }
}