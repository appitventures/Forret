<?php  namespace Controllers\Frontend;

use \Input;
use Sentry;
use \View;

class DashboardController extends BaseController {
    public function __construct(){

    }
    public function index() {
        $view['title'] = 'Forret Starter Kit';
        $view['auth_navbar'] = (Sentry::check()) ? 1 : 0;
        $view['sections'] = ['about','intro','download','contact'];
        return View::make('Frontend::pages.home',$view);
    }
} 