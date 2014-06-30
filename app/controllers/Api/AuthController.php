<?php namespace Controllers\Api;

use Cartalyst\Sentry\Throttling\UserBannedException;
use Cartalyst\Sentry\Throttling\UserSuspendedException;
use Cartalyst\Sentry\Users\UserNotActivatedException;
use Cartalyst\Sentry\Users\UserNotFoundException;
use Illuminate\Support\MessageBag;
use Input;
use Lang;
use Sentry;
use Redirect;
use Session;
use Validator;
use View;

class AuthController extends BaseController {
    public function __construct(Sentry $sentry,MessageBag $messageBag){
        $this->messageBag = $messageBag;

        $this->sentry = $sentry;
    }
    public function getSignin(){
        // Is the user logged in?
        if ($this->sentry->check())
        {
            return Redirect::route('account');
        }

        // Show the page
        return View::make('frontend.auth.signin');
    }
    public function store(){
        // Declare the rules for the form validation
        $rules = array(
            'email'    => 'required|email',
            'password' => 'required|between:3,32',
        );

        // Create a new validator instance from our validation rules
        $validator = Validator::make(Input::all(), $rules);

        // If validation fails, we'll exit the operation now.
        if ($validator->fails())
        {
            // Ooops.. something went wrong
            return Redirect::back()->withInput()->withErrors($validator);
        }

        try
        {
            // Try to log the user in
            Sentry::authenticate(Input::only('email', 'password'), Input::get('remember-me', 0));

            // Get the page we were before
            $redirect = Session::get('loginRedirect', 'account');

            // Unset the page we were before from the session
            Session::forget('loginRedirect');

            // Redirect to the users page
            return Sentry::getUser();
        }
        catch (UserNotFoundException $e)
        {
            throw new
            $this->messageBag->add('email', Lang::get('auth/message.account_not_found'));
        }
        catch (UserNotActivatedException $e)
        {
            $this->messageBag->add('email', Lang::get('auth/message.account_not_activated'));
        }
        catch (UserSuspendedException $e)
        {
            $this->messageBag->add('email', Lang::get('auth/message.account_suspended'));
        }
        catch (UserBannedException $e)
        {
            $this->messageBag->add('email', Lang::get('auth/message.account_banned'));
        }

        // Ooops.. something went wrong
        return $this->messageBag;
    }
    public function getSignup(){
        // Is the user logged in?
        if (Sentry::check()){
            return Redirect::route('account');
        }
        // Show the page
        return View::make('frontend.auth.signup');
    }
    public function getActivate($activationCode = null){
        // Is the user logged in?
        if (Sentry::check())
        {
            return Redirect::route('account');
        }

        try
        {
            // Get the user we are trying to activate
            $user = Sentry::getUserProvider()->findByActivationCode($activationCode);

            // Try to activate this user account
            if ($user->attemptActivation($activationCode))
            {
                // Redirect to the login page
                return Redirect::route('signin')->with('success', Lang::get('auth/message.activate.success'));
            }

            // The activation failed.
            $error = Lang::get('auth/message.activate.error');
        }
        catch (Cartalyst\Sentry\Users\UserNotFoundException $e)
        {
            $error = Lang::get('auth/message.activate.error');
        }

        // Ooops.. something went wrong
        return Redirect::route('signin')->with('error', $error);
    }
    public function getForgotPassword(){
        // Show the page
        return View::make('frontend.auth.forgot-password');
    }
    public function postForgotPassword(){
        // Declare the rules for the validator
        $rules = array(
            'email' => 'required|email',
        );

        // Create a new validator instance from our dynamic rules
        $validator = Validator::make(Input::all(), $rules);

        // If validation fails, we'll exit the operation now.
        if ($validator->fails())
        {
            // Ooops.. something went wrong
            return Redirect::route('forgot-password')->withInput()->withErrors($validator);
        }

        try
        {
            // Get the user password recovery code
            $user = Sentry::getUserProvider()->findByLogin(Input::get('email'));

            // Data to be used on the email view
            $data = array(
                'user'              => $user,
                'forgotPasswordUrl' => URL::route('forgot-password-confirm', $user->getResetPasswordCode()),
            );

            // Send the activation code through email
            Mail::send('emails.forgot-password', $data, function($m) use ($user)
            {
                $m->to($user->email, $user->first_name . ' ' . $user->last_name);
                $m->subject('Account Password Recovery');
            });
        }
        catch (Cartalyst\Sentry\Users\UserNotFoundException $e)
        {
            // Even though the email was not found, we will pretend
            // we have sent the password reset code through email,
            // this is a security measure against hackers.
        }

        //  Redirect to the forgot password
        return Redirect::route('forgot-password')->with('success', Lang::get('auth/message.forgot-password.success'));
    }
    public function getForgotPasswordConfirm($passwordResetCode = null){
        try
        {
            // Find the user using the password reset code
            $user = Sentry::getUserProvider()->findByResetPasswordCode($passwordResetCode);
        }
        catch(Cartalyst\Sentry\Users\UserNotFoundException $e)
        {
            // Redirect to the forgot password page
            return Redirect::route('forgot-password')->with('error', Lang::get('auth/message.account_not_found'));
        }

        // Show the page
        return View::make('frontend.auth.forgot-password-confirm');
    }
    public function postForgotPasswordConfirm($passwordResetCode = null){
        // Declare the rules for the form validation
        $rules = array(
            'password'         => 'required',
            'password_confirm' => 'required|same:password'
        );

        // Create a new validator instance from our dynamic rules
        $validator = Validator::make(Input::all(), $rules);

        // If validation fails, we'll exit the operation now.
        if ($validator->fails())
        {
            // Ooops.. something went wrong
            return Redirect::route('forgot-password-confirm', $passwordResetCode)->withInput()->withErrors($validator);
        }

        try
        {
            // Find the user using the password reset code
            $user = Sentry::getUserProvider()->findByResetPasswordCode($passwordResetCode);

            // Attempt to reset the user password
            if ($user->attemptResetPassword($passwordResetCode, Input::get('password')))
            {
                // Password successfully reseted
                return Redirect::route('signin')->with('success', Lang::get('auth/message.forgot-password-confirm.success'));
            }
            else
            {
                // Ooops.. something went wrong
                return Redirect::route('signin')->with('error', Lang::get('auth/message.forgot-password-confirm.error'));
            }
        }
        catch (Cartalyst\Sentry\Users\UserNotFoundException $e)
        {
            // Redirect to the forgot password page
            return Redirect::route('forgot-password')->with('error', Lang::get('auth/message.account_not_found'));
        }
    }
    public function getLogout(){
        // Log the user out
        Sentry::logout();

        // Redirect to the users page
        return Redirect::route('home')->with('success', 'You have successfully logged out!');
    }

}