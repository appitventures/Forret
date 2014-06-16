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
            ->key('phone_number',V::string(),false)
            ->key('address1',V::string()->length(0,150),false)
            ->key('city',V::string()->length(0,150),false)
            ->key('state',V::string()->length(2),false)
            ->key('zip',V::string()->length(5,10),false)
            ->key('password', V::string()->notEmpty()->length(0, 200));
        $errorMessage = 'Error creating user';
        $errorFields = ['email','first_name','last_name','password','profile','phone_number','address1','city','state','zip'];
        $this->validate($validator,$data,$errorMessage,$errorFields);
    }

    public function forUpdate($data){
        $validator = V::key('first_name', V::string()->length(1, 50),false)
            ->key('last_name', V::string()->length(1, 50),false)
            ->key('email', V::email(),false)
            ->key('profile',V::readable(),false)
            ->key('phone_number',V::string(),false)
            ->key('address1',V::string()->length(0,150),false)
            ->key('city',V::string()->length(0,150),false)
            ->key('state',V::string()->length(2,2),false)
            ->key('zip',V::string()->length(5,10),false)
            ->key('password', V::string()->length(0, 200),false);
        $errorMessage = 'Error updating user';
        $errorFields = ['email','first_name','last_name','password','profile','phone_number','address1','city','state','zip'];
        $this->validate($validator,$data,$errorMessage,$errorFields);
    }

    public function forSearch($data){
        $validator = V::key('first_name', V::string()->alpha(),false)
            ->key('last_name',V::string()->alpha(),false)
            ->key('email',V::string(),false)
            ->key('phone_number',V::string(),false)
            ->key('address1',V::string(),false)
            ->key('city',V::string()->alpha(),false)
            ->key('state',V::string()->alpha()->length(1,2),false)
            ->key('zip',V::numeric(),false);
        $errorMessage = 'Error executing search';
        $errorFields = ['first_name','last_name','email','phone_number','address1','city','state','zip',];
        $this->validate($validator,$data,$errorMessage,$errorFields);
    }
}