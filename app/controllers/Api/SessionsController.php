<?php namespace Controllers\Api;

use Cartalyst\Sentry\Users\UserNotFoundException;
use Sentry;
use Dingo\Api\Exception\ResourceException;
use Input;
use Solum\Exceptions\ValidationException;
use Solum\Validation\UserValidator;
use Symfony\Component\HttpKernel\Exception\UnauthorizedHttpException;

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
        try {
            $this->isValid->forLogin(Input::all());
            Sentry::authenticate(Input::only('email', 'password'), Input::get('remember-me', 0));
            return Sentry::getUser();
        }
        catch(UserNotFoundException $e){
            throw new UnauthorizedHttpException('Unauthorized',$e->getMessage());
        }
        catch(ValidationException $e){
            throw new UnauthorizedHttpException('Unauthorized',$e->getErrors());
        }
    }
}