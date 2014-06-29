<?php  namespace Controllers\Frontend;

use Forret\Interfaces\UserInterface;
use \Input;
use Sentry;
use \View;

class DashboardController extends BaseController {
    public function __construct(UserInterface $user){
        $this->user = $user;

    }
    public function index() {
        if(Sentry::check()){
            $auth_navbar = true;
            $user = $this->user->getCurrentSentryUser();
        }
        else{
            $auth_navbar = false;
            $user = [];
        }
        $view['title'] = 'Forret Starter Kit';
        $view['auth_navbar'] = $auth_navbar;
        $view['user'] = $user;
        $view['sections'] = ['intro','about','download','contact'];
        return View::make('Frontend::pages.home',$view);
    }
} 