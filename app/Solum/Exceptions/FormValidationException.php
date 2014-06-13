<?php namespace Solum\Exceptions;

use Exception;
use Illuminate\Support\MessageBag;

/**
 * Class FormValidationException
 * @package Starter\Exceptions
 */
class FormValidationException extends Exception {

    /**
     * @var string
     */
    protected $errors;

    /**
     * @param string $errors
     */
    public function __construct($message,MessageBag $errors)
    {
        $this->errors = $errors;
        parent::__construct($message);
    }

    /**
     * Fetch validation errors
     *
     * @return string
     */
    public function getErrors()
    {
        return $this->errors;
    }

}