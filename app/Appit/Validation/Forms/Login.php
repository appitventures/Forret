<?php  namespace Appit\Validation\Forms;

class Login extends FormValidator{
    /**
     * @var array
     */
    protected $rules = [
        'email' => 'required|email',
        'password' => 'required'
    ];

} 