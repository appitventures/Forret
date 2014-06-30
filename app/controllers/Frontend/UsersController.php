<?php  namespace Controllers\Frontend;

use Forret\Interfaces\UserInterface;
use View;

class UsersController extends BaseController{

    public function __construct(UserInterface $user){
        $this->user = $user;
    }

    public function index(){
        $view['title'] = 'User Profile';
        return View::make('Frontend::pages.users.profile',$view);
    }

    public function show($user_id){
        $view['title'] = 'Forret - Profile';
        $view['auth_navbar'] = 1;
        $view['user'] = $this->user->getCurrentSentryUser();
        $view['sections'] = [];
        return View::make('Frontend::pages.profile',$view);
    }

    public function create(){
        $view['title'] = 'Forret - Register';
        $view['auth_navbar'] = 0;
        $view['user'] = [];
        $view['sections'] = ['register'];
        return View::make('Frontend::pages.profile',$view);
    }

} 