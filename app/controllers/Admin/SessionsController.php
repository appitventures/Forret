<?php  namespace Controllers\Admin;
use Cartalyst\Sentry\Users\UserNotFoundException;
use Dingo\Api\Auth\Shield;
use Dingo\Api\Dispatcher;
use Solum\Exceptions\ValidationException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use View;
use Input;
use Redirect;

class SessionsController extends BaseController {
    protected $api;
    protected $auth;

    public function __construct(Dispatcher $api, Shield $auth){
        $this->api  = $api;
        $this->auth = $auth;
    }

    public function create(){
        $view['title'] = 'Admin Login';
        return View::make('admin.pages.auth.login',$view);
    }

    public function store(){
        try{
            $this->api->post('api/sessions',Input::all());
            return Redirect::to('admin/');
        }
        catch(ValidationException $e){
            return Redirect::back()->withErrors($e->getErrors())->withInput();
        }
        catch(UserNotFoundException $e){
            return Redirect::back()->withErrors($e->getMessage())->withInput();
        }
    }

    public function destroy(){
        try{
            $this->api->get('api/logout');
            return Redirect::to('/admin/login')->with('flash_message','Successfully logged out');
        }
        catch(NotFoundHttpException $e){
            return Redirect::to('/admin/login');
        }
    }
}