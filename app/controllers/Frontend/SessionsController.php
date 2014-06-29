<?php  namespace Controllers\Frontend;

use \Input;
use \View;

class SessionsController extends BaseController {
    public function __construct(){

    }

    public function create(){
        return 'form for login';
    }

    public function store(){
        return 'log user in';
    }
}