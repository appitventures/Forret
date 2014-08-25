<?php

use Symfony\Component\HttpKernel\Exception\UnauthorizedHttpException;

Route::filter('hasGroup', function ($route, $request, $value)
{
    if(!API::user()->groups->contains(Sentry::findGroupByName($value)))
        throw new UnauthorizedHttpException('Most belong to '. $value);
});

Route::filter('api.action', function ($route, $request)
{
    $userId = (Sentry::check()) ? Sentry::getUser()->getId() : null;
    $action = 'API query';
    $messages = (Session::get('messages')) ? Session::get('messages') : NULL;
    $description = (Session::get('description')) ? Session::get('description') : NULL;
    $payload = (Session::get('payload')) ? Session::get('payload') : NULL;
    Queue::push(
        '\Appit\Repositories\ActionRepository@apiQuery',
        array(
            'action'=>$action,
            'uri'=>Request::path(),
            'method'=>Request::method(),
            'description'=>$description,
            'messages'=>$messages,
            'payload'=>$payload,
            'user_id'=>$userId,
            'session'=>Session::GetId()
        )
    );
});
