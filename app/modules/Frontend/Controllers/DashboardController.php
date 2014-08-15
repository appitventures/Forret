<?php  namespace Frontend\Controllers;

use Forret\Interfaces\UserInterface;
use Sentry;
use \View;

class DashboardController extends BaseController {
    /** @var \Forret\Repositories\UserRepository  */
    protected $user;
    public function __construct(UserInterface $user){
        $this->user = $user;
    }
    public function index() {
        if(Sentry::check()){
            $auth_navbar = true;
            $user = Sentry::getUser();
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