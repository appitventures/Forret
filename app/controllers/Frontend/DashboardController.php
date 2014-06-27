<?php  namespace Controllers\Frontend;

use \Input;
use \View;

class DashboardController extends BaseController {
    public function __construct(){

    }
    public function index() {
        $view['title'] = 'Title';
        return View::make('Frontend::pages.home',$view);
    }
} 