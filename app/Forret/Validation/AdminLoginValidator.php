<?php  namespace Starter\Validation;

class AdminLoginValidator extends Validator{
    public static $loginRules = [
        'email'=>'required|email',
        'password'=>'required'
    ];

} 