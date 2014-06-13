<?php namespace Controllers\Api;

use Sentry;
use Dingo\Api\Exception\ResourceException;
use Input;
use Redirect;
use Solum\Validation\UserValidator;

class SessionsController extends BaseController {
    public function __construct(UserValidator $validator){
        $this->isValid = $validator;

        $this->beforeFilter('api.auth',['only'=>['index']]);
    }
    public function index(){
        if(Sentry::getUser()!=null)
            return Sentry::getUser();
        else{
            throw new ResourceException;
        }
    }


    public function destroy() {
        return Sentry::logout();
    }

    public function store() {
        $this->isValid->forLogin(Input::all());
        Sentry::authenticate(Input::only('email', 'password'), Input::get('remember-me', 0));

        return Sentry::getUser();
    }
}