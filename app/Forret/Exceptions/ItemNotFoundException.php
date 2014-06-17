<?php namespace Forret\Exceptions;

use Illuminate\Support\MessageBag;

class ItemNotFoundException extends \Exception {

    protected $error;
    protected $customCodes;
    protected $messages;

    public function __construct($error,MessageBag $messages, $code = 400){
        $this->messages = $messages;
        $this->error = $error;
        $this->customCodes = $code;
    }

    public function getMessages(){
        return $this->messages;
    }
    public function getErrors(){
        return $this->error;
    }

    public function getCustomCodes() {
        return $this->customCodes;
    }
}