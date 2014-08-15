<?php

use Symfony\Component\HttpKernel\Exception\UnauthorizedHttpException;

Route::filter('api.auth', function(){
    if (!Sentry::check()) throw new UnauthorizedHttpException('Unauthorized');#throw new AccessDeniedHttpException();
});

Route::filter('api.isAdmin',function($route,$request){
    Route::callRouteFilter('api.auth',[],$route,$request);
    if(!Sentry::getUser()->inGroup(Sentry::findGroupByName('Admins'))) throw new UnauthorizedHttpException('Unauthorized');
});

Route::filter('api.action',function($route,$request){
    $userId = (Sentry::check()) ? Sentry::getUser()->getId() : null;
    $action = 'API query';
    $messages = (Session::get('messages')) ? Session::get('messages') : NULL;
    $description = (Session::get('description')) ? Session::get('description') : NULL;
    $payload = (Session::get('payload')) ? Session::get('payload') : NULL;
    Queue::push('\Forret\Repositories\ActionRepository@apiQuery',array('action'=>$action,'uri'=>Request::path(),'method'=>Request::method(),'description'=>$description,'messages'=>$messages,'payload'=>$payload,'user_id'=>$userId,'session'=>Session::GetId()));
});