<?php  namespace Forret\Interfaces;

interface ActionInterface {
    public function apiQuery($job,$message);
    public function frontendQuery($job,$message);
}