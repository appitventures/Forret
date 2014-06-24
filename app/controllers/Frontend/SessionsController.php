<?php  namespace Controllers\Frontend;

class SessionsController extends BaseController{
    public function __construct(){

    }

    public function create(){
        $view['title'] = 'Login';
        return View::make('Frontend::pages.auth.login',$view);
    }

} 