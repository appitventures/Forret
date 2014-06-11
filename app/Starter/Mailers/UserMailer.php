<?php namespace Starter\Mailers;
use \User;

class UserMailer extends Mailer{
    public function welcome(User $user, array $data){
        $view = 'emails.welcome';
        $subject = 'Welcome!';
        return $this->sendTo($user,$subject,$view,$data);
    }

    public function cancel(User $user, array $data){
        $view = 'emails.cancel';
        $subject = 'Cancelation Email';
        return $this->sendTo($user,$subject,$view,$data);
    }

}