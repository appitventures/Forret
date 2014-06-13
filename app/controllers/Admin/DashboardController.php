<?php  namespace Controllers\Admin;

use \Input;
use \View;

class DashboardController extends BaseController {
    public function __construct(){
        $this->beforeFilter('admin.auth',['only'=>['index']]);
    }
    public function index() {
        $view['title'] = 'Dashboard';
        if(Input::has('pretty')){

            echo "<pre>";
            print_r($view);
            echo "</pre>";
        }
        else{
            return View::make('Admin::pages.dashboard', $view);
        }

    }
} 