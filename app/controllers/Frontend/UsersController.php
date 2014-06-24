<?php  namespace Controllers\Frontend;

use View;

class UsersController extends BaseController{

    public function __construct(){

    }

    public function index(){
        $view['title'] = 'User Profile';
        return View::make('Frontend::pages.users.profile',$view);
    }

} 