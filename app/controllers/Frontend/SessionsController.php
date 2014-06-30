<?php  namespace Controllers\Frontend;

use Cartalyst\Sentry\Users\UserNotFoundException;
use Forret\Exceptions\ValidationException;
use \Input;
use Redirect;
use \View;
use Sentry;

class SessionsController extends BaseController {
    public function __construct(){

    }

    public function create(){
        $view['title'] = 'Forret - Login';
        $view['auth_navbar'] = false;
        $view['sections'] = ['login'];
        return View::make('Frontend::pages.login',$view);
    }

    public function store(){
        try {
            Sentry::authenticate(Input::only('email', 'password'),Input::get('remember-me',0));
            return Redirect::route('home')->with('message', 'Successfully Logged In!');
        }
        catch(UserNotFoundException $e){
            return Redirect::route('login.create')->withErrors($e->getMessage())->withInput();
        }
        catch(ValidationException $e){
            return Redirect::route('login.create')->withErrors($e->getMessage())->withInput();
        }
    }
}