<?php

namespace App\Http\Controllers;

use Authorizer;
use App\Http\Requests;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function show()
    {
       return  Authorizer::getResourceOwnerId(); // the token user_id
      // return 'hi buddy its time to go.....letus move';
    }
}
