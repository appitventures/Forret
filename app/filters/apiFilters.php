<?php

use Symfony\Component\HttpKernel\Exception\AccessDeniedHttpException;

Route::filter('api.auth', function(){
    if (!Sentry::check()) throw new AccessDeniedHttpException();
});

Route::filter('api.inGroup', function($route, $request, $value){
    if (!Sentry::check()) throw new AccessDeniedHttpException();
    $userId = Route::input('users');
    try{
        $user = Sentry::getUser();
        $group = Sentry::findGroupByName($value);
        if ($userId != Session::get('userId') && (! $user->inGroup($group))  ){
            throw new AccessDeniedHttpException();
        }
    }
    catch (Cartalyst\Sentry\Users\UserNotFoundException $e){
        throw new AccessDeniedHttpException();
    }
    catch (Cartalyst\Sentry\Groups\GroupNotFoundException $e){
        throw new AccessDeniedHttpException();
    }
});

Route::filter('api.isAdmin',function($route,$request){
    if(!Sentry::getUser()->inGroup(Sentry::findGroupByName('Admins'))) throw new AccessDeniedHttpException();
});

Route::filter('api.action',function($route,$request){
    $userId = (Sentry::check()) ? Sentry::getUser()->getId() : null;
    $action = 'API query';
    $messages = (Session::get('messages')) ? Session::get('messages') : NULL;
    $description = (Session::get('description')) ? Session::get('description') : NULL;
    $payload = (Session::get('payload')) ? Session::get('payload') : NULL;
    Queue::push('\Solum\Repositories\ActionRepository@apiQuery',array('action'=>$action,'uri'=>Request::path(),'method'=>Request::method(),'description'=>$description,'messages'=>$messages,'payload'=>$payload,'user_id'=>$userId,'session'=>Session::GetId()));
});