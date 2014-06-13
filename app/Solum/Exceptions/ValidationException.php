<?php namespace Solum\Exceptions;

use Dingo\Api\Exception\ResourceException;

class ValidationException extends ResourceException {
    public function __construct($message, $context){
        // strip out empty context keys
        $context = array_filter($context, function($value){
            return strlen(trim($value)) !== 0;
        });
        parent::__construct($message, $context);
    }

}