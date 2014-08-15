<?php  namespace Frontend\Controllers;

use API;
use Cartalyst\Sentry\Users\UserNotFoundException;
use Forret\Exceptions\ValidationException;
use Forret\Validation\Forms\Login;
use \Input;
use Redirect;
use Symfony\Component\HttpKernel\Exception\UnauthorizedHttpException;
use \View;
use Watson\Validating\ValidationException as ValidWatson;

class SessionsController extends BaseController {
    /**
     * @var Login
     */
    private $loginForm;

    public function __construct(Login $loginForm){

        $this->loginForm = $loginForm;
    }

    public function create(){
        $view['title'] = 'Forret - Login';
        $view['auth_navbar'] = false;
        $view['sections'] = ['login'];
        return View::make('Frontend::pages.login',$view);
    }

    public function store(){
        try {
            $this->loginForm->validate(Input::all());
            $user = Api::post('api/login',Input::all());
            return Redirect::route('home')->with('message', 'Successfully Logged In!');
        }
        catch(UserNotFoundException $e){
            return Redirect::route('login.create')->withErrors($e->getMessage())->withInput();
        }
        catch(ValidationException $e){
            return Redirect::back()->withInput()->withErrors($e->getErrors());
        }
        catch(UnauthorizedHttpException $e){
            return Redirect::back()->withInput()->withErrors([$e->getMessage()]);
        }
        catch(ValidWatson $e){
            return Redirect::back()->withInput()->withErrors($e->getErrors());
        }
    }
}