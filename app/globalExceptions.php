<?php


use Dingo\Api\Http\Response;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Respect\Validation\Exceptions\ValidationException;

App::error(function(Exception $exception, $code)
{
    Log::error($exception);
});

API::error(function(ModelNotFoundException $e){
    return Response::makeFromExisting(\Illuminate\Support\Facades\Response::make('Model Not Found',404));
});



#API::error(function(ValidationException))
