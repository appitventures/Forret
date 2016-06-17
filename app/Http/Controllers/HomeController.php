<?php

/*
 * Taken from
 * https://github.com/laravel/framework/blob/5.2/src/Illuminate/Auth/Console/stubs/make/controllers/HomeController.stub
 */

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;

#Faker
use Faker\Factory as Fake;

#BugSnag
use Bugsnag;

#Respect/Validaion
use Respect\Validation\Validator as v;

/**
 * Class HomeController
 * @package App\Http\Controllers
 */
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return Response
     */
    public function index()
    {
        /*
        #BugSnag
        Bugsnag::setErrorReportingLevel(E_ALL & ~E_NOTICE); //it will error reportes through mail.
        */
        
        /*
        #Respect/validation
        $number = 123;
        echo v::numeric()->validate($number); //true
        */
        
        /*
        #Faker
        $faker = Fake::create();
        echo $faker->name;
        echo $faker->address;
        echo $faker->text;
        */
        
        #AdminLte
        return view('home');
    }
}