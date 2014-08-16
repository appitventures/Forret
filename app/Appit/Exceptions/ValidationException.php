<?php namespace Appit\Exceptions;

use Dingo\Api\Exception\ResourceException;
use Illuminate\Support\MessageBag;

class ValidationException extends ResourceException {
    /**
     * @var MessageBag
     */
    protected $errors;

    /**
     * @param string     $message
     * @param MessageBag $errors
     */
    function __construct($message, MessageBag $errors)
    {
        $this->errors = $errors;

        parent::__construct($message);
    }

    /**
     * Get form validation errors
     *
     * @return MessageBag
     */
    public function getErrors()
    {
        return $this->errors;
    }

}