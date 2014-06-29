<?php  namespace Controllers\Frontend;

use \Input;
use \View;

class SessionsController extends BaseController {
    public function __construct(){

    }

    public function create(){
        $view['title'] = 'Forret - Login';
        $view['auth_navbar'] = false;
        $view['sections'] = ['login','contact'];
        return View::make('Frontend::pages.home',$view);
    }

    public function store(){
        return 'log user in';
    }
}