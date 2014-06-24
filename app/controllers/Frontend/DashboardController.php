<?php  namespace Controllers\Frontend;

use Input;
use View;

class DashboardController extends BaseController {
    public function __construct(){

    }

    public function index(){
        $view['title'] = 'Forret Homepage';
        if(Input::has('pretty')){

            echo "<pre>";
            print_r($view);
            echo "</pre>";
        }
        else{
            return View::make('Frontend::pages.homepage', $view);
        }
    }
} 