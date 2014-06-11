<?php  namespace Starter\InterRepos\Repositories;


 use Symfony\Component\HttpKernel\Exception\AccessDeniedHttpException;
 use \Sentry;

 class BaseRepository {
     public function __construct(){
     }
     public function privatePage($user_id_needed){
         if(!Sentry::check()) {
             throw new AccessDeniedHttpException();
         }
         if($user_id_needed != Sentry::getUser()->getId() || !Sentry::getUser()->inGroup(Sentry::findGroupByName('Admins'))) {
             throw new AccessDeniedHttpException();
         }
     }
 }