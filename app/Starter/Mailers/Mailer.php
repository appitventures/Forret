<?php namespace Starter\Mailers;

use \Mail;

abstract class Mailer{
    protected $mail;
    public function __construct(Mail $mail){
        $this->mail = $mail;
    }
    public function sendTo($user, $subject, $view, $data = []){
        Mail::send($view,$data,function($message) use ($user,$subject){
            $message->to($user->email)
                ->subject($subject);
        });
    }
}