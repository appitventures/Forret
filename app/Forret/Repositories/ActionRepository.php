<?php namespace Forret\Repositories;

use Forret\Interfaces\ActionInterface;
use Action;

class ActionRepository implements ActionInterface {
    public function __construct(Action $action){
        $this->action = $action;
    }
    public function apiQuery($job,$message){
        $this->action->create($message);
    }

    public function frontendQuery($job,$message){

    }
}