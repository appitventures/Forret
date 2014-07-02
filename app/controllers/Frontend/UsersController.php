<?php  namespace Controllers\Frontend;

use Forret\Interfaces\UserInterface;
use View;
use Sentry;

class UsersController extends BaseController{

    public function __construct(UserInterface $user){
        $this->user = $user;
    }

    public function show($user_id){
        $view['title'] = 'Forret - Profile';
        $view['auth_navbar'] = 1;
        $view['user'] = Sentry::getUser();
        $view['sections'] = ["Frontend::components.sections.profile"];
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